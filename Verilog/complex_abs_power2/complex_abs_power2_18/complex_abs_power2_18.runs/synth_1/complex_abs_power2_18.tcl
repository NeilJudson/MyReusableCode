# 
# Synthesis run script generated by Vivado
# 

set_param simulator.modelsimInstallPath D:/modeltech64_10.4/win64
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z045fbg676-3

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {E:/jiaweiwei/Vivado workspace/complex_abs_power2_18/complex_abs_power2_18.cache/wt} [current_project]
set_property parent.project_path {E:/jiaweiwei/Vivado workspace/complex_abs_power2_18/complex_abs_power2_18.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_ip {{E:/jiaweiwei/Vivado workspace/complex_abs_power2_18/complex_abs_power2_18.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip.xci}}
set_property used_in_implementation false [get_files -all {{e:/jiaweiwei/Vivado workspace/complex_abs_power2_18/complex_abs_power2_18.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{e:/jiaweiwei/Vivado workspace/complex_abs_power2_18/complex_abs_power2_18.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip.dcp}}]
set_property is_locked true [get_files {{E:/jiaweiwei/Vivado workspace/complex_abs_power2_18/complex_abs_power2_18.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip.xci}}]

read_ip {{E:/jiaweiwei/Vivado workspace/complex_abs_power2_18/complex_abs_power2_18.srcs/sources_1/ip/dsp48_mul_add_ip/dsp48_mul_add_ip.xci}}
set_property used_in_implementation false [get_files -all {{e:/jiaweiwei/Vivado workspace/complex_abs_power2_18/complex_abs_power2_18.srcs/sources_1/ip/dsp48_mul_add_ip/dsp48_mul_add_ip_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{e:/jiaweiwei/Vivado workspace/complex_abs_power2_18/complex_abs_power2_18.srcs/sources_1/ip/dsp48_mul_add_ip/dsp48_mul_add_ip.dcp}}]
set_property is_locked true [get_files {{E:/jiaweiwei/Vivado workspace/complex_abs_power2_18/complex_abs_power2_18.srcs/sources_1/ip/dsp48_mul_add_ip/dsp48_mul_add_ip.xci}}]

read_verilog -library xil_defaultlib {{E:/jiaweiwei/Vivado workspace/complex_abs_power2_18/complex_abs_power2_18.srcs/sources_1/code/complex_abs_power2_18.v}}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top complex_abs_power2_18 -part xc7z045fbg676-3
write_checkpoint -noxdef complex_abs_power2_18.dcp
catch { report_utilization -file complex_abs_power2_18_utilization_synth.rpt -pb complex_abs_power2_18_utilization_synth.pb }