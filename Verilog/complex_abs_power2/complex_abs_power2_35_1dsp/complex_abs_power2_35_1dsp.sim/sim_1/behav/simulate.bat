@echo off
set xv_path=D:\\Xilinx\\15.2\\Vivado\\2015.2\\bin
call %xv_path%/xsim test_complex_abs_power2_35_1dsp_behav -key {Behavioral:sim_1:Functional:test_complex_abs_power2_35_1dsp} -tclbatch test_complex_abs_power2_35_1dsp.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
