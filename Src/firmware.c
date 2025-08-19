#include "firmware.h"

#include <stdint.h>

#include "stm32f0xx_hal.h"
#include "stm32f0xx_hal_spi.h"

#define DEF_VALUE(a, b) a,
const uint8_t OpcodesList[] = { OPCODE_VALUES };
#undef DEF_VALUE

void MC_SPI_ReceiveMessage(SPI_HandleTypeDef *hspi, uint8_t message[]) {
    uint8_t checksum = 255;

    do {
        HAL_SPI_Receive(hspi, message, 1, SPI_TIMEOUT);
        checksum = crc_gen_checksum(message[1], (message[2] << 8) + message[3]);

        // the compiler has to optimize this out... right?
        if (checksum != message[4] || message[0] != FRAME_SOF ||
            message[5] != FRAME_EOF || !isOpcode(message[1])) {
            HAL_SPI_Transmit(hspi, CRC_FAIL, 6, SPI_TIMEOUT);
        }
    } while (checksum != message[4] || message[0] != FRAME_SOF ||
             message[5] != FRAME_EOF || !isOpcode(message[1]));
}

int isOpcode(uint8_t x) {
    for (int i = 0; i < sizeof(OpcodesList) / sizeof(*OpcodesList); i++) {
        if (OpcodesList[i] == x) {
            return 1;
        }
    }

    return 0;
}
