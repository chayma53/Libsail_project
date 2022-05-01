################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/chayma/x-cube-azrtos-f4-main/Projects/STM32469I-Discovery/Applications/FileX/Fx_uSD_File_Edit\ (copie)/FileX/Target/fx_stm32_sd_driver_glue.c 

OBJS += \
./Application/User/FileX/Target/fx_stm32_sd_driver_glue.o 

C_DEPS += \
./Application/User/FileX/Target/fx_stm32_sd_driver_glue.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/FileX/Target/fx_stm32_sd_driver_glue.o: /home/chayma/x-cube-azrtos-f4-main/Projects/STM32469I-Discovery/Applications/FileX/Fx_uSD_File_Edit\ (copie)/FileX/Target/fx_stm32_sd_driver_glue.c Application/User/FileX/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSAIL_BUILD -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32F469xx -c -I../../Core/Inc -I../../../../../../../Middlewares/sail/src/libsail -I../../../../../../../Middlewares/sail/src -I../../../../../../../Middlewares/sail/src/libsail-common -I../../../../../../../Middlewares/sail/src/libsail-manip -I../../../../../../../Middlewares/sail/src/sail-codecs -I../../AZURE_RTOS/App -I../../FileX/App -I../../FileX/Target -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/filex/common/inc/ -I../../../../../../../Middlewares/ST/filex/ports/generic/inc/ -I../../../../../../../Middlewares/ST/threadx/common/inc/ -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m4/gnu/inc/ -I../../../../../../../Drivers/BSP/STM32469I-Discovery -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/FileX/Target/fx_stm32_sd_driver_glue.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-FileX-2f-Target

clean-Application-2f-User-2f-FileX-2f-Target:
	-$(RM) ./Application/User/FileX/Target/fx_stm32_sd_driver_glue.d ./Application/User/FileX/Target/fx_stm32_sd_driver_glue.o ./Application/User/FileX/Target/fx_stm32_sd_driver_glue.su

.PHONY: clean-Application-2f-User-2f-FileX-2f-Target

