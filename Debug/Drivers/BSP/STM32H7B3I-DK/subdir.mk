################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/STM32H7B3I-DK/mfxstm32l152.c \
../Drivers/BSP/STM32H7B3I-DK/mfxstm32l152_reg.c \
../Drivers/BSP/STM32H7B3I-DK/ov5640.c \
../Drivers/BSP/STM32H7B3I-DK/ov5640_reg.c \
../Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval.c \
../Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_bus.c \
../Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_camera.c \
../Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_io.c 

OBJS += \
./Drivers/BSP/STM32H7B3I-DK/mfxstm32l152.o \
./Drivers/BSP/STM32H7B3I-DK/mfxstm32l152_reg.o \
./Drivers/BSP/STM32H7B3I-DK/ov5640.o \
./Drivers/BSP/STM32H7B3I-DK/ov5640_reg.o \
./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval.o \
./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_bus.o \
./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_camera.o \
./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_io.o 

C_DEPS += \
./Drivers/BSP/STM32H7B3I-DK/mfxstm32l152.d \
./Drivers/BSP/STM32H7B3I-DK/mfxstm32l152_reg.d \
./Drivers/BSP/STM32H7B3I-DK/ov5640.d \
./Drivers/BSP/STM32H7B3I-DK/ov5640_reg.d \
./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval.d \
./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_bus.d \
./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_camera.d \
./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_io.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32H7B3I-DK/%.o Drivers/BSP/STM32H7B3I-DK/%.su: ../Drivers/BSP/STM32H7B3I-DK/%.c Drivers/BSP/STM32H7B3I-DK/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B3xxQ -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/pwl/STM32CubeIDE/camera-testing/camtest/Drivers/BSP/STM32H7B3I-DK" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-STM32H7B3I-2d-DK

clean-Drivers-2f-BSP-2f-STM32H7B3I-2d-DK:
	-$(RM) ./Drivers/BSP/STM32H7B3I-DK/mfxstm32l152.d ./Drivers/BSP/STM32H7B3I-DK/mfxstm32l152.o ./Drivers/BSP/STM32H7B3I-DK/mfxstm32l152.su ./Drivers/BSP/STM32H7B3I-DK/mfxstm32l152_reg.d ./Drivers/BSP/STM32H7B3I-DK/mfxstm32l152_reg.o ./Drivers/BSP/STM32H7B3I-DK/mfxstm32l152_reg.su ./Drivers/BSP/STM32H7B3I-DK/ov5640.d ./Drivers/BSP/STM32H7B3I-DK/ov5640.o ./Drivers/BSP/STM32H7B3I-DK/ov5640.su ./Drivers/BSP/STM32H7B3I-DK/ov5640_reg.d ./Drivers/BSP/STM32H7B3I-DK/ov5640_reg.o ./Drivers/BSP/STM32H7B3I-DK/ov5640_reg.su ./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval.d ./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval.o ./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval.su ./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_bus.d ./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_bus.o ./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_bus.su ./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_camera.d ./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_camera.o ./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_camera.su ./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_io.d ./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_io.o ./Drivers/BSP/STM32H7B3I-DK/stm32h7b3i_eval_io.su

.PHONY: clean-Drivers-2f-BSP-2f-STM32H7B3I-2d-DK

