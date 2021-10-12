################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/User/UserGlobalVariables/EEPROM.c \
../Application/User/UserGlobalVariables/stm32f7508eeprom.c 

C_DEPS += \
./Application/User/UserGlobalVariables/EEPROM.d \
./Application/User/UserGlobalVariables/stm32f7508eeprom.d 

OBJS += \
./Application/User/UserGlobalVariables/EEPROM.o \
./Application/User/UserGlobalVariables/stm32f7508eeprom.o 


# Each subdirectory must supply rules for building sources it contributes
Application/User/UserGlobalVariables/%.o: ../Application/User/UserGlobalVariables/%.c Application/User/UserGlobalVariables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F750xx -c -I../../Core/Inc -I../../Drivers/CMSIS/Include -I../../TouchGFX/generated/gui_generated/include -I../../Drivers/BSP/STM32F7508-Discovery -I../../TouchGFX/target -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../TouchGFX/App -I../../Middlewares/ST/touchgfx/framework/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../TouchGFX/target/generated -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../Drivers/BSP/Components/Common -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../TouchGFX/gui/include -I../../TouchGFX/generated/texts/include -I../../TouchGFX/generated/images/include -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../TouchGFX/generated/fonts/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/UserGlobalVariables" -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/TuyaMcu" -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

