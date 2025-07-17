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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/11/2025 17:49:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LogicalStep_Lab4_top
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LogicalStep_Lab4_top_vhd_vec_tst IS
END LogicalStep_Lab4_top_vhd_vec_tst;
ARCHITECTURE LogicalStep_Lab4_top_arch OF LogicalStep_Lab4_top_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clkin_50 : STD_LOGIC;
SIGNAL ew_seg_a : STD_LOGIC;
SIGNAL ew_seg_d : STD_LOGIC;
SIGNAL ew_seg_g : STD_LOGIC;
SIGNAL leds : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ns_seg_a : STD_LOGIC;
SIGNAL ns_seg_d : STD_LOGIC;
SIGNAL ns_seg_g : STD_LOGIC;
SIGNAL pb_n : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rst_n : STD_LOGIC;
SIGNAL seg7_char1 : STD_LOGIC;
SIGNAL seg7_char2 : STD_LOGIC;
SIGNAL seg7_data : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sim_blink_sig : STD_LOGIC;
SIGNAL sim_sm_clken : STD_LOGIC;
SIGNAL sim_state : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sw : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT LogicalStep_Lab4_top
	PORT (
	clkin_50 : IN STD_LOGIC;
	ew_seg_a : OUT STD_LOGIC;
	ew_seg_d : OUT STD_LOGIC;
	ew_seg_g : OUT STD_LOGIC;
	leds : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ns_seg_a : OUT STD_LOGIC;
	ns_seg_d : OUT STD_LOGIC;
	ns_seg_g : OUT STD_LOGIC;
	pb_n : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	rst_n : IN STD_LOGIC;
	seg7_char1 : OUT STD_LOGIC;
	seg7_char2 : OUT STD_LOGIC;
	seg7_data : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	sim_blink_sig : OUT STD_LOGIC;
	sim_sm_clken : OUT STD_LOGIC;
	sim_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sw : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : LogicalStep_Lab4_top
	PORT MAP (
-- list connections between master ports and signals
	clkin_50 => clkin_50,
	ew_seg_a => ew_seg_a,
	ew_seg_d => ew_seg_d,
	ew_seg_g => ew_seg_g,
	leds => leds,
	ns_seg_a => ns_seg_a,
	ns_seg_d => ns_seg_d,
	ns_seg_g => ns_seg_g,
	pb_n => pb_n,
	rst_n => rst_n,
	seg7_char1 => seg7_char1,
	seg7_char2 => seg7_char2,
	seg7_data => seg7_data,
	sim_blink_sig => sim_blink_sig,
	sim_sm_clken => sim_sm_clken,
	sim_state => sim_state,
	sw => sw
	);

-- clkin_50
t_prcs_clkin_50: PROCESS
BEGIN
LOOP
	clkin_50 <= '0';
	WAIT FOR 10000 ps;
	clkin_50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 32000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clkin_50;

-- rst_n
t_prcs_rst_n: PROCESS
BEGIN
	rst_n <= '0';
	WAIT FOR 80000 ps;
	rst_n <= '1';
WAIT;
END PROCESS t_prcs_rst_n;

-- pb_n[3]
t_prcs_pb_n_3: PROCESS
BEGIN
	pb_n(3) <= '1';
WAIT;
END PROCESS t_prcs_pb_n_3;

-- pb_n[2]
t_prcs_pb_n_2: PROCESS
BEGIN
	pb_n(2) <= '1';
WAIT;
END PROCESS t_prcs_pb_n_2;

-- pb_n[1]
t_prcs_pb_n_1: PROCESS
BEGIN
	pb_n(1) <= '1';
	WAIT FOR 10320000 ps;
	pb_n(1) <= '0';
	WAIT FOR 60000 ps;
	pb_n(1) <= '1';
WAIT;
END PROCESS t_prcs_pb_n_1;

-- pb_n[0]
t_prcs_pb_n_0: PROCESS
BEGIN
	pb_n(0) <= '1';
	WAIT FOR 12320000 ps;
	pb_n(0) <= '0';
	WAIT FOR 60000 ps;
	pb_n(0) <= '1';
WAIT;
END PROCESS t_prcs_pb_n_0;

-- sw[0]
t_prcs_sw_0: PROCESS
BEGIN
	sw(0) <= '0';
WAIT;
END PROCESS t_prcs_sw_0;
END LogicalStep_Lab4_top_arch;
