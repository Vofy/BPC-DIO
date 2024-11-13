----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:45:51 04/18/2023 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Port ( reset  : in STD_LOGIC;
			  CE     : in STD_LOGIC;
           clk    : in STD_LOGIC;
           vystup : out STD_LOGIC_VECTOR (7 downto 0));
end counter;

architecture Behavioral of counter is

signal counter,counter_in : STD_LOGIC_VECTOR (7 downto 0);

begin

	process(clk,reset)
	begin
		if (reset='1') then
			counter <= (others => '0');
		elsif (clk'event and clk='1' and CE='1') then
			counter<=counter_in;
		end if;
	end process;
	
	counter_in <= counter+1;
	vystup <= counter;

end Behavioral;