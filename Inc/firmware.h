#ifndef __FIRMWARE_H
#define __FIRMWARE_H
#include <stdint.h>
#include "stm32f0xx_hal.h"
#include "../common/types.h"

#define SPI_TIMEOUT HAL_MAX_DELAY

enum OPCODES mc_SPI_beginFrame(SPI_HandleTypeDef *hspi);
int isEnum(uint8_t);
int CRC8(enum OPCODES opcode, uint16_t data, uint8_t crc);

#endif
