FILE=$( ls -1 -t bin/nodemcu_float_*.bin | head -n 1 )
echo
echo "------ Flashing $FILE ------"
echo
~/.local/bin/esptool.py -p /dev/ttyUSB0 write_flash 0 $FILE  0x3fc000 ../ESP8266_NONOS_SDK-v2.0.0/bin/esp_init_data_default.bin 0x3fe000 ../ESP8266_NONOS_SDK-v2.0.0/bin/blank.bin 
