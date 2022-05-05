################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/haifa/PFA/x-cube-azrtos-f4-main/Projects/STM32469I-Discovery/Applications/FileX/Fx_uSD_File_Edit\ (copie)/AZURE_RTOS/App/app_azure_rtos.c 

OBJS += \
./Application/User/AZURE_RTOS/App/app_azure_rtos.o 

C_DEPS += \
./Application/User/AZURE_RTOS/App/app_azure_rtos.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/AZURE_RTOS/App/app_azure_rtos.o: /home/haifa/PFA/x-cube-azrtos-f4-main/Projects/STM32469I-Discovery/Applications/FileX/Fx_uSD_File_Edit\ (copie)/AZURE_RTOS/App/app_azure_rtos.c Application/User/AZURE_RTOS/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSAIL_BUILD -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32F469xx -c -I../../Core/Inc -I"/home/haifa/PFA/x-cube-azrtos-f4-main/Projects/STM32469I-Discovery/Applications/FileX/Fx_uSD_File_Edit (copie)/FileX/App" -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/src/libsail -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/build/include -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/ST/filex/common/src -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/ST/filex/common/inc -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/src -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/src/libsail-common -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/src/libsail-manip -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/src/sail-codecs -I../../AZURE_RTOS/App -I../../FileX/App -I../../FileX/Target -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/filex/common/inc/ -I../../../../../../../Middlewares/ST/filex/ports/generic/inc/ -I../../../../../../../Middlewares/ST/threadx/common/inc/ -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m4/gnu/inc/ -I../../../../../../../Drivers/BSP/STM32469I-Discovery -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/AZURE_RTOS/App/app_azure_rtos.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-AZURE_RTOS-2f-App

clean-Application-2f-User-2f-AZURE_RTOS-2f-App:
	-$(RM) ./Application/User/AZURE_RTOS/App/app_azure_rtos.d ./Application/User/AZURE_RTOS/App/app_azure_rtos.o ./Application/User/AZURE_RTOS/App/app_azure_rtos.su

.PHONY: clean-Application-2f-User-2f-AZURE_RTOS-2f-App

