#!/bin/bash

WRK_VERSION=4.0.1

WRK_ROOT=wrk-$WRK_VERSION
WRK_ELF=$WRK_ROOT/wrk



echo "=====> Building wrk..."
./make-wrk.sh  $WRK_VERSION


echo
echo "=====> Packing wrk executable..."
./extract-elf-so_static_linux-amd64  \
    --nss-net  -z  \
    $WRK_ELF


echo
echo "=====> Packing additional support files..."


echo
echo "=====> Done!"
