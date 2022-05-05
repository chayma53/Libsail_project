################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/chayma/x-cube-azrtos-f4-main/Projects/STM32469I-Discovery/Applications/FileX/Libsail_project/Core/Src/system_stm32f4xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32f4xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32f4xx.o: /home/chayma/x-cube-azrtos-f4-main/Projects/STM32469I-Discovery/Applications/FileX/Libsail_project/Core/Src/system_stm32f4xx.c Drivers/CMSIS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSAIL_BUILD -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32F469xx -c -I../../Core/Inc -I../../../../../../../Middlewares/sail/src/libsail -I../../../../../../../Middlewares/sail/src -I../../../../../../../Middlewares/sail/src/libsail-common -I../../../../../../../Middlewares/sail/src/libsail-manip -I../../../../../../../Middlewares/sail/src/sail-codecs -I../../AZURE_RTOS/App -I../../FileX/App -I../../FileX/Target -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/filex/common/inc/ -I../../../../../../../Middlewares/ST/filex/ports/generic/inc/ -I../../../../../../../Middlewares/ST/threadx/common/inc/ -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m4/gnu/inc/ -I../../../../../../../Drivers/BSP/STM32469I-Discovery -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS

clean-Drivers-2f-CMSIS:
	-$(RM) ./Drivers/CMSIS/system_stm32f4xx.d ./Drivers/CMSIS/system_stm32f4xx.o ./Drivers/CMSIS/system_stm32f4xx.su

.PHONY: clean-Drivers-2f-CMSIS

