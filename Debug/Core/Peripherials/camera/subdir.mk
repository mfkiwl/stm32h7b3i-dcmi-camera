################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Peripherials/camera/bsp_ov2640.c \
../Core/Peripherials/camera/bsp_ov5640.c \
../Core/Peripherials/camera/ov5640_AF.c 

OBJS += \
./Core/Peripherials/camera/bsp_ov2640.o \
./Core/Peripherials/camera/bsp_ov5640.o \
./Core/Peripherials/camera/ov5640_AF.o 

C_DEPS += \
./Core/Peripherials/camera/bsp_ov2640.d \
./Core/Peripherials/camera/bsp_ov5640.d \
./Core/Peripherials/camera/ov5640_AF.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Peripherials/camera/%.o Core/Peripherials/camera/%.su: ../Core/Peripherials/camera/%.c Core/Peripherials/camera/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B3xxQ -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Peripherials-2f-camera

clean-Core-2f-Peripherials-2f-camera:
	-$(RM) ./Core/Peripherials/camera/bsp_ov2640.d ./Core/Peripherials/camera/bsp_ov2640.o ./Core/Peripherials/camera/bsp_ov2640.su ./Core/Peripherials/camera/bsp_ov5640.d ./Core/Peripherials/camera/bsp_ov5640.o ./Core/Peripherials/camera/bsp_ov5640.su ./Core/Peripherials/camera/ov5640_AF.d ./Core/Peripherials/camera/ov5640_AF.o ./Core/Peripherials/camera/ov5640_AF.su

.PHONY: clean-Core-2f-Peripherials-2f-camera

