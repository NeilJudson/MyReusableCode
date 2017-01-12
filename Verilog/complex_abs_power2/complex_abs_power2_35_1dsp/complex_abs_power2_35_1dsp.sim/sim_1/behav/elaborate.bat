@echo off
set xv_path=D:\\Xilinx\\15.2\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 1f05ad0562584768a98e8a22702b4d91 -m64 --debug typical --relax --mt 2 -L xbip_dsp48_wrapper_v3_0 -L xbip_utils_v3_0 -L xbip_pipe_v3_0 -L xbip_dsp48_macro_v3_0 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot test_complex_abs_power2_35_1dsp_behav xil_defaultlib.test_complex_abs_power2_35_1dsp xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
