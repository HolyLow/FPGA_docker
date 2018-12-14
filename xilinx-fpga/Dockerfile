FROM ubuntu:16.04
LABEL author="jmxie@pku.edu.cn"
ENV REFRESHED_AT 20181213
RUN apt update; apt -yqq install clinfo
ENV XILINX_OPENCL /usr/lib/xilinx/pcie
ADD pcie/ $XILINX_OPENCL
ADD FPGA-OpenCL/ /FPGA-OpenCL/
ENV LD_LIBRARY_PATH $XILINX_OPENCL/runtime/lib/x86_64:$LD_LIBRARY_PATH
ENV XCL_PLATFORM xilinx_adm-pcie-7v3_1ddr_3_0

# VOLUME 
RUN mkdir -p /etc/OpenCL/vendors && \
    echo "libxilinxopencl.so" > /etc/OpenCL/vendors/xilinx.icd
