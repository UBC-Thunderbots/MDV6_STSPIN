#include "firmware.h"
#include "../common/types.h"
#include "stm32f0xx_hal.h"
#include "stm32f0xx_hal_spi.h"
#include <stdint.h>

struct RawMessage {
    enum OPCODES data[8];
    uint8_t counter;
};

enum OPCODES mc_SPI_poll(SPI_HandleTypeDef *hspi) {
}

enum OPCODES __mc_SPI_readMessage(SPI_HandleTypeDef *hspi) {

}

uint8_t SPITransmit(uint8_t tx) {
}
