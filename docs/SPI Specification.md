# MDFW V6.x SPI Specification (Last Updated 4/15/2025)
# Hardware Specifications
- **Communication mode:** *Full Duplex*
- **Frame format:** *Motorola*
- **Data Size:** *8 Bits*
- **Bit Order:** *Big Endian (MSB First)*
- **Clock Rate:** Untested
- **SPI Frequency:** 8MHz

- **Clock**:
    - *CPOL Low*
    - *CPHA 1 Edge (First Edge)*
    - *Up to 32MHz Signals*
    - This configuration is also known as SPI Mode 0.

# Frame Format
Borrowed from CAN. Clocks are 1 byte wide.

## Master Frame
| SOF             | Opcode           | Data      | CRC    | EOF             |
| --------------- | ---------------- | --------- | ------ | --------------- |
| 1 Byte (`0x73`) | 1 Byte Undecided | 0-2 Bytes | 1 byte | 1 Byte (`0x45`) |

## Slave Frame
| SOF             | Opcode           | Data      | CRC    | EOF             |
| --------------- | ---------------- | --------- | ------ | --------------- |
| 1 Byte (`0x73`) | ACK/NACK         | 0-2 Bytes | 1 byte | 1 Byte (`0x45`) |


# Summary of Opcodes

| Name                                            | Binary       | Hex    | Decimal |
| ----------------------------------------------- | ------------ | ------ | ------- |
| Noop                                            | `0b00000000` | `0x00` | `0`     |
| MOV ax                                          | `0b10000010` | `0x82` | `130`   |
| GET ax                                          | `0b10000011` | `0x83` | `131`   |
| MOV bx                                          | `0b10000100` | `0x84` | `132`   |
| GET bx                                          | `0b10000101` | `0x85` | `133`   |
| Set Motor Speed Ramp (ax = RPM, bx = ramp time) | `0b00000010` | `0x02` | `2`     |
| Get Motor Speed                                 | `0b00000011` | `0x03` | `3`     |
| ~~Set Encoder Angle~~ (**Not Implemented**)     | `0b00000100` | `0x04` | `4`     |
| Get Encoder Angle                               | `0b00000101` | `0x05` | `5`     |
| Start Motor                                     | `0b00001000` | `0x08` | `8`     |
| Stop Motor                                      | `0b11111111` | `0xFF` | `255`   |
| Clear Faults                                    | `0b00010000` | `0x10` | `16`    |
| Get Faults                                      | `0b00010001` | `0x11` | `17`    |
| Set Current To Motor                            | `0b00100000` | `0x20` | `32`    |
| Get Current To Motor                            | `0b00100001` | `0x21` | `33`    |
| ACK                                             | `0b11000000` | `0xC0` | `192`    |
| NACK                                            | `0b11000001` | `0xC1` | `193`   |
| SPI Error                                       | `0b11100000` | `0xE0` | `224`   |
# Data Integrity Methods
## CRC
CRC-8 should be implemented on opcode and data.
# Opcodes
## MOV
MOV operations contain two bytes of data to be assigned into the register.
## GET
GET operations require two empty clocks to receive data.
## Set Motor Speed Ramp
See: [MC_ProgramSpeedRampMotor1() - MCSDK Documentation](https://docs.x4132.dev/mcsdk/group___m_c_i_a_p_i.html#gabb40bdb1abfc0d65aa272a44d09363c1)
Calls a motor speed ramp. The target motor speed will be set on the value of `ax`  and the ramp time will be set on the value of `bx` in milliseconds.
The ramp will be executed immediately if the motor is running, or will be executed when the motor is next started.
## Get Motor Speed
Returns the motor speed to the nearest RPM.
## Get Encoder Angle
Gets the current mechanical encoder angle.
## Start Motor
[MC_StartMotor1()](https://docs.x4132.dev/mcsdk/group___m_c_i_a_p_i.html#ga42e5fb747722e38d753b3c5aa8cfa478)
## Stop Motor
[MC_StopMotor1()](https://docs.x4132.dev/mcsdk/group___m_c_i_a_p_i.html#gad2e6cff9f74f1c8c5dbb315050ff7f8e)
## Clear Faults
[MC_AcknowledgeFaultMotor1()](https://docs.x4132.dev/mcsdk/group___m_c_i_a_p_i.html#gaee5ef9cd0d85a8998d1e635f6cbaf6f7)
## Get Faults
[MC_GetOccuredFaultsMotor1()](https://docs.x4132.dev/mcsdk/group___m_c_i_a_p_i.html#gaccf1b164487fc23c152be6cd68657a9d)
## Set Current To Motor
## Get Current of Motor
## ACK/NACK
Low-Level CRC signal. Used for acknowledging or requesting the message be sent again.
