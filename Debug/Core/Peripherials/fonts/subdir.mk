################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Peripherials/fonts/font12.c \
../Core/Peripherials/fonts/font16.c \
../Core/Peripherials/fonts/font20.c \
../Core/Peripherials/fonts/font24.c \
../Core/Peripherials/fonts/font8.c 

OBJS += \
./Core/Peripherials/fonts/font12.o \
./Core/Peripherials/fonts/font16.o \
./Core/Peripherials/fonts/font20.o \
./Core/Peripherials/fonts/font24.o \
./Core/Peripherials/fonts/font8.o 

C_DEPS += \
./Core/Peripherials/fonts/font12.d \
./Core/Peripherials/fonts/font16.d \
./Core/Peripherials/fonts/font20.d \
./Core/Peripherials/fonts/font24.d \
./Core/Peripherials/fonts/font8.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Peripherials/fonts/%.o Core/Peripherials/fonts/%.su: ../Core/Peripherials/fonts/%.c Core/Peripherials/fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B3xxQ -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Peripherials-2f-fonts

clean-Core-2f-Peripherials-2f-fonts:
	-$(RM) ./Core/Peripherials/fonts/font12.d ./Core/Peripherials/fonts/font12.o ./Core/Peripherials/fonts/font12.su ./Core/Peripherials/fonts/font16.d ./Core/Peripherials/fonts/font16.o ./Core/Peripherials/fonts/font16.su ./Core/Peripherials/fonts/font20.d ./Core/Peripherials/fonts/font20.o ./Core/Peripherials/fonts/font20.su ./Core/Peripherials/fonts/font24.d ./Core/Peripherials/fonts/font24.o ./Core/Peripherials/fonts/font24.su ./Core/Peripherials/fonts/font8.d ./Core/Peripherials/fonts/font8.o ./Core/Peripherials/fonts/font8.su

.PHONY: clean-Core-2f-Peripherials-2f-fonts

