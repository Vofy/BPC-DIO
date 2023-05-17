--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:23:41 04/04/2023
-- Design Name:   
-- Module Name:   /home/vofy/Xilinx/simulace/tb_cnt.vhd
-- Project Name:  simulace
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cnt
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_cnt IS
END tb_cnt;
 
ARCHITECTURE behavior OF tb_cnt IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cnt
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         load_en : IN  std_logic;
         cnt_en : IN  std_logic;
         load_data : IN  std_logic_vector(3 downto 0);
         cnt_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal load_en : std_logic := '0';
   signal cnt_en : std_logic := '0';
   signal load_data : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal cnt_out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cnt PORT MAP (
          clk => clk,
          rst => rst,
          load_en => load_en,
          cnt_en => cnt_en,
          load_data => load_data,
          cnt_out => cnt_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		-- insert stimulus here 
      wait for clk_period*5;
		cnt_en <= '1';
		
		
		wait for clk_period*5;
		cnt_en <= '0';
		
		wait for clk_period*5;
		cnt_en <= '1';
		
		wait for clk_period*5;
		cnt_en <= '0';
		
		report("sim done") severity failure;

      wait;
   end process;

END;
