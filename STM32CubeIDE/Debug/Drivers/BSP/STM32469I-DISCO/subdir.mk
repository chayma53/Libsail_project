################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/chayma/x-cube-azrtos-f4-main/Drivers/BSP/Components/nt35510/nt35510.c \
/home/chayma/x-cube-azrtos-f4-main/Drivers/BSP/STM32469I-Discovery/stm32469i_discovery.c \
/home/chayma/x-cube-azrtos-f4-main/Drivers/BSP/STM32469I-Discovery/stm32469i_discovery_lcd.c \
/home/chayma/x-cube-azrtos-f4-main/Drivers/BSP/STM32469I-Discovery/stm32469i_discovery_sdram.c 

OBJS += \
./Drivers/BSP/STM32469I-DISCO/nt35510.o \
./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery.o \
./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery_lcd.o \
./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery_sdram.o 

C_DEPS += \
./Drivers/BSP/STM32469I-DISCO/nt35510.d \
./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery.d \
./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery_lcd.d \
./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery_sdram.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32469I-DISCO/nt35510.o: /home/chayma/x-cube-azrtos-f4-main/Drivers/BSP/Components/nt35510/nt35510.c Drivers/BSP/STM32469I-DISCO/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSAIL_BUILD -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32F469xx -c -I../../Core/Inc -I../../../../../../../Middlewares/sail/src/libsail -I../../../../../../../Middlewares/sail/src -I../../../../../../../Middlewares/sail/src/libsail-common -I../../../../../../../Middlewares/sail/src/libsail-manip -I../../../../../../../Middlewares/sail/src/sail-codecs -I../../AZURE_RTOS/App -I../../FileX/App -I../../FileX/Target -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/filex/common/inc/ -I../../../../../../../Middlewares/ST/filex/ports/generic/inc/ -I../../../../../../../Middlewares/ST/threadx/common/inc/ -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m4/gnu/inc/ -I../../../../../../../Drivers/BSP/STM32469I-Discovery -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32469I-DISCO/stm32469i_discovery.o: /home/chayma/x-cube-azrtos-f4-main/Drivers/BSP/STM32469I-Discovery/stm32469i_discovery.c Drivers/BSP/STM32469I-DISCO/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSAIL_BUILD -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32F469xx -c -I../../Core/Inc -I../../../../../../../Middlewares/sail/src/libsail -I../../../../../../../Middlewares/sail/src -I../../../../../../../Middlewares/sail/src/libsail-common -I../../../../../../../Middlewares/sail/src/libsail-manip -I../../../../../../../Middlewares/sail/src/sail-codecs -I../../AZURE_RTOS/App -I../../FileX/App -I../../FileX/Target -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/filex/common/inc/ -I../../../../../../../Middlewares/ST/filex/ports/generic/inc/ -I../../../../../../../Middlewares/ST/threadx/common/inc/ -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m4/gnu/inc/ -I../../../../../../../Drivers/BSP/STM32469I-Discovery -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32469I-DISCO/stm32469i_discovery_lcd.o: /home/chayma/x-cube-azrtos-f4-main/Drivers/BSP/STM32469I-Discovery/stm32469i_discovery_lcd.c Drivers/BSP/STM32469I-DISCO/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSAIL_BUILD -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32F469xx -c -I../../Core/Inc -I../../../../../../../Middlewares/sail/src/libsail -I../../../../../../../Middlewares/sail/src -I../../../../../../../Middlewares/sail/src/libsail-common -I../../../../../../../Middlewares/sail/src/libsail-manip -I../../../../../../../Middlewares/sail/src/sail-codecs -I../../AZURE_RTOS/App -I../../FileX/App -I../../FileX/Target -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/filex/common/inc/ -I../../../../../../../Middlewares/ST/filex/ports/generic/inc/ -I../../../../../../../Middlewares/ST/threadx/common/inc/ -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m4/gnu/inc/ -I../../../../../../../Drivers/BSP/STM32469I-Discovery -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32469I-DISCO/stm32469i_discovery_sdram.o: /home/chayma/x-cube-azrtos-f4-main/Drivers/BSP/STM32469I-Discovery/stm32469i_discovery_sdram.c Drivers/BSP/STM32469I-DISCO/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSAIL_BUILD -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32F469xx -c -I../../Core/Inc -I../../../../../../../Middlewares/sail/src/libsail -I../../../../../../../Middlewares/sail/src -I../../../../../../../Middlewares/sail/src/libsail-common -I../../../../../../../Middlewares/sail/src/libsail-manip -I../../../../../../../Middlewares/sail/src/sail-codecs -I../../AZURE_RTOS/App -I../../FileX/App -I../../FileX/Target -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/filex/common/inc/ -I../../../../../../../Middlewares/ST/filex/ports/generic/inc/ -I../../../../../../../Middlewares/ST/threadx/common/inc/ -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m4/gnu/inc/ -I../../../../../../../Drivers/BSP/STM32469I-Discovery -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-STM32469I-2d-DISCO

clean-Drivers-2f-BSP-2f-STM32469I-2d-DISCO:
	-$(RM) ./Drivers/BSP/STM32469I-DISCO/nt35510.d ./Drivers/BSP/STM32469I-DISCO/nt35510.o ./Drivers/BSP/STM32469I-DISCO/nt35510.su ./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery.d ./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery.o ./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery.su ./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery_lcd.d ./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery_lcd.o ./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery_lcd.su ./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery_sdram.d ./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery_sdram.o ./Drivers/BSP/STM32469I-DISCO/stm32469i_discovery_sdram.su

.PHONY: clean-Drivers-2f-BSP-2f-STM32469I-2d-DISCO

