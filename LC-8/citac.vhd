----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:29:16 03/29/2023 
-- Design Name: 
-- Module Name:    citac - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity citac is
Port (clk,en,DIR : in STD_LOGIC;
		max : out STD_LOGIC;
		Q   : out STD_LOGIC_VECTOR (3 downto 0));
end citac;

architecture Behavioral of citac is
	signal counter,counter_in : STD_LOGIC_VECTOR (3 downto 0);

begin

	process(clk)
	begin
		if (clk'event and clk='1' and en='1') then			
			counter<=counter_in;
		end if;
	end process;
	
	counter_in <= "0000" when counter=9 else counter+1 when DIR='1' else counter-1;
	Q <= counter;
	max <= '1' when (counter=9 and en='1' and DIR='1') or (counter=0 and en='1' and DIR='0') else '0';

end Behavioral;