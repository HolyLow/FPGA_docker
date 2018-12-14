#!/bin/bash


docker run -it --privileged -v /dev/xcldma/:/dev/xcldma/  xilinx_fpga:v5 /bin/bash
# docker run -it --device /dev/xcldma/xcldma0_user:/dev/xcldma/xcldma0_user -v /home/jiaming/FPGA-OpenCL/:/FPGA-OpenCL/ -v /dev/xcldma/:/dev/xcldma/  xilinx_fpga:v5 /bin/bash
