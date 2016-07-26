################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ds1820.cpp \
../main.cpp 

LINK_OBJ += \
./ds1820.cpp.o \
./main.cpp.o 

CPP_DEPS += \
./ds1820.cpp.d \
./main.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
ds1820.cpp.o: ../ds1820.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\ea\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/ea/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:/ea/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:/ea/workspace/Copy8u/Release/core" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DLWIP_OPEN_SRC   -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="ESP8266_ESP12"  -DESP8266   -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\espino" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\OneWire" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer\src" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266mDNS" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ArduinoJson" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\espino" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer\src" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\OneWire" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ArduinoJson" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266mDNS" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

main.cpp.o: ../main.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\ea\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/ea/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:/ea/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:/ea/workspace/Copy8u/Release/core" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DLWIP_OPEN_SRC   -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="ESP8266_ESP12"  -DESP8266   -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\espino" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\OneWire" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer\src" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266mDNS" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ArduinoJson" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\espino" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer\src" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\OneWire" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ArduinoJson" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\ea\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266mDNS" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '


