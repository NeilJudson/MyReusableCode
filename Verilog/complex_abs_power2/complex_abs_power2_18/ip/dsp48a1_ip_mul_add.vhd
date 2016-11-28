--------------------------------------------------------------------------------
--     (c) Copyright 1995 - 2010 Xilinx, Inc. All rights reserved.            --
--                                                                            --
--     This file contains confidential and proprietary information            --
--     of Xilinx, Inc. and is protected under U.S. and                        --
--     international copyright and other intellectual property                --
--     laws.                                                                  --
--                                                                            --
--     DISCLAIMER                                                             --
--     This disclaimer is not a license and does not grant any                --
--     rights to the materials distributed herewith. Except as                --
--     otherwise provided in a valid license issued to you by                 --
--     Xilinx, and to the maximum extent permitted by applicable              --
--     law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND                --
--     WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES            --
--     AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING              --
--     BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-                 --
--     INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and               --
--     (2) Xilinx shall not be liable (whether in contract or tort,           --
--     including negligence, or under any other theory of                     --
--     liability) for any loss or damage of any kind or nature                --
--     related to, arising under or in connection with these                  --
--     materials, including for any direct, or any indirect,                  --
--     special, incidental, or consequential loss or damage                   --
--     (including loss of data, profits, goodwill, or any type of             --
--     loss or damage suffered as a result of any action brought              --
--     by a third party) even if such damage or loss was                      --
--     reasonably foreseeable or Xilinx had been advised of the               --
--     possibility of the same.                                               --
--                                                                            --
--     CRITICAL APPLICATIONS                                                  --
--     Xilinx products are not designed or intended to be fail-               --
--     safe, or for use in any application requiring fail-safe                --
--     performance, such as life-support or safety devices or                 --
--     systems, Class III medical devices, nuclear facilities,                --
--     applications related to the deployment of airbags, or any              --
--     other applications that could lead to death, personal                  --
--     injury, or severe property or environmental damage                     --
--     (individually and collectively, "Critical                              --
--     Applications"). Customer assumes the sole risk and                     --
--     liability of any use of Xilinx products in Critical                    --
--     Applications, subject only to applicable laws and                      --
--     regulations governing limitations on product liability.                --
--                                                                            --
--     THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS               --
--     PART OF THIS FILE AT ALL TIMES.                                        --
--------------------------------------------------------------------------------
-- You must compile the wrapper file dsp48a1_ip_mul_add.vhd when simulating
-- the core, dsp48a1_ip_mul_add. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY dsp48a1_ip_mul_add IS
	port (
	clk: in std_logic;
	a: in std_logic_vector(17 downto 0);
	b: in std_logic_vector(17 downto 0);
	c: in std_logic_vector(47 downto 0);
	p: out std_logic_vector(47 downto 0));
END dsp48a1_ip_mul_add;

ARCHITECTURE dsp48a1_ip_mul_add_a OF dsp48a1_ip_mul_add IS
-- synthesis translate_off
component wrapped_dsp48a1_ip_mul_add
	port (
	clk: in std_logic;
	a: in std_logic_vector(17 downto 0);
	b: in std_logic_vector(17 downto 0);
	c: in std_logic_vector(47 downto 0);
	p: out std_logic_vector(47 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_dsp48a1_ip_mul_add use entity XilinxCoreLib.xbip_dsp48_macro_v2_1(behavioral)
		generic map(
			c_has_cec => 0,
			c_has_acout => 0,
			c_has_ceb => 0,
			c_has_cea => 0,
			c_has_carryin => 0,
			c_has_ceconcat => 0,
			c_has_sclr => 0,
			c_constant_1 => 1,
			c_has_bcin => 0,
			c_has_cesel => 0,
			c_sel_width => 0,
			c_has_d => 0,
			c_has_c => 1,
			c_has_b => 1,
			c_has_a => 1,
			c_latency => 128,
			c_xdevicefamily => "spartan6",
			c_has_indep_sclr => 0,
			c_p_msb => 47,
			c_has_sclrp => 0,
			c_has_sclrm => 0,
			c_has_concat => 0,
			c_has_carrycascin => 0,
			c_reg_config => "00000000000000000011000001000100",
			c_verbosity => 0,
			c_concat_width => 48,
			c_p_lsb => 0,
			c_model_type => 0,
			c_has_sclrd => 0,
			c_has_carryout => 0,
			c_has_sclrc => 0,
			c_has_sclrb => 0,
			c_has_sclra => 0,
			c_has_indep_ce => 0,
			c_has_carrycascout => 0,
			c_opmodes => "0000001100010000000",
			c_has_acin => 0,
			c_has_bcout => 0,
			c_has_sclrsel => 0,
			c_has_pcin => 0,
			c_has_cep => 0,
			c_has_sclrconcat => 0,
			c_b_width => 18,
			c_d_width => 18,
			c_has_cem => 0,
			c_a_width => 18,
			c_has_pcout => 0,
			c_c_width => 48,
			c_test_core => 0,
			c_has_ce => 0,
			c_has_ced => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dsp48a1_ip_mul_add
		port map (
			clk => clk,
			a => a,
			b => b,
			c => c,
			p => p);
-- synthesis translate_on

END dsp48a1_ip_mul_add_a;

