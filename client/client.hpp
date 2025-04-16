#pragma once

#include <stdint.h>
#include "../common/types.h"

/**
 * The STSpinCommunicator implements the communication protocol used to communicate with
 * the motor driver board. The definition for the protcol can be found in the MDFW 6.0 SPI
 * Specification.md file.
 */
class STSpinCommunicator
{
   public:
    STSpinCommunicator() = delete;
    STSpinCommunicator(uint8_t (*STSpinReadWriteSPI)(uint8_t data, bool lastTransfer));

    void setSpeed(int16_t speedRPM);
    void setSpeed(int16_t speedRPM, uint16_t rampDurationMs);
    int16_t getSpeed();

    uint16_t getEncoderAngle();

    void startMotor();
    void stopMotor();

    void clearFaults();
    FAULT_CODES getFault();

    void setCurrent(int16_t current);

   private:
    uint8_t (*STSpinReadWriteSPI_)(uint8_t data, bool lastTransfer);
    uint8_t SPICom(uint8_t data, bool lastTransfer);
};
