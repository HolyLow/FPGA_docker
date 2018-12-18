FROM ubuntu:14.04
LABEL author="jmxie@pku.edu.cn"
ENV REFRESHED_AT 20181218
RUN apt-get update && \
    apt-get -yqq install clinfo && \
    apt-get -yqq install build-essential && \
    apt-get -yqq install unzip && \
    apt-get -yqq install kmod && \
    apt-get -yqq install linux-headers-$(uname -r)
ENV XILINX_OPENCL /xilinx
ENV XILINX_LIB    /lib/xilinx
ADD pcie/ $XILINX_OPENCL
ADD install_manager.sh /install_manager.sh
ENTRYPOINT ["/install_manager.sh"]
# ADD FPGA-OpenCL/ /FPGA-OpenCL/
# ENV LD_LIBRARY_PATH $XILINX_OPENCL/runtime/lib/x86_64:$LD_LIBRARY_PATH
# ENV XCL_PLATFORM xilinx_adm-pcie-7v3_1ddr_3_0

# VOLUME 
# RUN mkdir -p /etc/OpenCL/vendors && \
#     echo "libxilinxopencl.so" > /etc/OpenCL/vendors/xilinx.icd
