
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
    clkin_50	    : in	std_logic;							-- The 50 MHz FPGA Clockinput
	rst_n			: in	std_logic;							-- The RESET input (ACTIVE LOW)
	pb_n			: in	std_logic_vector(3 downto 0); -- The push-button inputs (ACTIVE LOW)
 	sw   			: in  	std_logic_vector(7 downto 0); -- The switch inputs
    leds			: out 	std_logic_vector(7 downto 0);	-- for displaying the the lab4 project details
	 
	 -- Internal signals for simulation ONLY
--	 sim_state : out std_logic_vector(3 downto 0);
--	 sim_sm_clken : out std_logic;
--	 sim_blink_sig : out std_logic;
--	 ew_seg_a : out std_logic;
--	 ew_seg_d : out std_logic;
--	 ew_seg_g : out std_logic;
--	 
--	 ns_seg_a : out std_logic;
--	 ns_seg_d : out std_logic;
--	 ns_seg_g : out std_logic;
--	 
	-------------------------------------------------------------
	-- you can add temporary output ports here if you need to debug your design 
	-- or to add internal signals for your simulations
	-------------------------------------------------------------
	
   seg7_data 	: out 	std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
	);
END LogicalStep_Lab4_top;

ARCHITECTURE SimpleCircuit OF LogicalStep_Lab4_top IS
   component segment7_mux port (
             clk        	: in  	std_logic := '0';
			 DIN2 			: in  	std_logic_vector(6 downto 0);	--bits 6 to 0 represent segments G,F,E,D,C,B,A
			 DIN1 			: in  	std_logic_vector(6 downto 0); --bits 6 to 0 represent segments G,F,E,D,C,B,A
			 DOUT			: out	std_logic_vector(6 downto 0);
			 DIG2			: out	std_logic;
			 DIG1			: out	std_logic
   );
   end component;

   component clock_generator port (
			sim_mode			: in boolean;
			reset				: in std_logic;
            clkin      		    : in  std_logic;
			sm_clken			: out	std_logic;
			blink		  		: out std_logic
  );
   end component;

    component pb_filters port (
			clkin				: in std_logic;
			rst_n				: in std_logic;
			rst_n_filtered	    : out std_logic;
			pb_n				: in  std_logic_vector (3 downto 0);
			pb_n_filtered	    : out	std_logic_vector(3 downto 0)							 
 );
   end component;

	component pb_inverters port (
			rst_n				: in  std_logic;
			rst				    : out	std_logic;							 
			pb_n_filtered	    : in  std_logic_vector (3 downto 0);
			pb					: out	std_logic_vector(3 downto 0)							 
  );
   end component;
	
	component synchronizer port(
			clk					: in std_logic;
			reset					: in std_logic;
			din					: in std_logic;
			dout					: out std_logic
  );
   end component; 
	
  component holding_register port (
			clk					: in std_logic;
			reset					: in std_logic;
			register_clr		: in std_logic;
			din					: in std_logic;
			dout					: out std_logic
  );
  end component;
  
component State_Machine_Example port
(
	clk_input, reset, clk_enable, ns_holding, ew_holding, offline_mode							: IN std_logic;
	ns_red, ns_amber, ns_green, ns_blink, ns_cross_display, ns_reg_clear, ew_red, ew_amber, ew_green, ew_blink, ew_cross_display, ew_reg_clear : OUT std_logic;
	state_number : OUT std_logic_vector (3 downto 0)
 );
END component;  
----------------------------------------------------------------------------------------------------
	CONSTANT	sim_mode								: boolean := FALSE;  -- set to FALSE for LogicalStep board downloads																						-- set to TRUE for SIMULATIONS
	SIGNAL rst, rst_n_filtered, synch_rst			    : std_logic;
	SIGNAL sm_clken, blink_sig							: std_logic; 
	SIGNAL pb_n_filtered, pb							: std_logic_vector(3 downto 0);
	-- Synchronizer output signals
	SIGNAL syncOne,syncTwo, syncSwitch								: std_logic;
	--Holding Register Output Signals
	SIGNAL holdingOne, holdingTwo : std_logic;
	-- NS SM output signals
	SIGNAL ns_red, ns_amber, ns_green, ns_blink, ns_reg_clear	: std_logic;
	-- EW SM output signals
	SIGNAL ew_red, ew_amber, ew_green, ew_blink, ew_reg_clear : std_logic;
	-- Seven Segment signals
	SIGNAL ns_green_on : std_logic;
	SIGNAL ew_green_on : std_logic;
	SIGNAL DIN2 : std_logic_vector(6 downto 0);
	SIGNAL DIN1 : std_logic_vector(6 downto 0);
	--State Number Signal
	SIGNAL state_number : std_logic_vector(3 downto 0);
	
BEGIN
----------------------------------------------------------------------------------------------------

INST0: pb_filters			port map (clkin_50, rst_n, rst_n_filtered, pb_n, pb_n_filtered);
INST1: pb_inverters		port map (rst_n_filtered, rst, pb_n_filtered, pb);
-- First synchronizer
INST2: synchronizer     port map (clkin_50,'0', rst, synch_rst);	
INST3: clock_generator 	port map (sim_mode, synch_rst, clkin_50, sm_clken, blink_sig);

-- Second synchronizer and Pb_n(0)
INST6: synchronizer 		port map (clkin_50, synch_rst, pb(0), syncOne);
INST7: holding_register port map (clkin_50, synch_rst, ns_reg_clear, syncOne, holdingOne); 
leds(1) <= holdingOne;				
				
-- Third synchronizer and Pb_n(1)
INST10: synchronizer 		port map (clkin_50, synch_rst, pb(1), syncTwo);
INST11: holding_register port map (clkin_50, synch_rst, ew_reg_clear, syncTwo, holdingTwo); 
leds(3) <= holdingTwo;

--SYnchronize the SW(0) for offline mode
INST14: synchronizer port map (clkin_50, synch_rst, sw(0), syncSwitch);  

-- Moore State Machine
ns_green_on <= (ns_green or (ns_blink AND blink_sig));
ew_green_on <= (ew_green or (ew_blink AND blink_sig));
INST12 : State_Machine_Example port map (clkin_50, synch_rst, sm_clken, holdingOne, holdingTwo, syncSwitch, ns_red, ns_amber, ns_green, ns_blink, leds(0), ns_reg_clear, ew_red, ew_amber, ew_green, ew_blink, leds(2), ew_reg_clear, state_number);
DIN2 <= 
	("000000"&blink_sig) WHEN (syncSwitch='1' AND state_number="1111") else
	(ns_amber & '0' & '0' & ns_green_on & '0' & '0' & ns_red);
	
DIN1 <= 
	(blink_sig&"000000") WHEN (syncSwitch='1' AND state_number="1111") else
	(ew_amber & '0' & '0' & ew_green_on & '0' & '0' & ew_red);
INST13 : segment7_mux port map (clkin_50, DIN2, DIN1, seg7_data, seg7_char2, seg7_char1);

--LEDS
leds(7 downto 4) <= state_number;

--Simulation declarations
--	 sim_state <= state_number;
--	 sim_sm_clken <= sm_clken;
--	 sim_blink_sig <= blink_sig;
--	 ew_seg_a  <= DIN1(0);
--	 ew_seg_d <= DIN1(3);
--	 ew_seg_g <= DIN1(6);
--	 
--	 ns_seg_a <= DIN2(0);
--	 ns_seg_d <= DIN2(3);
--	 ns_seg_g <= DIN2(6);

END SimpleCircuit;
