################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/aspep.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/hall_speed_pos_fdbk.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/main.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_api.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_app_hooks.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_config.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_config_common.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_configuration_registers.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_interface.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_math.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_parameters.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_tasks.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_tasks_foc.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mcp.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mcp_config.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/motorcontrol.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/pwm_common.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/pwm_curr_fdbk.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/r1_ps_pwm_curr_fdbk.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/register_interface.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/regular_conversion_manager.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/stm32_mc_common_it.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/stm32f0xx_hal_msp.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/stm32f0xx_it.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/stm32f0xx_mc_it.c \
../Application/User/syscalls.c \
../Application/User/sysmem.c \
/Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/usart_aspep_driver.c 

OBJS += \
./Application/User/aspep.o \
./Application/User/hall_speed_pos_fdbk.o \
./Application/User/main.o \
./Application/User/mc_api.o \
./Application/User/mc_app_hooks.o \
./Application/User/mc_config.o \
./Application/User/mc_config_common.o \
./Application/User/mc_configuration_registers.o \
./Application/User/mc_interface.o \
./Application/User/mc_math.o \
./Application/User/mc_parameters.o \
./Application/User/mc_tasks.o \
./Application/User/mc_tasks_foc.o \
./Application/User/mcp.o \
./Application/User/mcp_config.o \
./Application/User/motorcontrol.o \
./Application/User/pwm_common.o \
./Application/User/pwm_curr_fdbk.o \
./Application/User/r1_ps_pwm_curr_fdbk.o \
./Application/User/register_interface.o \
./Application/User/regular_conversion_manager.o \
./Application/User/stm32_mc_common_it.o \
./Application/User/stm32f0xx_hal_msp.o \
./Application/User/stm32f0xx_it.o \
./Application/User/stm32f0xx_mc_it.o \
./Application/User/syscalls.o \
./Application/User/sysmem.o \
./Application/User/usart_aspep_driver.o 

C_DEPS += \
./Application/User/aspep.d \
./Application/User/hall_speed_pos_fdbk.d \
./Application/User/main.d \
./Application/User/mc_api.d \
./Application/User/mc_app_hooks.d \
./Application/User/mc_config.d \
./Application/User/mc_config_common.d \
./Application/User/mc_configuration_registers.d \
./Application/User/mc_interface.d \
./Application/User/mc_math.d \
./Application/User/mc_parameters.d \
./Application/User/mc_tasks.d \
./Application/User/mc_tasks_foc.d \
./Application/User/mcp.d \
./Application/User/mcp_config.d \
./Application/User/motorcontrol.d \
./Application/User/pwm_common.d \
./Application/User/pwm_curr_fdbk.d \
./Application/User/r1_ps_pwm_curr_fdbk.d \
./Application/User/register_interface.d \
./Application/User/regular_conversion_manager.d \
./Application/User/stm32_mc_common_it.d \
./Application/User/stm32f0xx_hal_msp.d \
./Application/User/stm32f0xx_it.d \
./Application/User/stm32f0xx_mc_it.d \
./Application/User/syscalls.d \
./Application/User/sysmem.d \
./Application/User/usart_aspep_driver.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/aspep.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/aspep.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/hall_speed_pos_fdbk.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/hall_speed_pos_fdbk.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/main.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/main.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/mc_api.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_api.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/mc_app_hooks.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_app_hooks.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/mc_config.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_config.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/mc_config_common.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_config_common.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/mc_configuration_registers.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_configuration_registers.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/mc_interface.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_interface.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/mc_math.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_math.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/mc_parameters.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_parameters.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/mc_tasks.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_tasks.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/mc_tasks_foc.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mc_tasks_foc.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/mcp.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mcp.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/mcp_config.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/mcp_config.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/motorcontrol.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/motorcontrol.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/pwm_common.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/pwm_common.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/pwm_curr_fdbk.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/pwm_curr_fdbk.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/r1_ps_pwm_curr_fdbk.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/r1_ps_pwm_curr_fdbk.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/register_interface.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/register_interface.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/regular_conversion_manager.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/regular_conversion_manager.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/stm32_mc_common_it.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/stm32_mc_common_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/stm32f0xx_hal_msp.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/stm32f0xx_hal_msp.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/stm32f0xx_it.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/stm32f0xx_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/stm32f0xx_mc_it.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/stm32f0xx_mc_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/%.o Application/User/%.su Application/User/%.cyclo: ../Application/User/%.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/usart_aspep_driver.o: /Users/msvc/Documents/code/tbots/MDV6_STSPIN/Src/usart_aspep_driver.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g -DDEBUG -DARM_MATH_CM0 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Application-2f-User

clean-Application-2f-User:
	-$(RM) ./Application/User/aspep.cyclo ./Application/User/aspep.d ./Application/User/aspep.o ./Application/User/aspep.su ./Application/User/hall_speed_pos_fdbk.cyclo ./Application/User/hall_speed_pos_fdbk.d ./Application/User/hall_speed_pos_fdbk.o ./Application/User/hall_speed_pos_fdbk.su ./Application/User/main.cyclo ./Application/User/main.d ./Application/User/main.o ./Application/User/main.su ./Application/User/mc_api.cyclo ./Application/User/mc_api.d ./Application/User/mc_api.o ./Application/User/mc_api.su ./Application/User/mc_app_hooks.cyclo ./Application/User/mc_app_hooks.d ./Application/User/mc_app_hooks.o ./Application/User/mc_app_hooks.su ./Application/User/mc_config.cyclo ./Application/User/mc_config.d ./Application/User/mc_config.o ./Application/User/mc_config.su ./Application/User/mc_config_common.cyclo ./Application/User/mc_config_common.d ./Application/User/mc_config_common.o ./Application/User/mc_config_common.su ./Application/User/mc_configuration_registers.cyclo ./Application/User/mc_configuration_registers.d ./Application/User/mc_configuration_registers.o ./Application/User/mc_configuration_registers.su ./Application/User/mc_interface.cyclo ./Application/User/mc_interface.d ./Application/User/mc_interface.o ./Application/User/mc_interface.su ./Application/User/mc_math.cyclo ./Application/User/mc_math.d ./Application/User/mc_math.o ./Application/User/mc_math.su ./Application/User/mc_parameters.cyclo ./Application/User/mc_parameters.d ./Application/User/mc_parameters.o ./Application/User/mc_parameters.su ./Application/User/mc_tasks.cyclo ./Application/User/mc_tasks.d ./Application/User/mc_tasks.o ./Application/User/mc_tasks.su ./Application/User/mc_tasks_foc.cyclo ./Application/User/mc_tasks_foc.d ./Application/User/mc_tasks_foc.o ./Application/User/mc_tasks_foc.su ./Application/User/mcp.cyclo ./Application/User/mcp.d ./Application/User/mcp.o ./Application/User/mcp.su ./Application/User/mcp_config.cyclo ./Application/User/mcp_config.d ./Application/User/mcp_config.o ./Application/User/mcp_config.su ./Application/User/motorcontrol.cyclo ./Application/User/motorcontrol.d ./Application/User/motorcontrol.o ./Application/User/motorcontrol.su ./Application/User/pwm_common.cyclo ./Application/User/pwm_common.d ./Application/User/pwm_common.o ./Application/User/pwm_common.su ./Application/User/pwm_curr_fdbk.cyclo ./Application/User/pwm_curr_fdbk.d ./Application/User/pwm_curr_fdbk.o ./Application/User/pwm_curr_fdbk.su ./Application/User/r1_ps_pwm_curr_fdbk.cyclo ./Application/User/r1_ps_pwm_curr_fdbk.d ./Application/User/r1_ps_pwm_curr_fdbk.o ./Application/User/r1_ps_pwm_curr_fdbk.su ./Application/User/register_interface.cyclo ./Application/User/register_interface.d ./Application/User/register_interface.o ./Application/User/register_interface.su ./Application/User/regular_conversion_manager.cyclo ./Application/User/regular_conversion_manager.d ./Application/User/regular_conversion_manager.o ./Application/User/regular_conversion_manager.su ./Application/User/stm32_mc_common_it.cyclo ./Application/User/stm32_mc_common_it.d ./Application/User/stm32_mc_common_it.o ./Application/User/stm32_mc_common_it.su ./Application/User/stm32f0xx_hal_msp.cyclo ./Application/User/stm32f0xx_hal_msp.d ./Application/User/stm32f0xx_hal_msp.o ./Application/User/stm32f0xx_hal_msp.su ./Application/User/stm32f0xx_it.cyclo ./Application/User/stm32f0xx_it.d ./Application/User/stm32f0xx_it.o ./Application/User/stm32f0xx_it.su ./Application/User/stm32f0xx_mc_it.cyclo ./Application/User/stm32f0xx_mc_it.d ./Application/User/stm32f0xx_mc_it.o ./Application/User/stm32f0xx_mc_it.su ./Application/User/syscalls.cyclo ./Application/User/syscalls.d ./Application/User/syscalls.o ./Application/User/syscalls.su ./Application/User/sysmem.cyclo ./Application/User/sysmem.d ./Application/User/sysmem.o ./Application/User/sysmem.su ./Application/User/usart_aspep_driver.cyclo ./Application/User/usart_aspep_driver.d ./Application/User/usart_aspep_driver.o ./Application/User/usart_aspep_driver.su

.PHONY: clean-Application-2f-User

