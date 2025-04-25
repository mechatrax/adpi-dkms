#!/bin/bash

VER=$(echo $1 | grep -o -E "^([0-9]+\.[0-9]+)")
SRC=linux-source-$VER

tar -xf /usr/src/$SRC.tar.xz $SRC/drivers/iio/adc/{ad7793,ad_sigma_delta}.c --xform=s,$SRC/drivers/iio/adc,., 

for p in patches/$VER/*.patch
do
  patch -p1 < $p
done

