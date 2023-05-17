----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:51:27 04/26/2023 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity citac is
    Port ( clk : in  STD_LOGIC;
           vystup : out  STD_LOGIC_VECTOR (3 downto 0));
end citac;

architecture Behavioral of citac is

signal counter,counter_in : STD_LOGIC_VECTOR (3 downto 0) := "0000";

begin

	process(clk)
	begin
		if (clk'event and clk='1') then
			counter<=counter_in;
		end if;
	end process;
	
	counter_in <= counter+1;
	vystup <= counter;

end Behavioral;
