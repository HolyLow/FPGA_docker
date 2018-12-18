setenv XILINX_OPENCL /usr/fpga/pcie
if ( ! $?LD_LIBRARY_PATH ) then
    setenv LD_LIBRARY_PATH $XILINX_OPENCL/runtime/lib/x86_64
else
    setenv LD_LIBRARY_PATH $XILINX_OPENCL/runtime/lib/x86_64:$LD_LIBRARY_PATH
endif
setenv XCL_PLATFORM xilinx_adm-pcie-7v3_1ddr_3_0
