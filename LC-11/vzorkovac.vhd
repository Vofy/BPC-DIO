----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:58:41 04/26/2023 
-- Design Name: 
-- Module Name:    vzorkovac - Behavioral 
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

entity vzorkovac is
    Port ( ref, vstup : in  STD_LOGIC_VECTOR (3 downto 0);
			  vystup : out  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC);
end vzorkovac;

architecture Behavioral of vzorkovac is

signal Q, D : STD_LOGIC_VECTOR (3 downto 0) := "0000";

begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			Q <= D;
		end if;
	end process;
	
	D <= vstup when ref="1111" else Q;
	
	vystup <= Q;

end Behavioral;

