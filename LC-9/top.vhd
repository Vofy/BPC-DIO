----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:43:04 04/18/2023 
-- Design Name: 
-- Module Name:    top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( btn  : in  STD_LOGIC;
           clk  : in  STD_LOGIC;
           leds : out  STD_LOGIC_VECTOR (7 downto 0));
end top;

architecture Behavioral of top is

component divider
    Port ( clk                    : in  STD_LOGIC;
           clock_en_1, clock_en_2 : out  STD_LOGIC);
end component;

component debouncer
    Port ( vstup    : in  STD_LOGIC;
           clock_en : in  STD_LOGIC;
           clk      : in  STD_LOGIC;
           vystup   : out  STD_LOGIC;
           CE       : out  STD_LOGIC);
end component;

component counter
    Port ( reset  : in STD_LOGIC;
			  CE     : in STD_LOGIC;
           clk    : in STD_LOGIC;
           vystup : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal clock_en_1, clock_en_2, CE_reset, CE_counter, vystup : STD_LOGIC;

begin

	divider1 : divider
		port map (clk => clk, clock_en_1 => clock_en_1, clock_en_2 => clock_en_2);
	
	debouncer1 : debouncer
		port map (vstup => btn, clock_en => clock_en_1, clk => clk, vystup => vystup, CE => CE_reset);
		
	counter1: counter
		port map (reset => CE_reset, CE  => CE_counter, clk => clk, vystup => leds);
		
	CE_counter <= vystup and clock_en_2;


end Behavioral;

