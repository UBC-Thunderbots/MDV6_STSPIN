#include "lib.hpp"

#include <stdint.h>
#include <unordered_map>

STSpinCommunicator::STSpinCommunicator(uint8_t (*STSpinReadWriteSPI)(uint8_t data,
                                                                     bool lastTransfer))
{
    this->STSpinReadWriteSPI_ = STSpinReadWriteSPI;
}

void STSpinCommunicator::setSpeed(int16_t speedRPM)
{
    setSpeed(speedRPM, 0);
}

void STSpinCommunicator::setSpeed(int16_t speedRPM, uint16_t rampDurationMs)
{
    SPICom(MOV_AX, false);
    SPICom(0xFF & (speedRPM >> 8), false);
    SPICom(0xFF & (speedRPM), false);

    SPICom(MOV_BX, false);
    SPICom(0xFF & (rampDurationMs >> 8), false);
    SPICom(0xFF & (rampDurationMs), false);

    SPICom(SET_SPEEDRAMP, true);
}

int16_t STSpinCommunicator::getSpeed()
{
    int16_t output = 0;
    SPICom(GET_SPEED, false);
    output = SPICom(0x0, false) << 8;
    output += SPICom(0x0, true);

    return output;
}

uint16_t STSpinCommunicator::getEncoderAngle()
{
    // not implemented
    throw -1;
}

void STSpinCommunicator::startMotor()
{
    SPICom(START_MOTOR, true);
}

void STSpinCommunicator::stopMotor()
{
    SPICom(STOP_MOTOR, true);
}

void STSpinCommunicator::clearFaults()
{
    SPICom(ACK_FAULTS, true);
}

STSpinCommunicator::FAULT_CODES STSpinCommunicator::getFault()
{
    uint16_t fault_code = 0;
    SPICom(GET_FAULT, false);

    fault_code = SPICom(0x0, false) << 8;
    fault_code = fault_code | SPICom(0x0, true);

    return static_cast<FAULT_CODES>(fault_code);
}

void STSpinCommunicator::setCurrent(int16_t current)
{
    // not implemented
    throw -1;
}

uint8_t STSpinCommunicator::SPICom(uint8_t data, bool lastTransfer)
{
    std::unordered_map<uint8_t, uint8_t> output;
    uint8_t recv;
    for (int i = 0; i < 8; i++)
    {
        recv = STSpinReadWriteSPI_(data, lastTransfer);
        if (output.find(recv) == output.end())
        {
            output[recv] = 0;
        }
        output[recv]++;
    }

    // Error correction - We take the most frequent of 8, meaning there is 8x redundancy
    std::pair<uint8_t, uint8_t> most_frequent = {0, 0};
    for (auto value : output)
    {
        if (value.second > most_frequent.second) {
            most_frequent = value;
        }
    }

    return most_frequent.first;
}
