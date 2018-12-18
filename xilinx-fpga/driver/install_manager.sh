#!/bin/sh

cd $XILINX_OPENCL
echo "begin installation in $(pwd)"
./install.sh -d $XILINX_LIB
echo "installation accomplished"
