################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/ST/filex/common/drivers/fx_stm32_sd_driver.c 

OBJS += \
./Middlewares/Interfaces/File\ System/FileX\ SD\ interface/fx_stm32_sd_driver.o 

C_DEPS += \
./Middlewares/Interfaces/File\ System/FileX\ SD\ interface/fx_stm32_sd_driver.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Interfaces/File\ System/FileX\ SD\ interface/fx_stm32_sd_driver.o: /home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/ST/filex/common/drivers/fx_stm32_sd_driver.c Middlewares/Interfaces/File\ System/FileX\ SD\ interface/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSAIL_BUILD -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32F469xx -c -I../../Core/Inc -I"/home/haifa/PFA/x-cube-azrtos-f4-main/Projects/STM32469I-Discovery/Applications/FileX/Fx_uSD_File_Edit (copie)/FileX/App" -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/src/libsail -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/build/include -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/ST/filex/common/src -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/ST/filex/common/inc -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/src -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/src/libsail-common -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/src/libsail-manip -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/src/sail-codecs -I../../AZURE_RTOS/App -I../../FileX/App -I../../FileX/Target -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/filex/common/inc/ -I../../../../../../../Middlewares/ST/filex/ports/generic/inc/ -I../../../../../../../Middlewares/ST/threadx/common/inc/ -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m4/gnu/inc/ -I../../../../../../../Drivers/BSP/STM32469I-Discovery -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Interfaces/File System/FileX SD interface/fx_stm32_sd_driver.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Interfaces-2f-File-20-System-2f-FileX-20-SD-20-interface

clean-Middlewares-2f-Interfaces-2f-File-20-System-2f-FileX-20-SD-20-interface:
	-$(RM) ./Middlewares/Interfaces/File\ System/FileX\ SD\ interface/fx_stm32_sd_driver.d ./Middlewares/Interfaces/File\ System/FileX\ SD\ interface/fx_stm32_sd_driver.o ./Middlewares/Interfaces/File\ System/FileX\ SD\ interface/fx_stm32_sd_driver.su

.PHONY: clean-Middlewares-2f-Interfaces-2f-File-20-System-2f-FileX-20-SD-20-interface

