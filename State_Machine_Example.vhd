library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity State_Machine_Example IS Port
(
 clk_input, reset, clk_enable, ns_holding, ew_holding, offline_mode							: IN std_logic;
 ns_red, ns_amber, ns_green, ns_blink, ns_cross_display, ns_reg_clear, ew_red, ew_amber, ew_green, ew_blink, ew_cross_display, ew_reg_clear : OUT std_logic;
 state_number : OUT std_logic_vector (3 downto 0)
 );
END ENTITY;
 

 Architecture SM of State_Machine_Example is
 
 TYPE STATE_NAMES IS (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15);   -- list all the STATE_NAMES values

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES
 
 BEGIN
 

 -------------------------------------------------------------------------------
 --State Machine:
 -------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS EXAMPLE
 
Register_Section: PROCESS (clk_input)  -- this process updates with a clock
BEGIN
	IF(rising_edge(clk_input)) THEN
		IF (reset = '1') THEN
			current_state <= S0;
		ELSIF (reset = '0') THEN
			IF (clk_enable = '1') THEN
				current_state <= next_State;
			END IF;
		END IF;
	END IF;
END PROCESS;	

-- TRANSITION LOGIC PROCESS EXAMPLE

Transition_Section: PROCESS (current_state) 

BEGIN
	ns_reg_clear <= '0';
	ew_reg_clear <= '0';

  CASE current_state IS
        WHEN S0 =>
				-- Check for the ew holding register
				if ew_holding = '1' then
					if ns_holding = '0' then
						next_state <= S6;
					else
						next_state <= s1;
					end if;
				else
					next_state <= S1;
				end if;
			state_number <= "0000";
        WHEN S1 => 
			-- Check for the ew holding register
				if ew_holding = '1' then
					if ns_holding = '0' then
						next_state <= S6;
					else
						next_state <= s2;
					end if;
				else
					next_state <= S2;
				end if;
			state_number <= "0001";
		  WHEN S2 => 
			next_state <= S3;
			state_number <= "0010";
		  WHEN S3 => 
			next_state <= S4;
			state_number <= "0011";
		  WHEN S4 => 
			next_state <= S5;
			state_number <= "0100";
		  WHEN S5 => 
			next_state <= S6;
			state_number <= "0101";
		  WHEN S6 =>
			-- Send NS Register Clear signal
			ns_reg_clear <= '1';
			next_state <= S7;
			state_number <= "0110";
		  WHEN S7 => 
			next_state <= S8;
			state_number <= "0111";
		  WHEN S8 => 
		   -- Check for ns holding register
				if ns_holding = '1' then
					if ew_holding = '0' then
						next_state <= S14;
					else
						next_state <= s9;
					end if;
				else
					next_state <= S9;
				end if;
			state_number <= "1000";
		  WHEN S9 => 
		  -- Check for ns holding register
				if ns_holding = '1' then
					if ew_holding = '0' then
						next_state <= S14;
					else
						next_state <= s10;
					end if;
				else
					next_state <= S10;
				end if;
			state_number <= "1001";
		  WHEN S10 => 
			next_state <= S11;
			state_number <= "1010";
		  WHEN S11 => 
			next_state <= S12;
			state_number <= "1011";
		  WHEN S12 => 
			next_state <= S13;
			state_number <= "1100";
		  WHEN S13 => 
			next_state <= S14;
			state_number <= "1101";
		  WHEN S14 =>
			-- Send the EW reg clear signal
		   ew_reg_clear <= '1'; 
			next_state <= S15;
			state_number <= "1110";
		  WHEN S15 => 
			if offline_mode = '1' then
				next_state <= S15;
			else
				next_state <= S0;
			end if;
			state_number <= "1111";
		  WHEN others => 
			next_state <= S0;
			state_number <= "0000";
	  END CASE;
 END PROCESS;
 

-- DECODER SECTION PROCESS EXAMPLE (MOORE FORM SHOWN)

Decoder_Section: PROCESS (current_state) 

BEGIN
	-- Default all outputs off
	ns_red <= '0';
	ns_amber <= '0';
	ns_green <= '0';
	ns_blink <= '0';
	ns_cross_display <= '0';
	
	ew_red <= '0';
	ew_amber <= '0';
	ew_green <= '0';
	ew_blink <= '0';
	ew_cross_display <= '0';
	
     CASE current_state IS
		-- EW RED and NS blink
		WHEN S0 =>
			ew_red <= '1';
			ns_blink <= '1';
		
		WHEN S1 =>
			ew_red <= '1';
			ns_blink <= '1';
	  
		-- NS Green and EW RED
		WHEN S2 => 
			ns_green <= '1';
			ns_cross_display <= '1';
			
			ew_red <= '1';
			
		WHEN S3 => 
			ns_green <= '1';
			ns_cross_display <= '1';
			
			ew_red <= '1';
			
		WHEN S4 => 
			ns_green <= '1';
			ns_cross_display <= '1';
			
			ew_red <= '1';
			
		WHEN S5 => 
			ns_green <= '1';
			ns_cross_display <= '1';
		
			ew_red <= '1';
		
		--NS Amber and EW Red
		WHEN S6 => 
			ns_amber <= '1';
			
			ew_red <= '1';
			
		WHEN S7 => 
			ns_amber <= '1';
			
			ew_red <= '1';
		
		--NS Red and EW Flashing Green
		WHEN S8 => 
			ns_red <= '1';
			ew_blink <= '1';

		WHEN S9 => 
			ns_red <= '1';
			ew_blink <= '1';
			
		-- NS RED AND EW SOLID GREEN
		WHEN S10 => 
			ns_red <= '1';
			ew_green <= '1';
			ew_cross_display <= '1';
			
		WHEN S11 => 
			ns_red <= '1';
			ew_green <= '1';
			ew_cross_display <= '1';
			
		WHEN S12 => 
			ns_red <= '1';
			ew_green <= '1';
			ew_cross_display <= '1';
			
		WHEN S13 => 
			ns_red <= '1';
			ew_green <= '1';
			ew_cross_display <= '1';
		
		-- NS RED AND EW AMBER
		WHEN S14 => 
			ns_red <= '1';
			ew_amber <= '1';
		
		--Check for offline mode flashing
		WHEN S15 =>
			ns_red <= '1';
			ew_amber <= '1';
			
		WHEN OTHERS => 
			ns_red <= '0';
			ns_amber <= '0';
			ns_green <= '0';
         
			ew_red <= '0';
			ew_amber <= '0';
			ew_green <= '0';
	  END CASE;
 END PROCESS;
 END ARCHITECTURE SM;
