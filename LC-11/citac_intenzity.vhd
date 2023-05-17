----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:49:28 04/26/2023 
-- Design Name: 
-- Module Name:    citac_intenzity - Behavioral 
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

entity citac_intenzity is
    Port ( clk : in  STD_LOGIC;
           vystup : out  STD_LOGIC_VECTOR (3 downto 0));
end citac_intenzity;

architecture Behavioral of citac_intenzity is

signal smer : STD_LOGIC := '0';
signal counter, counter_in : STD_LOGIC_VECTOR (3 downto 0) := "0000";

--constant max_count : integer := 1666667;
constant max_count : STD_LOGIC_VECTOR (3 downto 0) := "1110";

begin

	process(clk)
	begin
	
		if (rising_edge(clk)) then			
			counter<=counter_in;
			
			if (counter=max_count) then
				smer <= '1';
			elsif (counter=1) then
				smer <= '0';
			end if;
			
		end if;
		
	end process;
	
	
	counter_in <= counter+1 when smer='0' else counter-1;
	vystup <= counter;

end Behavioral;

