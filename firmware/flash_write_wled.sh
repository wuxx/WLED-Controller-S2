#!/bin/bash

BAUDRATE=460800

PORT=/dev/ttyACM0

ESPTOOL_PY=esptool.py
IMAGE=./flash_image_wled_0.15.1_esp32-s2.bin

$ESPTOOL_PY --chip esp32s2 -p $PORT -b ${BAUDRATE} --before=default_reset --after=hard_reset write_flash --flash_mode dio --flash_freq 80m --flash_size 4MB 0x0 $IMAGE
