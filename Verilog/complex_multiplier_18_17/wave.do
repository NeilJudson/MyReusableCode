onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /test_complex_multiplier_18_17/i_clk
add wave -noupdate -format Literal /test_complex_multiplier_18_17/i_ar
add wave -noupdate -format Literal /test_complex_multiplier_18_17/i_ai
add wave -noupdate -format Literal /test_complex_multiplier_18_17/i_br
add wave -noupdate -format Literal /test_complex_multiplier_18_17/i_bi
add wave -noupdate -format Literal -radix decimal /test_complex_multiplier_18_17/o_pr
add wave -noupdate -format Literal -radix decimal /test_complex_multiplier_18_17/o_pi
add wave -noupdate -format Literal /test_complex_multiplier_18_17/cnt
add wave -noupdate -format Logic /glbl/GSR
add wave -noupdate -format Logic /test_complex_multiplier_18_17/uut/i_clk
add wave -noupdate -format Literal /test_complex_multiplier_18_17/uut/i_ar
add wave -noupdate -format Literal /test_complex_multiplier_18_17/uut/i_ai
add wave -noupdate -format Literal /test_complex_multiplier_18_17/uut/i_br
add wave -noupdate -format Literal /test_complex_multiplier_18_17/uut/i_bi
add wave -noupdate -format Logic /test_complex_multiplier_18_17/uut/ar_0
add wave -noupdate -format Logic /test_complex_multiplier_18_17/uut/ai_0
add wave -noupdate -format Literal /test_complex_multiplier_18_17/uut/br
add wave -noupdate -format Literal /test_complex_multiplier_18_17/uut/bi
add wave -noupdate -format Literal /test_complex_multiplier_18_17/uut/br_sub_bi
add wave -noupdate -format Literal /test_complex_multiplier_18_17/uut/br_add_bi
add wave -noupdate -format Literal /test_complex_multiplier_18_17/uut/u_ar
add wave -noupdate -format Literal /test_complex_multiplier_18_17/uut/u_ai
add wave -noupdate -format Literal /test_complex_multiplier_18_17/uut/u_br
add wave -noupdate -format Literal /test_complex_multiplier_18_17/uut/u_bi
add wave -noupdate -format Literal /test_complex_multiplier_18_17/uut/u_pr
add wave -noupdate -format Literal /test_complex_multiplier_18_17/uut/u_pi
add wave -noupdate -format Literal -radix decimal /test_complex_multiplier_18_17/uut/o_pr
add wave -noupdate -format Literal -radix decimal /test_complex_multiplier_18_17/uut/o_pi
add wave -noupdate -format Literal /test_complex_multiplier_18_17/uut/br_sub_bi_dly
add wave -noupdate -format Literal /test_complex_multiplier_18_17/uut/br_add_bi_dly
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1065933 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {1027988 ps} {1155988 ps}
