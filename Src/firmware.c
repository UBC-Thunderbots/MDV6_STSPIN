#include "firmware.h"

#include <stdint.h>

#include "../common/types.h"
#include "stm32f0xx_hal.h"
#include "stm32f0xx_hal_spi.h"

enum OPCODES mc_SPI_beginFrame(SPI_HandleTypeDef *hspi) {
    uint8_t ackStatus = NACK;

    uint8_t sof;
    while (ackStatus == NACK) {
        HAL_SPI_TransmitReceive(hspi, &ackStatus, &sof, 1, SPI_TIMEOUT);

        if (sof == FRAME_SOF) {
            ackStatus = ACK;
        }
    }

    uint8_t rawOpcodes;
    enum OPCODES opcode;
    do {
        HAL_SPI_TransmitReceive(hspi, &ackStatus, &rawOpcodes, 1, SPI_TIMEOUT);

        if (isEnum(rawOpcodes) == 1) {
            ackStatus = ACK;
            opcode    = (enum OPCODES)rawOpcodes;
        } else {
            ackStatus = NACK;
        }
    } while (ackStatus == NACK);

    return opcode;
}

int isEnum(uint8_t x) {
    for (int i = 0; i < sizeof(OpcodesList) / sizeof(*OpcodesList); i++) {
        if (OpcodesList[i] == x) {
            return 1;
        }
    }

    return 0;
}
