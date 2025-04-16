#ifndef __FIRMWARE_H
#define __FIRMWARE_H
#include <stdint.h>
#include "stm32f0xx_hal.h"
#include "../common/types.h"

#define SPI_TIMEOUT HAL_MAX_DELAY

enum OPCODES mc_SPI_beginFrame(SPI_HandleTypeDef *hspi);
/**
 * Checks if a byte value is a valid member of the @ref OPCODES enum.
 * 
 * @param x The byte value to check
 * @return 1 if the value is a valid opcode, 0 otherwise
 * @see OPCODES
 */
int isOpcode(uint8_t x);

/**
 * Verifies the CRC based on the AUTOSAR standard.
 */
int CRC8(enum OPCODES opcode, uint16_t data, uint8_t crc);

#endif
