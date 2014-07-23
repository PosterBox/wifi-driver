#!/bin/bash

DRIVER=driver/8188eu-20140705.tar.gz
TARGET=/lib/modules/`uname -r`/kernel/drivers/net/wireless/8188eu.ko

tar xvf $DRIVER -C tmp
sudo install -p -m 644 tmp/8188eu.ko $TARGET
sudo insmod $TARGET
sudo depmod -a


