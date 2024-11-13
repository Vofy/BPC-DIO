----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:09:34 03/08/2023 
-- Design Name: 
-- Module Name:    ukol5 - Behavioral 
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

-------------------------------------------------------------------------
entity dekoder is -- nazev entity
	Port ( cislo : in  std_logic_vector (3 downto 0); -- vstupy
			 katody : out std_logic_vector (6 downto 0)); -- vystupy - katody
end dekoder;
architecture Behavioral of dekoder is -- nazev architektury
	
begin

	with cislo select
		katody <= "0000001" when "0000", -- cislice 0
					 "1001111" when "0001", -- cislice 1
					 "0010010" when "0010", -- cislice 2
					 "0000110" when "0011", -- cislice 3
					 "1001100" when "0100", -- cislice 4
					 "0100100" when "0101", -- cislice 5
					 "0100000" when "0110", -- cislice 6
					 "0001111" when "0111", -- cislice 7
					 "0000000" when "1000", -- cislice 8
					 "0000100" when "1001", -- cislice 9
					 "1111111" when others;
end Behavioral;
-------------------------------------------------------------------------