################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/common/FrontendApplication.cpp \
C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/model/Model.cpp \
C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/screen1_screen/Screen1Presenter.cpp \
C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/screen1_screen/Screen1View.cpp \
C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/screen2_screen/Screen2Presenter.cpp \
C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/screen2_screen/Screen2View.cpp \
C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/config_page_screen/config_pagePresenter.cpp \
C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/config_page_screen/config_pageView.cpp \
C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/smart_config_mode_screen/smart_config_modePresenter.cpp \
C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/smart_config_mode_screen/smart_config_modeView.cpp 

OBJS += \
./Application/User/gui/FrontendApplication.o \
./Application/User/gui/Model.o \
./Application/User/gui/Screen1Presenter.o \
./Application/User/gui/Screen1View.o \
./Application/User/gui/Screen2Presenter.o \
./Application/User/gui/Screen2View.o \
./Application/User/gui/config_pagePresenter.o \
./Application/User/gui/config_pageView.o \
./Application/User/gui/smart_config_modePresenter.o \
./Application/User/gui/smart_config_modeView.o 

CPP_DEPS += \
./Application/User/gui/FrontendApplication.d \
./Application/User/gui/Model.d \
./Application/User/gui/Screen1Presenter.d \
./Application/User/gui/Screen1View.d \
./Application/User/gui/Screen2Presenter.d \
./Application/User/gui/Screen2View.d \
./Application/User/gui/config_pagePresenter.d \
./Application/User/gui/config_pageView.d \
./Application/User/gui/smart_config_modePresenter.d \
./Application/User/gui/smart_config_modeView.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/gui/FrontendApplication.o: C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/common/FrontendApplication.cpp Application/User/gui/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F750xx -c -I../../Core/Inc -I../../Drivers/CMSIS/Include -I../../TouchGFX/generated/gui_generated/include -I../../Drivers/BSP/STM32F7508-Discovery -I../../TouchGFX/target -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../TouchGFX/App -I../../Middlewares/ST/touchgfx/framework/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../TouchGFX/target/generated -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../Drivers/BSP/Components/Common -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../TouchGFX/gui/include -I../../TouchGFX/generated/texts/include -I../../TouchGFX/generated/images/include -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../TouchGFX/generated/fonts/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/UserGlobalVariables" -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/TuyaMcu" -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -femit-class-debug-always -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/gui/Model.o: C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/model/Model.cpp Application/User/gui/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F750xx -c -I../../Core/Inc -I../../Drivers/CMSIS/Include -I../../TouchGFX/generated/gui_generated/include -I../../Drivers/BSP/STM32F7508-Discovery -I../../TouchGFX/target -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../TouchGFX/App -I../../Middlewares/ST/touchgfx/framework/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../TouchGFX/target/generated -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../Drivers/BSP/Components/Common -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../TouchGFX/gui/include -I../../TouchGFX/generated/texts/include -I../../TouchGFX/generated/images/include -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../TouchGFX/generated/fonts/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/UserGlobalVariables" -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/TuyaMcu" -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -femit-class-debug-always -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/gui/Screen1Presenter.o: C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/screen1_screen/Screen1Presenter.cpp Application/User/gui/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F750xx -c -I../../Core/Inc -I../../Drivers/CMSIS/Include -I../../TouchGFX/generated/gui_generated/include -I../../Drivers/BSP/STM32F7508-Discovery -I../../TouchGFX/target -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../TouchGFX/App -I../../Middlewares/ST/touchgfx/framework/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../TouchGFX/target/generated -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../Drivers/BSP/Components/Common -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../TouchGFX/gui/include -I../../TouchGFX/generated/texts/include -I../../TouchGFX/generated/images/include -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../TouchGFX/generated/fonts/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/UserGlobalVariables" -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/TuyaMcu" -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -femit-class-debug-always -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/gui/Screen1View.o: C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/screen1_screen/Screen1View.cpp Application/User/gui/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F750xx -c -I../../Core/Inc -I../../Drivers/CMSIS/Include -I../../TouchGFX/generated/gui_generated/include -I../../Drivers/BSP/STM32F7508-Discovery -I../../TouchGFX/target -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../TouchGFX/App -I../../Middlewares/ST/touchgfx/framework/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../TouchGFX/target/generated -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../Drivers/BSP/Components/Common -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../TouchGFX/gui/include -I../../TouchGFX/generated/texts/include -I../../TouchGFX/generated/images/include -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../TouchGFX/generated/fonts/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/UserGlobalVariables" -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/TuyaMcu" -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -femit-class-debug-always -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/gui/Screen2Presenter.o: C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/screen2_screen/Screen2Presenter.cpp Application/User/gui/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F750xx -c -I../../Core/Inc -I../../Drivers/CMSIS/Include -I../../TouchGFX/generated/gui_generated/include -I../../Drivers/BSP/STM32F7508-Discovery -I../../TouchGFX/target -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../TouchGFX/App -I../../Middlewares/ST/touchgfx/framework/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../TouchGFX/target/generated -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../Drivers/BSP/Components/Common -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../TouchGFX/gui/include -I../../TouchGFX/generated/texts/include -I../../TouchGFX/generated/images/include -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../TouchGFX/generated/fonts/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/UserGlobalVariables" -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/TuyaMcu" -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -femit-class-debug-always -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/gui/Screen2View.o: C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/screen2_screen/Screen2View.cpp Application/User/gui/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F750xx -c -I../../Core/Inc -I../../Drivers/CMSIS/Include -I../../TouchGFX/generated/gui_generated/include -I../../Drivers/BSP/STM32F7508-Discovery -I../../TouchGFX/target -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../TouchGFX/App -I../../Middlewares/ST/touchgfx/framework/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../TouchGFX/target/generated -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../Drivers/BSP/Components/Common -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../TouchGFX/gui/include -I../../TouchGFX/generated/texts/include -I../../TouchGFX/generated/images/include -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../TouchGFX/generated/fonts/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/UserGlobalVariables" -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/TuyaMcu" -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -femit-class-debug-always -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/gui/config_pagePresenter.o: C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/config_page_screen/config_pagePresenter.cpp Application/User/gui/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F750xx -c -I../../Core/Inc -I../../Drivers/CMSIS/Include -I../../TouchGFX/generated/gui_generated/include -I../../Drivers/BSP/STM32F7508-Discovery -I../../TouchGFX/target -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../TouchGFX/App -I../../Middlewares/ST/touchgfx/framework/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../TouchGFX/target/generated -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../Drivers/BSP/Components/Common -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../TouchGFX/gui/include -I../../TouchGFX/generated/texts/include -I../../TouchGFX/generated/images/include -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../TouchGFX/generated/fonts/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/UserGlobalVariables" -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/TuyaMcu" -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -femit-class-debug-always -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/gui/config_pageView.o: C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/config_page_screen/config_pageView.cpp Application/User/gui/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F750xx -c -I../../Core/Inc -I../../Drivers/CMSIS/Include -I../../TouchGFX/generated/gui_generated/include -I../../Drivers/BSP/STM32F7508-Discovery -I../../TouchGFX/target -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../TouchGFX/App -I../../Middlewares/ST/touchgfx/framework/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../TouchGFX/target/generated -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../Drivers/BSP/Components/Common -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../TouchGFX/gui/include -I../../TouchGFX/generated/texts/include -I../../TouchGFX/generated/images/include -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../TouchGFX/generated/fonts/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/UserGlobalVariables" -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/TuyaMcu" -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -femit-class-debug-always -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/gui/smart_config_modePresenter.o: C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/smart_config_mode_screen/smart_config_modePresenter.cpp Application/User/gui/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F750xx -c -I../../Core/Inc -I../../Drivers/CMSIS/Include -I../../TouchGFX/generated/gui_generated/include -I../../Drivers/BSP/STM32F7508-Discovery -I../../TouchGFX/target -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../TouchGFX/App -I../../Middlewares/ST/touchgfx/framework/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../TouchGFX/target/generated -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../Drivers/BSP/Components/Common -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../TouchGFX/gui/include -I../../TouchGFX/generated/texts/include -I../../TouchGFX/generated/images/include -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../TouchGFX/generated/fonts/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/UserGlobalVariables" -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/TuyaMcu" -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -femit-class-debug-always -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/gui/smart_config_modeView.o: C:/TouchGFXProjects/FirstWorkout/TouchGFX/gui/src/smart_config_mode_screen/smart_config_modeView.cpp Application/User/gui/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F750xx -c -I../../Core/Inc -I../../Drivers/CMSIS/Include -I../../TouchGFX/generated/gui_generated/include -I../../Drivers/BSP/STM32F7508-Discovery -I../../TouchGFX/target -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../TouchGFX/App -I../../Middlewares/ST/touchgfx/framework/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../TouchGFX/target/generated -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../Drivers/BSP/Components/Common -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../TouchGFX/gui/include -I../../TouchGFX/generated/texts/include -I../../TouchGFX/generated/images/include -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../TouchGFX/generated/fonts/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/UserGlobalVariables" -I"C:/TouchGFXProjects/FirstWorkout/STM32CubeIDE/Application/User/TuyaMcu" -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -femit-class-debug-always -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

