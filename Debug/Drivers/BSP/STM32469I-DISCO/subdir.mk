################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/haifa/PFA/x-cube-azrtos-f4-main/Drivers/BSP/STM32469I-Discovery/stm32469i_discovery.c 

OBJS += \
./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery.o 

C_DEPS += \
./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32469I-DISCO/stm32469i_discovery.o: /home/haifa/PFA/x-cube-azrtos-f4-main/Drivers/BSP/STM32469I-Discovery/stm32469i_discovery.c Drivers/BSP/STM32469I-DISCO/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSAIL_BUILD -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32F469xx -c -I../../Core/Inc -I"/home/haifa/PFA/x-cube-azrtos-f4-main/Projects/STM32469I-Discovery/Applications/FileX/Fx_uSD_File_Edit (copie)/FileX/App" -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/src/libsail -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/build/include -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/ST/filex/common/src -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/ST/filex/common/inc -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/src -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/src/libsail-common -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/src/libsail-manip -I/home/haifa/PFA/x-cube-azrtos-f4-main/Middlewares/sail/src/sail-codecs -I../../AZURE_RTOS/App -I../../FileX/App -I../../FileX/Target -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/filex/common/inc/ -I../../../../../../../Middlewares/ST/filex/ports/generic/inc/ -I../../../../../../../Middlewares/ST/threadx/common/inc/ -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m4/gnu/inc/ -I../../../../../../../Drivers/BSP/STM32469I-Discovery -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/STM32469I-DISCO/stm32469i_discovery.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-STM32469I-2d-DISCO

clean-Drivers-2f-BSP-2f-STM32469I-2d-DISCO:
	-$(RM) ./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery.d ./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery.o ./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery.su

.PHONY: clean-Drivers-2f-BSP-2f-STM32469I-2d-DISCO

