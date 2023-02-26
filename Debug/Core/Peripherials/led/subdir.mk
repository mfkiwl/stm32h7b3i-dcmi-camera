################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Peripherials/led/bsp_led.c 

OBJS += \
./Core/Peripherials/led/bsp_led.o 

C_DEPS += \
./Core/Peripherials/led/bsp_led.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Peripherials/led/%.o Core/Peripherials/led/%.su: ../Core/Peripherials/led/%.c Core/Peripherials/led/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B3xxQ -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Peripherials-2f-led

clean-Core-2f-Peripherials-2f-led:
	-$(RM) ./Core/Peripherials/led/bsp_led.d ./Core/Peripherials/led/bsp_led.o ./Core/Peripherials/led/bsp_led.su

.PHONY: clean-Core-2f-Peripherials-2f-led

