################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/basic_testes.c \
../src/main.c 

OBJS += \
./src/basic_testes.o \
./src/main.o 

C_DEPS += \
./src/basic_testes.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O2 -fmessage-length=0 -ffunction-sections -fdata-sections -ffreestanding -Wunused -Wuninitialized -Wall -Wextra -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -DSTM32F405xx -DHSE_VALUE=8000000 -DUSE_STDPERIPH_DRIVER -DSTM32F40XX -DARM_MATH_CM4 -I"../system/include" -I"../system/include/cmsis" -I../system/include/stm32spl -I../src/usart_lib -I../stm32kiss/inc -std=gnu11 -Wbad-function-cast -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


