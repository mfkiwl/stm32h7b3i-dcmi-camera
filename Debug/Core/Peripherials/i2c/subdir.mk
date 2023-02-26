################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Peripherials/i2c/bsp_i2c.c 

OBJS += \
./Core/Peripherials/i2c/bsp_i2c.o 

C_DEPS += \
./Core/Peripherials/i2c/bsp_i2c.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Peripherials/i2c/%.o Core/Peripherials/i2c/%.su: ../Core/Peripherials/i2c/%.c Core/Peripherials/i2c/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B3xxQ -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Peripherials-2f-i2c

clean-Core-2f-Peripherials-2f-i2c:
	-$(RM) ./Core/Peripherials/i2c/bsp_i2c.d ./Core/Peripherials/i2c/bsp_i2c.o ./Core/Peripherials/i2c/bsp_i2c.su

.PHONY: clean-Core-2f-Peripherials-2f-i2c

