----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:29:11 04/26/2023 
-- Design Name: 
-- Module Name:    ffd - Behavioral 
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

entity ffd is
    Port ( vstup : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           vystup : out  STD_LOGIC);
end ffd;

architecture Behavioral of ffd is

signal Q, D : STD_LOGIC;

begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			Q <= D;
		end if;
	end process;
	
	D <= vstup;
	
	vystup <= Q;
	
end Behavioral;

