This example shows the recommended way to get high througput for data transfers
between kernel and global memory:
* Use vector data types to utilize the full 512-bit memory data width
* Reading/writing data in a pipelined loop to infer burst transfer

Files in the Example
---------------------
Application host code
* kernel_global_bandwidth.cpp  

Kernel code
* kernel.cl

Compilation File
* sdaccel.mkk : Makefile for compiling SDAccel application
* common.mk in ../common directory is also required for compilation


Compilation and Emulation
---------------------------
* Set up environment for SDAccel
* Run "make -f sdaccel.mk help" for further instructions

Executing the Application on FPGA
---------------------------------
* Set up the target FPGA board as described in SDAccel installation guide. 
  Make a note of the board installation directory as it will be used below.
  This step can be skipped if the target board and driver have already been
  set up. 

* For C-shell
  $source <board_installation_dir>/setup.csh 
  For Bash
  $source <board_installation_dir>/setup.sh 

* Run the application
  ./kernel_global_bandwidth bin_bandwidth_hw.xclbin

  Below are exmaple output on xilinx:adm-pcie-7v3:1ddr:3.0
  Selected xilinx:adm-pcie-7v3:1ddr:3.0 as the target device
  loading bin_bandwidth_hw.xclbin
  Starting kernel to read/write 1024 MB bytes from/to global memory... 
  Kernel read 1024 MB bytes from and wrote 1024.0 MB to global memory.
  Execution time = 0.236317 (sec) 
  Concurrent Read and Write Throughput = 8666.340976 (MB/sec) 
