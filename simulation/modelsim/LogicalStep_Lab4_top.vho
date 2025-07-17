-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "07/11/2025 18:19:00"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab4_top;

-- Design Ports Information
-- pb_n[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst_n	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \INST0|sreg4[3]~feeder_combout\ : std_logic;
SIGNAL \INST0|rst_n_filtered~0_combout\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \INST0|sreg1[0]~feeder_combout\ : std_logic;
SIGNAL \INST0|sreg1[1]~feeder_combout\ : std_logic;
SIGNAL \INST0|sreg1[2]~feeder_combout\ : std_logic;
SIGNAL \INST0|sreg1[3]~feeder_combout\ : std_logic;
SIGNAL \INST0|pb_n_filtered[1]~1_combout\ : std_logic;
SIGNAL \INST10|sreg~0_combout\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \INST0|sreg0[0]~feeder_combout\ : std_logic;
SIGNAL \INST0|sreg0[1]~feeder_combout\ : std_logic;
SIGNAL \INST0|sreg0[2]~feeder_combout\ : std_logic;
SIGNAL \INST0|sreg0[3]~feeder_combout\ : std_logic;
SIGNAL \INST0|pb_n_filtered[0]~0_combout\ : std_logic;
SIGNAL \INST6|sreg~0_combout\ : std_logic;
SIGNAL \INST7|sreg~0_combout\ : std_logic;
SIGNAL \INST7|sreg~q\ : std_logic;
SIGNAL \INST12|current_state~41_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[0]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[0]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[0]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[1]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[1]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[1]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[2]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[2]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[2]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[3]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[3]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[3]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[4]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[4]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[4]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[5]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[5]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[5]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[6]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[6]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[6]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[7]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[7]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[7]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[8]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[8]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[8]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[9]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[9]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[9]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[10]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[10]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[10]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[11]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[11]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[11]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[12]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[12]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[12]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[13]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[13]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[13]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[14]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[14]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[14]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[15]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[15]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[15]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[16]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[16]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[16]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[17]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[17]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[17]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[18]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[18]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[18]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[19]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[19]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[19]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[20]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[20]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[20]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[21]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[21]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[21]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[22]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[22]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[22]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[23]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[23]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[23]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[24]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[24]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[24]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[25]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[25]~q\ : std_logic;
SIGNAL \INST3|clk_reg_extend~0_combout\ : std_logic;
SIGNAL \INST3|clk_reg_extend~1_combout\ : std_logic;
SIGNAL \INST12|current_state~35_combout\ : std_logic;
SIGNAL \INST12|current_state.S8~q\ : std_logic;
SIGNAL \INST12|next_state.S9~0_combout\ : std_logic;
SIGNAL \INST12|current_state.S9~q\ : std_logic;
SIGNAL \INST12|next_state.S10~0_combout\ : std_logic;
SIGNAL \INST12|current_state.S10~q\ : std_logic;
SIGNAL \INST12|current_state~40_combout\ : std_logic;
SIGNAL \INST12|current_state.S11~q\ : std_logic;
SIGNAL \INST12|current_state~38_combout\ : std_logic;
SIGNAL \INST12|current_state.S12~q\ : std_logic;
SIGNAL \INST12|current_state~39_combout\ : std_logic;
SIGNAL \INST12|current_state.S13~q\ : std_logic;
SIGNAL \INST12|WideOr4~3_combout\ : std_logic;
SIGNAL \INST12|Selector1~0_combout\ : std_logic;
SIGNAL \INST12|current_state.S14~q\ : std_logic;
SIGNAL \INST11|sreg~0_combout\ : std_logic;
SIGNAL \INST11|sreg~q\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \INST14|sreg~1_combout\ : std_logic;
SIGNAL \INST14|sreg~0_combout\ : std_logic;
SIGNAL \INST3|sm_clken~0_combout\ : std_logic;
SIGNAL \INST12|current_state~43_combout\ : std_logic;
SIGNAL \INST12|current_state.S15~q\ : std_logic;
SIGNAL \INST12|next_state.S0~0_combout\ : std_logic;
SIGNAL \INST12|current_state.S0~q\ : std_logic;
SIGNAL \INST12|next_state.S1~0_combout\ : std_logic;
SIGNAL \INST12|current_state.S1~q\ : std_logic;
SIGNAL \INST12|next_state.S2~0_combout\ : std_logic;
SIGNAL \INST12|current_state.S2~q\ : std_logic;
SIGNAL \INST12|current_state~37_combout\ : std_logic;
SIGNAL \INST12|current_state.S3~q\ : std_logic;
SIGNAL \INST12|current_state~34_combout\ : std_logic;
SIGNAL \INST12|current_state.S4~q\ : std_logic;
SIGNAL \INST12|current_state~36_combout\ : std_logic;
SIGNAL \INST12|current_state.S5~q\ : std_logic;
SIGNAL \INST12|WideOr4~1_combout\ : std_logic;
SIGNAL \INST12|Selector0~0_combout\ : std_logic;
SIGNAL \INST12|current_state.S6~q\ : std_logic;
SIGNAL \INST12|current_state~42_combout\ : std_logic;
SIGNAL \INST12|current_state.S7~q\ : std_logic;
SIGNAL \INST12|WideOr8~0_combout\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \INST13|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \INST13|DOUT_TEMP[6]~0_combout\ : std_logic;
SIGNAL \INST12|WideOr5~0_combout\ : std_logic;
SIGNAL \INST12|WideOr4~0_combout\ : std_logic;
SIGNAL \INST12|WideOr4~2_combout\ : std_logic;
SIGNAL \INST12|WideOr3~0_combout\ : std_logic;
SIGNAL \DIN1~0_combout\ : std_logic;
SIGNAL \INST12|WideOr7~0_combout\ : std_logic;
SIGNAL \INST12|WideOr8~combout\ : std_logic;
SIGNAL \INST12|WideOr3~1_combout\ : std_logic;
SIGNAL \INST12|WideOr3~combout\ : std_logic;
SIGNAL \DIN1~1_combout\ : std_logic;
SIGNAL \INST3|blink_sig~0_combout\ : std_logic;
SIGNAL \INST3|blink_sig~q\ : std_logic;
SIGNAL \INST13|DOUT_TEMP[6]~1_combout\ : std_logic;
SIGNAL \INST12|WideOr10~0_combout\ : std_logic;
SIGNAL \INST12|WideOr5~combout\ : std_logic;
SIGNAL \INST12|WideOr4~combout\ : std_logic;
SIGNAL \INST13|DOUT[0]~0_combout\ : std_logic;
SIGNAL \INST13|DOUT[3]~1_combout\ : std_logic;
SIGNAL \INST13|DOUT[3]~2_combout\ : std_logic;
SIGNAL \INST13|DOUT[3]~3_combout\ : std_logic;
SIGNAL \INST0|sreg4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST6|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST10|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST14|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST2|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST3|clk_reg_extend\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST0|sreg0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST0|sreg1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST12|ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \INST12|ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \INST12|ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \INST12|ALT_INV_WideOr5~combout\ : std_logic;
SIGNAL \INST12|ALT_INV_WideOr10~0_combout\ : std_logic;
SIGNAL \INST12|ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \INST13|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);
\INST12|ALT_INV_WideOr8~combout\ <= NOT \INST12|WideOr8~combout\;
\INST12|ALT_INV_WideOr3~combout\ <= NOT \INST12|WideOr3~combout\;
\INST12|ALT_INV_WideOr4~combout\ <= NOT \INST12|WideOr4~combout\;
\INST12|ALT_INV_WideOr5~combout\ <= NOT \INST12|WideOr5~combout\;
\INST12|ALT_INV_WideOr10~0_combout\ <= NOT \INST12|WideOr10~0_combout\;
\INST12|ALT_INV_WideOr7~0_combout\ <= NOT \INST12|WideOr7~0_combout\;
\INST13|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \INST13|clk_proc:COUNT[10]~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y21_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST13|DOUT_TEMP[6]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST12|ALT_INV_WideOr7~0_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST7|sreg~q\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST12|ALT_INV_WideOr10~0_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST11|sreg~q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST12|ALT_INV_WideOr5~combout\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST12|ALT_INV_WideOr4~combout\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST12|ALT_INV_WideOr3~combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST12|ALT_INV_WideOr8~combout\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST13|DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST13|DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST13|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST13|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y2_N15
\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X13_Y13_N23
\INST0|sreg4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg4\(0));

-- Location: FF_X13_Y13_N27
\INST0|sreg4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \INST0|sreg4\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg4\(1));

-- Location: FF_X13_Y13_N19
\INST0|sreg4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \INST0|sreg4\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg4\(2));

-- Location: LCCOMB_X13_Y13_N24
\INST0|sreg4[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|sreg4[3]~feeder_combout\ = \INST0|sreg4\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST0|sreg4\(2),
	combout => \INST0|sreg4[3]~feeder_combout\);

-- Location: FF_X13_Y13_N25
\INST0|sreg4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST0|sreg4[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg4\(3));

-- Location: LCCOMB_X13_Y13_N8
\INST0|rst_n_filtered~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|rst_n_filtered~0_combout\ = (!\INST0|sreg4\(1) & (!\INST0|sreg4\(3) & !\INST0|sreg4\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST0|sreg4\(1),
	datab => \INST0|sreg4\(3),
	datad => \INST0|sreg4\(2),
	combout => \INST0|rst_n_filtered~0_combout\);

-- Location: FF_X13_Y13_N9
\INST2|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST0|rst_n_filtered~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|sreg\(0));

-- Location: FF_X13_Y13_N15
\INST2|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \INST2|sreg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|sreg\(1));

-- Location: IOIBUF_X9_Y0_N22
\pb_n[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(1),
	o => \pb_n[1]~input_o\);

-- Location: LCCOMB_X11_Y14_N10
\INST0|sreg1[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|sreg1[0]~feeder_combout\ = \pb_n[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pb_n[1]~input_o\,
	combout => \INST0|sreg1[0]~feeder_combout\);

-- Location: FF_X11_Y14_N11
\INST0|sreg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST0|sreg1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg1\(0));

-- Location: LCCOMB_X11_Y14_N18
\INST0|sreg1[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|sreg1[1]~feeder_combout\ = \INST0|sreg1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST0|sreg1\(0),
	combout => \INST0|sreg1[1]~feeder_combout\);

-- Location: FF_X11_Y14_N19
\INST0|sreg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST0|sreg1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg1\(1));

-- Location: LCCOMB_X11_Y14_N4
\INST0|sreg1[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|sreg1[2]~feeder_combout\ = \INST0|sreg1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST0|sreg1\(1),
	combout => \INST0|sreg1[2]~feeder_combout\);

-- Location: FF_X11_Y14_N5
\INST0|sreg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST0|sreg1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg1\(2));

-- Location: LCCOMB_X11_Y14_N6
\INST0|sreg1[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|sreg1[3]~feeder_combout\ = \INST0|sreg1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST0|sreg1\(2),
	combout => \INST0|sreg1[3]~feeder_combout\);

-- Location: FF_X11_Y14_N7
\INST0|sreg1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST0|sreg1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg1\(3));

-- Location: LCCOMB_X11_Y14_N30
\INST0|pb_n_filtered[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|pb_n_filtered[1]~1_combout\ = (!\INST0|sreg1\(3) & (!\INST0|sreg1\(2) & !\INST0|sreg1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST0|sreg1\(3),
	datac => \INST0|sreg1\(2),
	datad => \INST0|sreg1\(1),
	combout => \INST0|pb_n_filtered[1]~1_combout\);

-- Location: FF_X11_Y14_N31
\INST10|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST0|pb_n_filtered[1]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|sreg\(0));

-- Location: LCCOMB_X11_Y13_N10
\INST10|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|sreg~0_combout\ = (!\INST2|sreg\(1) & \INST10|sreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2|sreg\(1),
	datac => \INST10|sreg\(0),
	combout => \INST10|sreg~0_combout\);

-- Location: FF_X11_Y13_N11
\INST10|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST10|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|sreg\(1));

-- Location: IOIBUF_X9_Y0_N1
\pb_n[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(0),
	o => \pb_n[0]~input_o\);

-- Location: LCCOMB_X11_Y14_N20
\INST0|sreg0[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|sreg0[0]~feeder_combout\ = \pb_n[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pb_n[0]~input_o\,
	combout => \INST0|sreg0[0]~feeder_combout\);

-- Location: FF_X11_Y14_N21
\INST0|sreg0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST0|sreg0[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg0\(0));

-- Location: LCCOMB_X11_Y14_N28
\INST0|sreg0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|sreg0[1]~feeder_combout\ = \INST0|sreg0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST0|sreg0\(0),
	combout => \INST0|sreg0[1]~feeder_combout\);

-- Location: FF_X11_Y14_N29
\INST0|sreg0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST0|sreg0[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg0\(1));

-- Location: LCCOMB_X11_Y14_N22
\INST0|sreg0[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|sreg0[2]~feeder_combout\ = \INST0|sreg0\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST0|sreg0\(1),
	combout => \INST0|sreg0[2]~feeder_combout\);

-- Location: FF_X11_Y14_N23
\INST0|sreg0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST0|sreg0[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg0\(2));

-- Location: LCCOMB_X11_Y14_N12
\INST0|sreg0[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|sreg0[3]~feeder_combout\ = \INST0|sreg0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST0|sreg0\(2),
	combout => \INST0|sreg0[3]~feeder_combout\);

-- Location: FF_X11_Y14_N13
\INST0|sreg0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST0|sreg0[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg0\(3));

-- Location: LCCOMB_X11_Y14_N8
\INST0|pb_n_filtered[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|pb_n_filtered[0]~0_combout\ = (!\INST0|sreg0\(3) & (!\INST0|sreg0\(2) & !\INST0|sreg0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST0|sreg0\(3),
	datac => \INST0|sreg0\(2),
	datad => \INST0|sreg0\(1),
	combout => \INST0|pb_n_filtered[0]~0_combout\);

-- Location: FF_X11_Y14_N9
\INST6|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST0|pb_n_filtered[0]~0_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|sreg\(0));

-- Location: LCCOMB_X11_Y13_N24
\INST6|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|sreg~0_combout\ = (!\INST2|sreg\(1) & \INST6|sreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2|sreg\(1),
	datac => \INST6|sreg\(0),
	combout => \INST6|sreg~0_combout\);

-- Location: FF_X11_Y13_N25
\INST6|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST6|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|sreg\(1));

-- Location: LCCOMB_X11_Y13_N4
\INST7|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|sreg~0_combout\ = (!\INST12|current_state.S6~q\ & (!\INST2|sreg\(1) & ((\INST7|sreg~q\) # (\INST6|sreg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S6~q\,
	datab => \INST2|sreg\(1),
	datac => \INST7|sreg~q\,
	datad => \INST6|sreg\(1),
	combout => \INST7|sreg~0_combout\);

-- Location: FF_X11_Y13_N5
\INST7|sreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|sreg~q\);

-- Location: LCCOMB_X12_Y13_N24
\INST12|current_state~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|current_state~41_combout\ = (\INST12|current_state.S7~q\ & !\INST2|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST12|current_state.S7~q\,
	datac => \INST2|sreg\(1),
	combout => \INST12|current_state~41_combout\);

-- Location: LCCOMB_X14_Y14_N6
\INST3|clk_divider:counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[0]~1_combout\ = \INST3|clk_divider:counter[0]~q\ $ (VCC)
-- \INST3|clk_divider:counter[0]~2\ = CARRY(\INST3|clk_divider:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[0]~q\,
	datad => VCC,
	combout => \INST3|clk_divider:counter[0]~1_combout\,
	cout => \INST3|clk_divider:counter[0]~2\);

-- Location: FF_X14_Y14_N7
\INST3|clk_divider:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[0]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[0]~q\);

-- Location: LCCOMB_X14_Y14_N8
\INST3|clk_divider:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[1]~1_combout\ = (\INST3|clk_divider:counter[1]~q\ & (!\INST3|clk_divider:counter[0]~2\)) # (!\INST3|clk_divider:counter[1]~q\ & ((\INST3|clk_divider:counter[0]~2\) # (GND)))
-- \INST3|clk_divider:counter[1]~2\ = CARRY((!\INST3|clk_divider:counter[0]~2\) # (!\INST3|clk_divider:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_divider:counter[1]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[0]~2\,
	combout => \INST3|clk_divider:counter[1]~1_combout\,
	cout => \INST3|clk_divider:counter[1]~2\);

-- Location: FF_X14_Y14_N9
\INST3|clk_divider:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[1]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[1]~q\);

-- Location: LCCOMB_X14_Y14_N10
\INST3|clk_divider:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[2]~1_combout\ = (\INST3|clk_divider:counter[2]~q\ & (\INST3|clk_divider:counter[1]~2\ $ (GND))) # (!\INST3|clk_divider:counter[2]~q\ & (!\INST3|clk_divider:counter[1]~2\ & VCC))
-- \INST3|clk_divider:counter[2]~2\ = CARRY((\INST3|clk_divider:counter[2]~q\ & !\INST3|clk_divider:counter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[2]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[1]~2\,
	combout => \INST3|clk_divider:counter[2]~1_combout\,
	cout => \INST3|clk_divider:counter[2]~2\);

-- Location: FF_X14_Y14_N11
\INST3|clk_divider:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[2]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[2]~q\);

-- Location: LCCOMB_X14_Y14_N12
\INST3|clk_divider:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[3]~1_combout\ = (\INST3|clk_divider:counter[3]~q\ & (!\INST3|clk_divider:counter[2]~2\)) # (!\INST3|clk_divider:counter[3]~q\ & ((\INST3|clk_divider:counter[2]~2\) # (GND)))
-- \INST3|clk_divider:counter[3]~2\ = CARRY((!\INST3|clk_divider:counter[2]~2\) # (!\INST3|clk_divider:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[2]~2\,
	combout => \INST3|clk_divider:counter[3]~1_combout\,
	cout => \INST3|clk_divider:counter[3]~2\);

-- Location: FF_X14_Y14_N13
\INST3|clk_divider:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[3]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[3]~q\);

-- Location: LCCOMB_X14_Y14_N14
\INST3|clk_divider:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[4]~1_combout\ = (\INST3|clk_divider:counter[4]~q\ & (\INST3|clk_divider:counter[3]~2\ $ (GND))) # (!\INST3|clk_divider:counter[4]~q\ & (!\INST3|clk_divider:counter[3]~2\ & VCC))
-- \INST3|clk_divider:counter[4]~2\ = CARRY((\INST3|clk_divider:counter[4]~q\ & !\INST3|clk_divider:counter[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_divider:counter[4]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[3]~2\,
	combout => \INST3|clk_divider:counter[4]~1_combout\,
	cout => \INST3|clk_divider:counter[4]~2\);

-- Location: FF_X14_Y14_N15
\INST3|clk_divider:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[4]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[4]~q\);

-- Location: LCCOMB_X14_Y14_N16
\INST3|clk_divider:counter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[5]~1_combout\ = (\INST3|clk_divider:counter[5]~q\ & (!\INST3|clk_divider:counter[4]~2\)) # (!\INST3|clk_divider:counter[5]~q\ & ((\INST3|clk_divider:counter[4]~2\) # (GND)))
-- \INST3|clk_divider:counter[5]~2\ = CARRY((!\INST3|clk_divider:counter[4]~2\) # (!\INST3|clk_divider:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_divider:counter[5]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[4]~2\,
	combout => \INST3|clk_divider:counter[5]~1_combout\,
	cout => \INST3|clk_divider:counter[5]~2\);

-- Location: FF_X14_Y14_N17
\INST3|clk_divider:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[5]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[5]~q\);

-- Location: LCCOMB_X14_Y14_N18
\INST3|clk_divider:counter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[6]~1_combout\ = (\INST3|clk_divider:counter[6]~q\ & (\INST3|clk_divider:counter[5]~2\ $ (GND))) # (!\INST3|clk_divider:counter[6]~q\ & (!\INST3|clk_divider:counter[5]~2\ & VCC))
-- \INST3|clk_divider:counter[6]~2\ = CARRY((\INST3|clk_divider:counter[6]~q\ & !\INST3|clk_divider:counter[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_divider:counter[6]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[5]~2\,
	combout => \INST3|clk_divider:counter[6]~1_combout\,
	cout => \INST3|clk_divider:counter[6]~2\);

-- Location: FF_X14_Y14_N19
\INST3|clk_divider:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[6]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[6]~q\);

-- Location: LCCOMB_X14_Y14_N20
\INST3|clk_divider:counter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[7]~1_combout\ = (\INST3|clk_divider:counter[7]~q\ & (!\INST3|clk_divider:counter[6]~2\)) # (!\INST3|clk_divider:counter[7]~q\ & ((\INST3|clk_divider:counter[6]~2\) # (GND)))
-- \INST3|clk_divider:counter[7]~2\ = CARRY((!\INST3|clk_divider:counter[6]~2\) # (!\INST3|clk_divider:counter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_divider:counter[7]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[6]~2\,
	combout => \INST3|clk_divider:counter[7]~1_combout\,
	cout => \INST3|clk_divider:counter[7]~2\);

-- Location: FF_X14_Y14_N21
\INST3|clk_divider:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[7]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[7]~q\);

-- Location: LCCOMB_X14_Y14_N22
\INST3|clk_divider:counter[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[8]~1_combout\ = (\INST3|clk_divider:counter[8]~q\ & (\INST3|clk_divider:counter[7]~2\ $ (GND))) # (!\INST3|clk_divider:counter[8]~q\ & (!\INST3|clk_divider:counter[7]~2\ & VCC))
-- \INST3|clk_divider:counter[8]~2\ = CARRY((\INST3|clk_divider:counter[8]~q\ & !\INST3|clk_divider:counter[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[8]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[7]~2\,
	combout => \INST3|clk_divider:counter[8]~1_combout\,
	cout => \INST3|clk_divider:counter[8]~2\);

-- Location: FF_X14_Y14_N23
\INST3|clk_divider:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[8]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[8]~q\);

-- Location: LCCOMB_X14_Y14_N24
\INST3|clk_divider:counter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[9]~1_combout\ = (\INST3|clk_divider:counter[9]~q\ & (!\INST3|clk_divider:counter[8]~2\)) # (!\INST3|clk_divider:counter[9]~q\ & ((\INST3|clk_divider:counter[8]~2\) # (GND)))
-- \INST3|clk_divider:counter[9]~2\ = CARRY((!\INST3|clk_divider:counter[8]~2\) # (!\INST3|clk_divider:counter[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_divider:counter[9]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[8]~2\,
	combout => \INST3|clk_divider:counter[9]~1_combout\,
	cout => \INST3|clk_divider:counter[9]~2\);

-- Location: FF_X14_Y14_N25
\INST3|clk_divider:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[9]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[9]~q\);

-- Location: LCCOMB_X14_Y14_N26
\INST3|clk_divider:counter[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[10]~1_combout\ = (\INST3|clk_divider:counter[10]~q\ & (\INST3|clk_divider:counter[9]~2\ $ (GND))) # (!\INST3|clk_divider:counter[10]~q\ & (!\INST3|clk_divider:counter[9]~2\ & VCC))
-- \INST3|clk_divider:counter[10]~2\ = CARRY((\INST3|clk_divider:counter[10]~q\ & !\INST3|clk_divider:counter[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[10]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[9]~2\,
	combout => \INST3|clk_divider:counter[10]~1_combout\,
	cout => \INST3|clk_divider:counter[10]~2\);

-- Location: FF_X14_Y14_N27
\INST3|clk_divider:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[10]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[10]~q\);

-- Location: LCCOMB_X14_Y14_N28
\INST3|clk_divider:counter[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[11]~1_combout\ = (\INST3|clk_divider:counter[11]~q\ & (!\INST3|clk_divider:counter[10]~2\)) # (!\INST3|clk_divider:counter[11]~q\ & ((\INST3|clk_divider:counter[10]~2\) # (GND)))
-- \INST3|clk_divider:counter[11]~2\ = CARRY((!\INST3|clk_divider:counter[10]~2\) # (!\INST3|clk_divider:counter[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_divider:counter[11]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[10]~2\,
	combout => \INST3|clk_divider:counter[11]~1_combout\,
	cout => \INST3|clk_divider:counter[11]~2\);

-- Location: FF_X14_Y14_N29
\INST3|clk_divider:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[11]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[11]~q\);

-- Location: LCCOMB_X14_Y14_N30
\INST3|clk_divider:counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[12]~1_combout\ = (\INST3|clk_divider:counter[12]~q\ & (\INST3|clk_divider:counter[11]~2\ $ (GND))) # (!\INST3|clk_divider:counter[12]~q\ & (!\INST3|clk_divider:counter[11]~2\ & VCC))
-- \INST3|clk_divider:counter[12]~2\ = CARRY((\INST3|clk_divider:counter[12]~q\ & !\INST3|clk_divider:counter[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[12]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[11]~2\,
	combout => \INST3|clk_divider:counter[12]~1_combout\,
	cout => \INST3|clk_divider:counter[12]~2\);

-- Location: FF_X14_Y14_N31
\INST3|clk_divider:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[12]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[12]~q\);

-- Location: LCCOMB_X14_Y13_N0
\INST3|clk_divider:counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[13]~1_combout\ = (\INST3|clk_divider:counter[13]~q\ & (!\INST3|clk_divider:counter[12]~2\)) # (!\INST3|clk_divider:counter[13]~q\ & ((\INST3|clk_divider:counter[12]~2\) # (GND)))
-- \INST3|clk_divider:counter[13]~2\ = CARRY((!\INST3|clk_divider:counter[12]~2\) # (!\INST3|clk_divider:counter[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_divider:counter[13]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[12]~2\,
	combout => \INST3|clk_divider:counter[13]~1_combout\,
	cout => \INST3|clk_divider:counter[13]~2\);

-- Location: FF_X14_Y13_N1
\INST3|clk_divider:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[13]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[13]~q\);

-- Location: LCCOMB_X14_Y13_N2
\INST3|clk_divider:counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[14]~1_combout\ = (\INST3|clk_divider:counter[14]~q\ & (\INST3|clk_divider:counter[13]~2\ $ (GND))) # (!\INST3|clk_divider:counter[14]~q\ & (!\INST3|clk_divider:counter[13]~2\ & VCC))
-- \INST3|clk_divider:counter[14]~2\ = CARRY((\INST3|clk_divider:counter[14]~q\ & !\INST3|clk_divider:counter[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_divider:counter[14]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[13]~2\,
	combout => \INST3|clk_divider:counter[14]~1_combout\,
	cout => \INST3|clk_divider:counter[14]~2\);

-- Location: FF_X14_Y13_N3
\INST3|clk_divider:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[14]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[14]~q\);

-- Location: LCCOMB_X14_Y13_N4
\INST3|clk_divider:counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[15]~1_combout\ = (\INST3|clk_divider:counter[15]~q\ & (!\INST3|clk_divider:counter[14]~2\)) # (!\INST3|clk_divider:counter[15]~q\ & ((\INST3|clk_divider:counter[14]~2\) # (GND)))
-- \INST3|clk_divider:counter[15]~2\ = CARRY((!\INST3|clk_divider:counter[14]~2\) # (!\INST3|clk_divider:counter[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_divider:counter[15]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[14]~2\,
	combout => \INST3|clk_divider:counter[15]~1_combout\,
	cout => \INST3|clk_divider:counter[15]~2\);

-- Location: FF_X14_Y13_N5
\INST3|clk_divider:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[15]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[15]~q\);

-- Location: LCCOMB_X14_Y13_N6
\INST3|clk_divider:counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[16]~1_combout\ = (\INST3|clk_divider:counter[16]~q\ & (\INST3|clk_divider:counter[15]~2\ $ (GND))) # (!\INST3|clk_divider:counter[16]~q\ & (!\INST3|clk_divider:counter[15]~2\ & VCC))
-- \INST3|clk_divider:counter[16]~2\ = CARRY((\INST3|clk_divider:counter[16]~q\ & !\INST3|clk_divider:counter[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[16]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[15]~2\,
	combout => \INST3|clk_divider:counter[16]~1_combout\,
	cout => \INST3|clk_divider:counter[16]~2\);

-- Location: FF_X14_Y13_N7
\INST3|clk_divider:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[16]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[16]~q\);

-- Location: LCCOMB_X14_Y13_N8
\INST3|clk_divider:counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[17]~1_combout\ = (\INST3|clk_divider:counter[17]~q\ & (!\INST3|clk_divider:counter[16]~2\)) # (!\INST3|clk_divider:counter[17]~q\ & ((\INST3|clk_divider:counter[16]~2\) # (GND)))
-- \INST3|clk_divider:counter[17]~2\ = CARRY((!\INST3|clk_divider:counter[16]~2\) # (!\INST3|clk_divider:counter[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_divider:counter[17]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[16]~2\,
	combout => \INST3|clk_divider:counter[17]~1_combout\,
	cout => \INST3|clk_divider:counter[17]~2\);

-- Location: FF_X14_Y13_N9
\INST3|clk_divider:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[17]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[17]~q\);

-- Location: LCCOMB_X14_Y13_N10
\INST3|clk_divider:counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[18]~1_combout\ = (\INST3|clk_divider:counter[18]~q\ & (\INST3|clk_divider:counter[17]~2\ $ (GND))) # (!\INST3|clk_divider:counter[18]~q\ & (!\INST3|clk_divider:counter[17]~2\ & VCC))
-- \INST3|clk_divider:counter[18]~2\ = CARRY((\INST3|clk_divider:counter[18]~q\ & !\INST3|clk_divider:counter[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[18]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[17]~2\,
	combout => \INST3|clk_divider:counter[18]~1_combout\,
	cout => \INST3|clk_divider:counter[18]~2\);

-- Location: FF_X14_Y13_N11
\INST3|clk_divider:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[18]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[18]~q\);

-- Location: LCCOMB_X14_Y13_N12
\INST3|clk_divider:counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[19]~1_combout\ = (\INST3|clk_divider:counter[19]~q\ & (!\INST3|clk_divider:counter[18]~2\)) # (!\INST3|clk_divider:counter[19]~q\ & ((\INST3|clk_divider:counter[18]~2\) # (GND)))
-- \INST3|clk_divider:counter[19]~2\ = CARRY((!\INST3|clk_divider:counter[18]~2\) # (!\INST3|clk_divider:counter[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[19]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[18]~2\,
	combout => \INST3|clk_divider:counter[19]~1_combout\,
	cout => \INST3|clk_divider:counter[19]~2\);

-- Location: FF_X14_Y13_N13
\INST3|clk_divider:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[19]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[19]~q\);

-- Location: LCCOMB_X14_Y13_N14
\INST3|clk_divider:counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[20]~1_combout\ = (\INST3|clk_divider:counter[20]~q\ & (\INST3|clk_divider:counter[19]~2\ $ (GND))) # (!\INST3|clk_divider:counter[20]~q\ & (!\INST3|clk_divider:counter[19]~2\ & VCC))
-- \INST3|clk_divider:counter[20]~2\ = CARRY((\INST3|clk_divider:counter[20]~q\ & !\INST3|clk_divider:counter[19]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_divider:counter[20]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[19]~2\,
	combout => \INST3|clk_divider:counter[20]~1_combout\,
	cout => \INST3|clk_divider:counter[20]~2\);

-- Location: FF_X14_Y13_N15
\INST3|clk_divider:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[20]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[20]~q\);

-- Location: LCCOMB_X14_Y13_N16
\INST3|clk_divider:counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[21]~1_combout\ = (\INST3|clk_divider:counter[21]~q\ & (!\INST3|clk_divider:counter[20]~2\)) # (!\INST3|clk_divider:counter[21]~q\ & ((\INST3|clk_divider:counter[20]~2\) # (GND)))
-- \INST3|clk_divider:counter[21]~2\ = CARRY((!\INST3|clk_divider:counter[20]~2\) # (!\INST3|clk_divider:counter[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_divider:counter[21]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[20]~2\,
	combout => \INST3|clk_divider:counter[21]~1_combout\,
	cout => \INST3|clk_divider:counter[21]~2\);

-- Location: FF_X14_Y13_N17
\INST3|clk_divider:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[21]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[21]~q\);

-- Location: LCCOMB_X14_Y13_N18
\INST3|clk_divider:counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[22]~1_combout\ = (\INST3|clk_divider:counter[22]~q\ & (\INST3|clk_divider:counter[21]~2\ $ (GND))) # (!\INST3|clk_divider:counter[22]~q\ & (!\INST3|clk_divider:counter[21]~2\ & VCC))
-- \INST3|clk_divider:counter[22]~2\ = CARRY((\INST3|clk_divider:counter[22]~q\ & !\INST3|clk_divider:counter[21]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_divider:counter[22]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[21]~2\,
	combout => \INST3|clk_divider:counter[22]~1_combout\,
	cout => \INST3|clk_divider:counter[22]~2\);

-- Location: FF_X14_Y13_N19
\INST3|clk_divider:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[22]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[22]~q\);

-- Location: LCCOMB_X14_Y13_N20
\INST3|clk_divider:counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[23]~1_combout\ = (\INST3|clk_divider:counter[23]~q\ & (!\INST3|clk_divider:counter[22]~2\)) # (!\INST3|clk_divider:counter[23]~q\ & ((\INST3|clk_divider:counter[22]~2\) # (GND)))
-- \INST3|clk_divider:counter[23]~2\ = CARRY((!\INST3|clk_divider:counter[22]~2\) # (!\INST3|clk_divider:counter[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_divider:counter[23]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[22]~2\,
	combout => \INST3|clk_divider:counter[23]~1_combout\,
	cout => \INST3|clk_divider:counter[23]~2\);

-- Location: FF_X14_Y13_N21
\INST3|clk_divider:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[23]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[23]~q\);

-- Location: LCCOMB_X14_Y13_N22
\INST3|clk_divider:counter[24]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[24]~1_combout\ = (\INST3|clk_divider:counter[24]~q\ & (\INST3|clk_divider:counter[23]~2\ $ (GND))) # (!\INST3|clk_divider:counter[24]~q\ & (!\INST3|clk_divider:counter[23]~2\ & VCC))
-- \INST3|clk_divider:counter[24]~2\ = CARRY((\INST3|clk_divider:counter[24]~q\ & !\INST3|clk_divider:counter[23]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[24]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[23]~2\,
	combout => \INST3|clk_divider:counter[24]~1_combout\,
	cout => \INST3|clk_divider:counter[24]~2\);

-- Location: FF_X14_Y13_N23
\INST3|clk_divider:counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[24]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[24]~q\);

-- Location: LCCOMB_X14_Y13_N24
\INST3|clk_divider:counter[25]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[25]~1_combout\ = \INST3|clk_divider:counter[24]~2\ $ (\INST3|clk_divider:counter[25]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \INST3|clk_divider:counter[25]~q\,
	cin => \INST3|clk_divider:counter[24]~2\,
	combout => \INST3|clk_divider:counter[25]~1_combout\);

-- Location: FF_X14_Y13_N25
\INST3|clk_divider:counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_divider:counter[25]~1_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[25]~q\);

-- Location: LCCOMB_X14_Y13_N26
\INST3|clk_reg_extend~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_reg_extend~0_combout\ = (!\INST2|sreg\(1) & \INST3|clk_divider:counter[25]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|sreg\(1),
	datad => \INST3|clk_divider:counter[25]~q\,
	combout => \INST3|clk_reg_extend~0_combout\);

-- Location: FF_X14_Y13_N27
\INST3|clk_reg_extend[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_reg_extend~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_reg_extend\(0));

-- Location: LCCOMB_X14_Y13_N28
\INST3|clk_reg_extend~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_reg_extend~1_combout\ = (\INST3|clk_reg_extend\(0) & !\INST2|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST3|clk_reg_extend\(0),
	datad => \INST2|sreg\(1),
	combout => \INST3|clk_reg_extend~1_combout\);

-- Location: FF_X14_Y13_N29
\INST3|clk_reg_extend[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|clk_reg_extend~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_reg_extend\(1));

-- Location: LCCOMB_X13_Y13_N2
\INST12|current_state~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|current_state~35_combout\ = (\INST2|sreg\(1)) # ((!\INST3|clk_reg_extend\(1) & \INST3|clk_reg_extend\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_reg_extend\(1),
	datac => \INST2|sreg\(1),
	datad => \INST3|clk_reg_extend\(0),
	combout => \INST12|current_state~35_combout\);

-- Location: FF_X12_Y13_N25
\INST12|current_state.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST12|current_state~41_combout\,
	ena => \INST12|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S8~q\);

-- Location: LCCOMB_X12_Y13_N2
\INST12|next_state.S9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|next_state.S9~0_combout\ = (\INST12|current_state.S8~q\ & ((\INST11|sreg~q\) # (!\INST7|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST11|sreg~q\,
	datac => \INST7|sreg~q\,
	datad => \INST12|current_state.S8~q\,
	combout => \INST12|next_state.S9~0_combout\);

-- Location: FF_X12_Y13_N3
\INST12|current_state.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST12|next_state.S9~0_combout\,
	sclr => \INST2|sreg\(1),
	ena => \INST12|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S9~q\);

-- Location: LCCOMB_X12_Y13_N8
\INST12|next_state.S10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|next_state.S10~0_combout\ = (\INST12|current_state.S9~q\ & ((\INST11|sreg~q\) # (!\INST7|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST11|sreg~q\,
	datac => \INST7|sreg~q\,
	datad => \INST12|current_state.S9~q\,
	combout => \INST12|next_state.S10~0_combout\);

-- Location: FF_X12_Y13_N9
\INST12|current_state.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST12|next_state.S10~0_combout\,
	sclr => \INST2|sreg\(1),
	ena => \INST12|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S10~q\);

-- Location: LCCOMB_X12_Y13_N4
\INST12|current_state~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|current_state~40_combout\ = (!\INST2|sreg\(1) & \INST12|current_state.S10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2|sreg\(1),
	datac => \INST12|current_state.S10~q\,
	combout => \INST12|current_state~40_combout\);

-- Location: FF_X12_Y13_N5
\INST12|current_state.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST12|current_state~40_combout\,
	ena => \INST12|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S11~q\);

-- Location: LCCOMB_X12_Y13_N0
\INST12|current_state~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|current_state~38_combout\ = (!\INST2|sreg\(1) & \INST12|current_state.S11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2|sreg\(1),
	datac => \INST12|current_state.S11~q\,
	combout => \INST12|current_state~38_combout\);

-- Location: FF_X12_Y13_N1
\INST12|current_state.S12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST12|current_state~38_combout\,
	ena => \INST12|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S12~q\);

-- Location: LCCOMB_X12_Y13_N22
\INST12|current_state~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|current_state~39_combout\ = (\INST12|current_state.S12~q\ & !\INST2|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST12|current_state.S12~q\,
	datac => \INST2|sreg\(1),
	combout => \INST12|current_state~39_combout\);

-- Location: FF_X12_Y13_N23
\INST12|current_state.S13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST12|current_state~39_combout\,
	ena => \INST12|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S13~q\);

-- Location: LCCOMB_X13_Y13_N6
\INST12|WideOr4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|WideOr4~3_combout\ = (!\INST12|current_state.S9~q\ & !\INST12|current_state.S8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S9~q\,
	datad => \INST12|current_state.S8~q\,
	combout => \INST12|WideOr4~3_combout\);

-- Location: LCCOMB_X12_Y13_N18
\INST12|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector1~0_combout\ = (\INST12|current_state.S13~q\) # ((!\INST11|sreg~q\ & (\INST7|sreg~q\ & !\INST12|WideOr4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S13~q\,
	datab => \INST11|sreg~q\,
	datac => \INST7|sreg~q\,
	datad => \INST12|WideOr4~3_combout\,
	combout => \INST12|Selector1~0_combout\);

-- Location: FF_X12_Y13_N19
\INST12|current_state.S14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST12|Selector1~0_combout\,
	sclr => \INST2|sreg\(1),
	ena => \INST12|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S14~q\);

-- Location: LCCOMB_X11_Y13_N18
\INST11|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|sreg~0_combout\ = (!\INST2|sreg\(1) & (!\INST12|current_state.S14~q\ & ((\INST10|sreg\(1)) # (\INST11|sreg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|sreg\(1),
	datab => \INST2|sreg\(1),
	datac => \INST11|sreg~q\,
	datad => \INST12|current_state.S14~q\,
	combout => \INST11|sreg~0_combout\);

-- Location: FF_X11_Y13_N19
\INST11|sreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST11|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST11|sreg~q\);

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X12_Y13_N16
\INST14|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST14|sreg~1_combout\ = (!\INST2|sreg\(1) & \sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2|sreg\(1),
	datac => \sw[0]~input_o\,
	combout => \INST14|sreg~1_combout\);

-- Location: FF_X12_Y13_N17
\INST14|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST14|sreg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST14|sreg\(0));

-- Location: LCCOMB_X13_Y13_N4
\INST14|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST14|sreg~0_combout\ = (!\INST2|sreg\(1) & \INST14|sreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2|sreg\(1),
	datac => \INST14|sreg\(0),
	combout => \INST14|sreg~0_combout\);

-- Location: FF_X13_Y13_N5
\INST14|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST14|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST14|sreg\(1));

-- Location: LCCOMB_X13_Y13_N26
\INST3|sm_clken~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|sm_clken~0_combout\ = (!\INST3|clk_reg_extend\(1) & \INST3|clk_reg_extend\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|clk_reg_extend\(1),
	datad => \INST3|clk_reg_extend\(0),
	combout => \INST3|sm_clken~0_combout\);

-- Location: LCCOMB_X12_Y13_N20
\INST12|current_state~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|current_state~43_combout\ = (\INST3|sm_clken~0_combout\ & ((\INST12|current_state.S14~q\) # ((\INST14|sreg\(1) & \INST12|current_state.S15~q\)))) # (!\INST3|sm_clken~0_combout\ & (((\INST12|current_state.S15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST14|sreg\(1),
	datab => \INST12|current_state.S14~q\,
	datac => \INST12|current_state.S15~q\,
	datad => \INST3|sm_clken~0_combout\,
	combout => \INST12|current_state~43_combout\);

-- Location: FF_X12_Y13_N21
\INST12|current_state.S15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST12|current_state~43_combout\,
	sclr => \INST2|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S15~q\);

-- Location: LCCOMB_X12_Y13_N12
\INST12|next_state.S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|next_state.S0~0_combout\ = (\INST14|sreg\(1)) # (!\INST12|current_state.S15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST12|current_state.S15~q\,
	datad => \INST14|sreg\(1),
	combout => \INST12|next_state.S0~0_combout\);

-- Location: FF_X12_Y13_N13
\INST12|current_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST12|next_state.S0~0_combout\,
	sclr => \INST2|sreg\(1),
	ena => \INST12|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S0~q\);

-- Location: LCCOMB_X11_Y13_N28
\INST12|next_state.S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|next_state.S1~0_combout\ = (!\INST12|current_state.S0~q\ & ((\INST7|sreg~q\) # (!\INST11|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST7|sreg~q\,
	datac => \INST12|current_state.S0~q\,
	datad => \INST11|sreg~q\,
	combout => \INST12|next_state.S1~0_combout\);

-- Location: FF_X11_Y13_N29
\INST12|current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST12|next_state.S1~0_combout\,
	sclr => \INST2|sreg\(1),
	ena => \INST12|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S1~q\);

-- Location: LCCOMB_X11_Y13_N20
\INST12|next_state.S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|next_state.S2~0_combout\ = (\INST12|current_state.S1~q\ & ((\INST7|sreg~q\) # (!\INST11|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST11|sreg~q\,
	datac => \INST7|sreg~q\,
	datad => \INST12|current_state.S1~q\,
	combout => \INST12|next_state.S2~0_combout\);

-- Location: FF_X11_Y13_N21
\INST12|current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST12|next_state.S2~0_combout\,
	sclr => \INST2|sreg\(1),
	ena => \INST12|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S2~q\);

-- Location: LCCOMB_X12_Y13_N6
\INST12|current_state~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|current_state~37_combout\ = (\INST12|current_state.S2~q\ & !\INST2|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST12|current_state.S2~q\,
	datac => \INST2|sreg\(1),
	combout => \INST12|current_state~37_combout\);

-- Location: FF_X12_Y13_N7
\INST12|current_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST12|current_state~37_combout\,
	ena => \INST12|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S3~q\);

-- Location: LCCOMB_X11_Y13_N26
\INST12|current_state~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|current_state~34_combout\ = (\INST12|current_state.S3~q\ & !\INST2|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S3~q\,
	datac => \INST2|sreg\(1),
	combout => \INST12|current_state~34_combout\);

-- Location: FF_X11_Y13_N27
\INST12|current_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST12|current_state~34_combout\,
	ena => \INST12|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S4~q\);

-- Location: LCCOMB_X11_Y13_N8
\INST12|current_state~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|current_state~36_combout\ = (!\INST2|sreg\(1) & \INST12|current_state.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2|sreg\(1),
	datac => \INST12|current_state.S4~q\,
	combout => \INST12|current_state~36_combout\);

-- Location: FF_X11_Y13_N9
\INST12|current_state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST12|current_state~36_combout\,
	ena => \INST12|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S5~q\);

-- Location: LCCOMB_X11_Y13_N2
\INST12|WideOr4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|WideOr4~1_combout\ = (\INST12|current_state.S0~q\ & !\INST12|current_state.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST12|current_state.S0~q\,
	datad => \INST12|current_state.S1~q\,
	combout => \INST12|WideOr4~1_combout\);

-- Location: LCCOMB_X11_Y13_N14
\INST12|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector0~0_combout\ = (\INST12|current_state.S5~q\) # ((\INST11|sreg~q\ & (!\INST7|sreg~q\ & !\INST12|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST11|sreg~q\,
	datab => \INST12|current_state.S5~q\,
	datac => \INST7|sreg~q\,
	datad => \INST12|WideOr4~1_combout\,
	combout => \INST12|Selector0~0_combout\);

-- Location: FF_X11_Y13_N15
\INST12|current_state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST12|Selector0~0_combout\,
	sclr => \INST2|sreg\(1),
	ena => \INST12|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S6~q\);

-- Location: LCCOMB_X11_Y13_N30
\INST12|current_state~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|current_state~42_combout\ = (!\INST2|sreg\(1) & \INST12|current_state.S6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2|sreg\(1),
	datac => \INST12|current_state.S6~q\,
	combout => \INST12|current_state~42_combout\);

-- Location: FF_X11_Y13_N31
\INST12|current_state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST12|current_state~42_combout\,
	ena => \INST12|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S7~q\);

-- Location: LCCOMB_X12_Y13_N26
\INST12|WideOr8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|WideOr8~0_combout\ = (!\INST12|current_state.S7~q\ & !\INST12|current_state.S6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST12|current_state.S7~q\,
	datad => \INST12|current_state.S6~q\,
	combout => \INST12|WideOr8~0_combout\);

-- Location: LCCOMB_X12_Y14_N28
\INST13|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|clk_proc:COUNT[0]~0_combout\ = !\INST13|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST13|clk_proc:COUNT[0]~q\,
	combout => \INST13|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X12_Y14_N29
\INST13|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST13|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X12_Y14_N6
\INST13|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|clk_proc:COUNT[1]~1_combout\ = (\INST13|clk_proc:COUNT[1]~q\ & (\INST13|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\INST13|clk_proc:COUNT[1]~q\ & (\INST13|clk_proc:COUNT[0]~q\ & VCC))
-- \INST13|clk_proc:COUNT[1]~2\ = CARRY((\INST13|clk_proc:COUNT[1]~q\ & \INST13|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST13|clk_proc:COUNT[1]~q\,
	datab => \INST13|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \INST13|clk_proc:COUNT[1]~1_combout\,
	cout => \INST13|clk_proc:COUNT[1]~2\);

-- Location: FF_X12_Y14_N7
\INST13|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST13|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X12_Y14_N8
\INST13|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|clk_proc:COUNT[2]~1_combout\ = (\INST13|clk_proc:COUNT[2]~q\ & (!\INST13|clk_proc:COUNT[1]~2\)) # (!\INST13|clk_proc:COUNT[2]~q\ & ((\INST13|clk_proc:COUNT[1]~2\) # (GND)))
-- \INST13|clk_proc:COUNT[2]~2\ = CARRY((!\INST13|clk_proc:COUNT[1]~2\) # (!\INST13|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST13|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \INST13|clk_proc:COUNT[1]~2\,
	combout => \INST13|clk_proc:COUNT[2]~1_combout\,
	cout => \INST13|clk_proc:COUNT[2]~2\);

-- Location: FF_X12_Y14_N9
\INST13|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST13|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|clk_proc:COUNT[2]~q\);

-- Location: LCCOMB_X12_Y14_N10
\INST13|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|clk_proc:COUNT[3]~1_combout\ = (\INST13|clk_proc:COUNT[3]~q\ & (\INST13|clk_proc:COUNT[2]~2\ $ (GND))) # (!\INST13|clk_proc:COUNT[3]~q\ & (!\INST13|clk_proc:COUNT[2]~2\ & VCC))
-- \INST13|clk_proc:COUNT[3]~2\ = CARRY((\INST13|clk_proc:COUNT[3]~q\ & !\INST13|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST13|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \INST13|clk_proc:COUNT[2]~2\,
	combout => \INST13|clk_proc:COUNT[3]~1_combout\,
	cout => \INST13|clk_proc:COUNT[3]~2\);

-- Location: FF_X12_Y14_N11
\INST13|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST13|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X12_Y14_N12
\INST13|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|clk_proc:COUNT[4]~1_combout\ = (\INST13|clk_proc:COUNT[4]~q\ & (!\INST13|clk_proc:COUNT[3]~2\)) # (!\INST13|clk_proc:COUNT[4]~q\ & ((\INST13|clk_proc:COUNT[3]~2\) # (GND)))
-- \INST13|clk_proc:COUNT[4]~2\ = CARRY((!\INST13|clk_proc:COUNT[3]~2\) # (!\INST13|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST13|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \INST13|clk_proc:COUNT[3]~2\,
	combout => \INST13|clk_proc:COUNT[4]~1_combout\,
	cout => \INST13|clk_proc:COUNT[4]~2\);

-- Location: FF_X12_Y14_N13
\INST13|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST13|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|clk_proc:COUNT[4]~q\);

-- Location: LCCOMB_X12_Y14_N14
\INST13|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|clk_proc:COUNT[5]~1_combout\ = (\INST13|clk_proc:COUNT[5]~q\ & (\INST13|clk_proc:COUNT[4]~2\ $ (GND))) # (!\INST13|clk_proc:COUNT[5]~q\ & (!\INST13|clk_proc:COUNT[4]~2\ & VCC))
-- \INST13|clk_proc:COUNT[5]~2\ = CARRY((\INST13|clk_proc:COUNT[5]~q\ & !\INST13|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST13|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \INST13|clk_proc:COUNT[4]~2\,
	combout => \INST13|clk_proc:COUNT[5]~1_combout\,
	cout => \INST13|clk_proc:COUNT[5]~2\);

-- Location: FF_X12_Y14_N15
\INST13|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST13|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|clk_proc:COUNT[5]~q\);

-- Location: LCCOMB_X12_Y14_N16
\INST13|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|clk_proc:COUNT[6]~1_combout\ = (\INST13|clk_proc:COUNT[6]~q\ & (!\INST13|clk_proc:COUNT[5]~2\)) # (!\INST13|clk_proc:COUNT[6]~q\ & ((\INST13|clk_proc:COUNT[5]~2\) # (GND)))
-- \INST13|clk_proc:COUNT[6]~2\ = CARRY((!\INST13|clk_proc:COUNT[5]~2\) # (!\INST13|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST13|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \INST13|clk_proc:COUNT[5]~2\,
	combout => \INST13|clk_proc:COUNT[6]~1_combout\,
	cout => \INST13|clk_proc:COUNT[6]~2\);

-- Location: FF_X12_Y14_N17
\INST13|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST13|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|clk_proc:COUNT[6]~q\);

-- Location: LCCOMB_X12_Y14_N18
\INST13|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|clk_proc:COUNT[7]~1_combout\ = (\INST13|clk_proc:COUNT[7]~q\ & (\INST13|clk_proc:COUNT[6]~2\ $ (GND))) # (!\INST13|clk_proc:COUNT[7]~q\ & (!\INST13|clk_proc:COUNT[6]~2\ & VCC))
-- \INST13|clk_proc:COUNT[7]~2\ = CARRY((\INST13|clk_proc:COUNT[7]~q\ & !\INST13|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST13|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \INST13|clk_proc:COUNT[6]~2\,
	combout => \INST13|clk_proc:COUNT[7]~1_combout\,
	cout => \INST13|clk_proc:COUNT[7]~2\);

-- Location: FF_X12_Y14_N19
\INST13|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST13|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|clk_proc:COUNT[7]~q\);

-- Location: LCCOMB_X12_Y14_N20
\INST13|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|clk_proc:COUNT[8]~1_combout\ = (\INST13|clk_proc:COUNT[8]~q\ & (!\INST13|clk_proc:COUNT[7]~2\)) # (!\INST13|clk_proc:COUNT[8]~q\ & ((\INST13|clk_proc:COUNT[7]~2\) # (GND)))
-- \INST13|clk_proc:COUNT[8]~2\ = CARRY((!\INST13|clk_proc:COUNT[7]~2\) # (!\INST13|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST13|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \INST13|clk_proc:COUNT[7]~2\,
	combout => \INST13|clk_proc:COUNT[8]~1_combout\,
	cout => \INST13|clk_proc:COUNT[8]~2\);

-- Location: FF_X12_Y14_N21
\INST13|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST13|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|clk_proc:COUNT[8]~q\);

-- Location: LCCOMB_X12_Y14_N22
\INST13|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|clk_proc:COUNT[9]~1_combout\ = (\INST13|clk_proc:COUNT[9]~q\ & (\INST13|clk_proc:COUNT[8]~2\ $ (GND))) # (!\INST13|clk_proc:COUNT[9]~q\ & (!\INST13|clk_proc:COUNT[8]~2\ & VCC))
-- \INST13|clk_proc:COUNT[9]~2\ = CARRY((\INST13|clk_proc:COUNT[9]~q\ & !\INST13|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST13|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \INST13|clk_proc:COUNT[8]~2\,
	combout => \INST13|clk_proc:COUNT[9]~1_combout\,
	cout => \INST13|clk_proc:COUNT[9]~2\);

-- Location: FF_X12_Y14_N23
\INST13|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST13|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|clk_proc:COUNT[9]~q\);

-- Location: LCCOMB_X12_Y14_N24
\INST13|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|clk_proc:COUNT[10]~1_combout\ = \INST13|clk_proc:COUNT[9]~2\ $ (\INST13|clk_proc:COUNT[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \INST13|clk_proc:COUNT[10]~q\,
	cin => \INST13|clk_proc:COUNT[9]~2\,
	combout => \INST13|clk_proc:COUNT[10]~1_combout\);

-- Location: FF_X12_Y14_N25
\INST13|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST13|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|clk_proc:COUNT[10]~q\);

-- Location: LCCOMB_X13_Y13_N12
\INST13|DOUT_TEMP[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|DOUT_TEMP[6]~0_combout\ = (\INST13|clk_proc:COUNT[10]~q\ & (!\INST12|WideOr8~0_combout\)) # (!\INST13|clk_proc:COUNT[10]~q\ & (((\INST12|current_state.S14~q\) # (\INST12|current_state.S15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|WideOr8~0_combout\,
	datab => \INST12|current_state.S14~q\,
	datac => \INST13|clk_proc:COUNT[10]~q\,
	datad => \INST12|current_state.S15~q\,
	combout => \INST13|DOUT_TEMP[6]~0_combout\);

-- Location: LCCOMB_X11_Y13_N12
\INST12|WideOr5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|WideOr5~0_combout\ = (\INST12|current_state.S4~q\) # ((\INST12|current_state.S6~q\) # ((\INST12|current_state.S12~q\) # (\INST12|current_state.S14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S4~q\,
	datab => \INST12|current_state.S6~q\,
	datac => \INST12|current_state.S12~q\,
	datad => \INST12|current_state.S14~q\,
	combout => \INST12|WideOr5~0_combout\);

-- Location: LCCOMB_X12_Y13_N28
\INST12|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|WideOr4~0_combout\ = (\INST12|current_state.S12~q\) # ((\INST12|current_state.S9~q\) # ((\INST12|current_state.S13~q\) # (\INST12|current_state.S8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S12~q\,
	datab => \INST12|current_state.S9~q\,
	datac => \INST12|current_state.S13~q\,
	datad => \INST12|current_state.S8~q\,
	combout => \INST12|WideOr4~0_combout\);

-- Location: LCCOMB_X11_Y13_N22
\INST12|WideOr4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|WideOr4~2_combout\ = (\INST12|current_state.S4~q\) # ((\INST12|current_state.S5~q\) # ((\INST12|current_state.S1~q\) # (!\INST12|current_state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S4~q\,
	datab => \INST12|current_state.S5~q\,
	datac => \INST12|current_state.S0~q\,
	datad => \INST12|current_state.S1~q\,
	combout => \INST12|WideOr4~2_combout\);

-- Location: LCCOMB_X12_Y13_N10
\INST12|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|WideOr3~0_combout\ = (\INST12|current_state.S0~q\ & (!\INST12|current_state.S2~q\ & (!\INST12|current_state.S10~q\ & !\INST12|current_state.S8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S0~q\,
	datab => \INST12|current_state.S2~q\,
	datac => \INST12|current_state.S10~q\,
	datad => \INST12|current_state.S8~q\,
	combout => \INST12|WideOr3~0_combout\);

-- Location: LCCOMB_X13_Y13_N10
\DIN1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIN1~0_combout\ = (!\INST12|WideOr5~0_combout\ & (!\INST12|WideOr4~0_combout\ & (!\INST12|WideOr4~2_combout\ & \INST12|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|WideOr5~0_combout\,
	datab => \INST12|WideOr4~0_combout\,
	datac => \INST12|WideOr4~2_combout\,
	datad => \INST12|WideOr3~0_combout\,
	combout => \DIN1~0_combout\);

-- Location: LCCOMB_X11_Y13_N6
\INST12|WideOr7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|WideOr7~0_combout\ = (!\INST12|current_state.S4~q\ & (!\INST12|current_state.S2~q\ & (!\INST12|current_state.S5~q\ & !\INST12|current_state.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S4~q\,
	datab => \INST12|current_state.S2~q\,
	datac => \INST12|current_state.S5~q\,
	datad => \INST12|current_state.S3~q\,
	combout => \INST12|WideOr7~0_combout\);

-- Location: LCCOMB_X11_Y13_N0
\INST12|WideOr8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|WideOr8~combout\ = (\INST12|current_state.S7~q\) # (((\INST12|current_state.S6~q\) # (!\INST12|WideOr7~0_combout\)) # (!\INST12|WideOr4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S7~q\,
	datab => \INST12|WideOr4~1_combout\,
	datac => \INST12|current_state.S6~q\,
	datad => \INST12|WideOr7~0_combout\,
	combout => \INST12|WideOr8~combout\);

-- Location: LCCOMB_X12_Y13_N30
\INST12|WideOr3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|WideOr3~1_combout\ = (\INST12|current_state.S3~q\) # ((\INST12|current_state.S1~q\) # ((\INST12|current_state.S11~q\) # (\INST12|current_state.S9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S3~q\,
	datab => \INST12|current_state.S1~q\,
	datac => \INST12|current_state.S11~q\,
	datad => \INST12|current_state.S9~q\,
	combout => \INST12|WideOr3~1_combout\);

-- Location: LCCOMB_X13_Y13_N20
\INST12|WideOr3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|WideOr3~combout\ = (\INST12|WideOr3~1_combout\) # (!\INST12|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST12|WideOr3~1_combout\,
	datad => \INST12|WideOr3~0_combout\,
	combout => \INST12|WideOr3~combout\);

-- Location: LCCOMB_X13_Y13_N28
\DIN1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIN1~1_combout\ = (\DIN1~0_combout\ & (\INST14|sreg\(1) & (!\INST12|WideOr8~combout\ & !\INST12|WideOr3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN1~0_combout\,
	datab => \INST14|sreg\(1),
	datac => \INST12|WideOr8~combout\,
	datad => \INST12|WideOr3~combout\,
	combout => \DIN1~1_combout\);

-- Location: LCCOMB_X13_Y13_N16
\INST3|blink_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|blink_sig~0_combout\ = (!\INST2|sreg\(1) & \INST3|clk_divider:counter[23]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2|sreg\(1),
	datac => \INST3|clk_divider:counter[23]~q\,
	combout => \INST3|blink_sig~0_combout\);

-- Location: FF_X13_Y13_N17
\INST3|blink_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|blink_sig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|blink_sig~q\);

-- Location: LCCOMB_X13_Y13_N30
\INST13|DOUT_TEMP[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|DOUT_TEMP[6]~1_combout\ = (\DIN1~1_combout\ & (((!\INST13|clk_proc:COUNT[10]~q\ & \INST3|blink_sig~q\)))) # (!\DIN1~1_combout\ & (\INST13|DOUT_TEMP[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST13|DOUT_TEMP[6]~0_combout\,
	datab => \DIN1~1_combout\,
	datac => \INST13|clk_proc:COUNT[10]~q\,
	datad => \INST3|blink_sig~q\,
	combout => \INST13|DOUT_TEMP[6]~1_combout\);

-- Location: LCCOMB_X12_Y13_N14
\INST12|WideOr10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|WideOr10~0_combout\ = (!\INST12|current_state.S13~q\ & (!\INST12|current_state.S11~q\ & (!\INST12|current_state.S10~q\ & !\INST12|current_state.S12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S13~q\,
	datab => \INST12|current_state.S11~q\,
	datac => \INST12|current_state.S10~q\,
	datad => \INST12|current_state.S12~q\,
	combout => \INST12|WideOr10~0_combout\);

-- Location: LCCOMB_X13_Y13_N14
\INST12|WideOr5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|WideOr5~combout\ = (\INST12|WideOr5~0_combout\) # (!\INST12|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|WideOr5~0_combout\,
	datad => \INST12|WideOr3~0_combout\,
	combout => \INST12|WideOr5~combout\);

-- Location: LCCOMB_X11_Y13_N16
\INST12|WideOr4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|WideOr4~combout\ = (\INST12|current_state.S4~q\) # (((\INST12|current_state.S5~q\) # (\INST12|WideOr4~0_combout\)) # (!\INST12|WideOr4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S4~q\,
	datab => \INST12|WideOr4~1_combout\,
	datac => \INST12|current_state.S5~q\,
	datad => \INST12|WideOr4~0_combout\,
	combout => \INST12|WideOr4~combout\);

-- Location: LCCOMB_X13_Y13_N0
\INST13|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|DOUT[0]~0_combout\ = (\INST13|clk_proc:COUNT[10]~q\ & ((\DIN1~1_combout\ & ((\INST3|blink_sig~q\))) # (!\DIN1~1_combout\ & (!\INST12|WideOr8~combout\)))) # (!\INST13|clk_proc:COUNT[10]~q\ & (\INST12|WideOr8~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|WideOr8~combout\,
	datab => \DIN1~1_combout\,
	datac => \INST13|clk_proc:COUNT[10]~q\,
	datad => \INST3|blink_sig~q\,
	combout => \INST13|DOUT[0]~0_combout\);

-- Location: LCCOMB_X12_Y14_N4
\INST13|DOUT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|DOUT[3]~1_combout\ = (\INST13|clk_proc:COUNT[10]~q\ & (((\INST3|blink_sig~q\ & !\INST12|WideOr4~1_combout\)) # (!\INST12|WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|WideOr7~0_combout\,
	datab => \INST13|clk_proc:COUNT[10]~q\,
	datac => \INST3|blink_sig~q\,
	datad => \INST12|WideOr4~1_combout\,
	combout => \INST13|DOUT[3]~1_combout\);

-- Location: LCCOMB_X13_Y13_N18
\INST13|DOUT[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|DOUT[3]~2_combout\ = (\INST3|blink_sig~q\ & ((\INST12|current_state.S9~q\) # (\INST12|current_state.S8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S9~q\,
	datab => \INST12|current_state.S8~q\,
	datad => \INST3|blink_sig~q\,
	combout => \INST13|DOUT[3]~2_combout\);

-- Location: LCCOMB_X12_Y14_N26
\INST13|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|DOUT[3]~3_combout\ = (\INST13|DOUT[3]~1_combout\) # ((!\INST13|clk_proc:COUNT[10]~q\ & ((\INST13|DOUT[3]~2_combout\) # (!\INST12|WideOr10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|WideOr10~0_combout\,
	datab => \INST13|clk_proc:COUNT[10]~q\,
	datac => \INST13|DOUT[3]~1_combout\,
	datad => \INST13|DOUT[3]~2_combout\,
	combout => \INST13|DOUT[3]~3_combout\);

-- Location: IOIBUF_X9_Y0_N29
\pb_n[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(2),
	o => \pb_n[2]~input_o\);

-- Location: IOIBUF_X6_Y0_N15
\pb_n[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(3),
	o => \pb_n[3]~input_o\);

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


