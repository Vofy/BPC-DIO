----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:54:47 03/22/2023 
-- Design Name: 
-- Module Name:    ukol4 - Behavioral 
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

entity ukol4 is
    Port ( D : in  STD_LOGIC_VECTOR(7 downto 0);
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(7 downto 0)
			 );
end ukol4;

architecture Behavioral of ukol4 is
	signal s : STD_LOGIC_VECTOR(7 downto 0);

begin
	process (clk)
	begin
		if (clk'event and clk='1') then
			s(0) <= D(0);
			s(1) <= D(1);
			s(2) <= D(2);
			s(3) <= D(3);
			s(4) <= D(4);
			s(5) <= D(5);
			s(6) <= D(6);
			s(7) <= D(7);
		end if;
	end process;
	
			Q(0) <= s(0);
			Q(1) <= s(1);
			Q(2) <= s(2);
			Q(3) <= s(3);
			Q(4) <= s(4);
			Q(5) <= s(5);
			Q(6) <= s(6);
			Q(7) <= s(7);
	
end Behavioral;

