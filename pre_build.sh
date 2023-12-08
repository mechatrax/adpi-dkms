#!/bin/bash

SRC=$(apt-cache depends linux-source | grep -o -E "linux-source-[0-9]+(\.[0-9]+)*" | head -n1)

tar -xf /usr/src/$SRC.tar.xz $SRC/drivers/iio/adc/{ad7793,ad_sigma_delta}.c --xform=s,$SRC/drivers/iio/adc,., 

for p in patches/*.patch
do
  patch -p1 < $p
done

