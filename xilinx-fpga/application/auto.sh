#!/bin/bash


# docker run -it --privileged -v /dev/xcldma/:/dev/xcldma/  xilinx_fpga:v5 /bin/bash
dev_str=""
for dev in $(ls /dev/xcldma0*); do
  dev_str="${dev_str} --device ${dev}:${dev}"
done
echo $dev_str
docker run -it  $dev_str -v /dev/xcldma/:/dev/xcldma/ -v /lib/firmware/xilinx/:/lib/firmware/xilinx:ro -v /lib/xilinx/:/lib/xilinx/:ro xilinx_fpga:v5 /bin/bash

# docker run -it --device /dev/xcldma/xcldma0_user:/dev/xcldma/xcldma0_user -v /home/jiaming/FPGA-OpenCL/:/FPGA-OpenCL/ -v /dev/xcldma/:/dev/xcldma/  xilinx_fpga:v5 /bin/bash
