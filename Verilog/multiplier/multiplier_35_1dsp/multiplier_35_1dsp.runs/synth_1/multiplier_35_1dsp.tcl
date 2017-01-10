# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z045fbg676-3

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir F:/jiaweiwei/Project/MyReusableCode/Verilog/multiplier/multiplier_35_1dsp/multiplier_35_1dsp.cache/wt [current_project]
set_property parent.project_path F:/jiaweiwei/Project/MyReusableCode/Verilog/multiplier/multiplier_35_1dsp/multiplier_35_1dsp.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths f:/jiaweiwei/Project/MyReusableCode/Verilog/multiplier/multiplier_35_1dsp/multiplier_35_1dsp.srcs/sources_1 [current_project]
read_ip F:/jiaweiwei/Project/MyReusableCode/Verilog/multiplier/multiplier_35_1dsp/multiplier_35_1dsp.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip.xci
set_property used_in_implementation false [get_files -all f:/jiaweiwei/Project/MyReusableCode/Verilog/multiplier/multiplier_35_1dsp/multiplier_35_1dsp.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/jiaweiwei/Project/MyReusableCode/Verilog/multiplier/multiplier_35_1dsp/multiplier_35_1dsp.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip.dcp]
set_property is_locked true [get_files F:/jiaweiwei/Project/MyReusableCode/Verilog/multiplier/multiplier_35_1dsp/multiplier_35_1dsp.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip.xci]

read_verilog -library xil_defaultlib F:/jiaweiwei/Project/MyReusableCode/Verilog/multiplier/multiplier_35_1dsp/multiplier_35_1dsp.srcs/sources_1/code/multiplier_35_1dsp.v
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top multiplier_35_1dsp -part xc7z045fbg676-3
write_checkpoint -noxdef multiplier_35_1dsp.dcp
catch { report_utilization -file multiplier_35_1dsp_utilization_synth.rpt -pb multiplier_35_1dsp_utilization_synth.pb }
