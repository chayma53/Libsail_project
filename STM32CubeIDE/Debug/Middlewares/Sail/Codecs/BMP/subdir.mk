################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/chayma/x-cube-azrtos-f4-main/Middlewares/sail/src/sail-codecs/bmp/bmp.c 

OBJS += \
./Middlewares/Sail/Codecs/BMP/bmp.o 

C_DEPS += \
./Middlewares/Sail/Codecs/BMP/bmp.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Sail/Codecs/BMP/bmp.o: /home/chayma/x-cube-azrtos-f4-main/Middlewares/sail/src/sail-codecs/bmp/bmp.c Middlewares/Sail/Codecs/BMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSAIL_BUILD -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32F469xx -c -I../../Core/Inc -I../../../../../../../Middlewares/sail/src/libsail -I../../../../../../../Middlewares/sail/src -I../../../../../../../Middlewares/sail/src/libsail-common -I../../../../../../../Middlewares/sail/src/libsail-manip -I../../../../../../../Middlewares/sail/src/sail-codecs -I../../AZURE_RTOS/App -I../../FileX/App -I../../FileX/Target -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/filex/common/inc/ -I../../../../../../../Middlewares/ST/filex/ports/generic/inc/ -I../../../../../../../Middlewares/ST/threadx/common/inc/ -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m4/gnu/inc/ -I../../../../../../../Drivers/BSP/STM32469I-Discovery -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Sail-2f-Codecs-2f-BMP

clean-Middlewares-2f-Sail-2f-Codecs-2f-BMP:
	-$(RM) ./Middlewares/Sail/Codecs/BMP/bmp.d ./Middlewares/Sail/Codecs/BMP/bmp.o ./Middlewares/Sail/Codecs/BMP/bmp.su

.PHONY: clean-Middlewares-2f-Sail-2f-Codecs-2f-BMP

