#include "firmware.h"

#include <stdint.h>

#include "../common/types.h"
#include "stm32f0xx_hal.h"

enum OPCODES mc_SPI_poll(SPI_HandleTypeDef *hspi) {
    uint8_t sof = __mc_SPI_readByte(hspi);
    if (sof == SPI_ERROR) {
        return SPI_ERROR;
    }
}

uint8_t __mc_SPI_readByte(SPI_HandleTypeDef *hspi) {
    uint8_t rxByte;
    HAL_StatusTypeDef status = HAL_SPI_Receive(hspi, &rxByte, 1, SPI_TIMEOUT);

    if (status != HAL_OK) {
        return SPI_ERROR;
    }

    return rxByte;
}

uint8_t SPITransmit(uint8_t tx) {}
