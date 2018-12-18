#!/bin/bash

XILINX_OPENCL="/lib/xilinx"
XILINX_FIRMWARE="/lib/firmware/xilinx"
OPENCL_VENDOR="/etc/OpenCL/vendors"
# docker run -it --privileged -v /dev/xcldma/:/dev/xcldma/  xilinx_fpga:v5 /bin/bash
# docker run -it  $dev_str -v /dev/xcldma/:/dev/xcldma/  xilinx_fpga:v5 /bin/bash
# docker run -it --privileged --cap-add=ALL -v /etc/OpenCL/vendors:/etc/OpenCL/vendors -v /lib/firmware/xilinx:/lib/firmware/xilinx -v /lib/xilinx/:/lib/xilinx/  fpga_test:v6 /bin/bash
img="fpga_driver:ubt14.04"

docker build -t $img .

# docker run --privileged --cap-add=ALL -v /etc/OpenCL/vendors:/etc/OpenCL/vendors -v /lib/firmware/xilinx:/lib/firmware/xilinx -v /lib/xilinx/:/lib/xilinx/  $img
docker run --privileged --cap-add=ALL -v ${OPENCL_VENDOR}:${OPENCL_VENDOR} -v ${XILINX_FIRMWARE}:${XILINX_FIRMWARE} -v ${XILINX_OPENCL}:${XILINX_OPENCL}  $img

setup="setup.sh"
echo 'export XILINX_OPENCL="/lib/xilinx"' > $setup
echo 'export LD_LIBRARY_PATH=$XILINX_OPENCL/runtime/lib/x86_64:$LD_LIBRARY_PATH' >> $setup
echo 'export XCL_PLATFORM=xilinx_adm-pcie-7v3_1ddr_3_0' >> $setup
# docker run -it --device /dev/xcldma/xcldma0_user:/dev/xcldma/xcldma0_user -v /home/jiaming/FPGA-OpenCL/:/FPGA-OpenCL/ -v /dev/xcldma/:/dev/xcldma/  xilinx_fpga:v5 /bin/bash
