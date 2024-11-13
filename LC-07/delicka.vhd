----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:33:19 03/29/2023 
-- Design Name: 
-- Module Name:    delicka - Behavioral 
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

entity delicka is
    Port (	clk : in  STD_LOGIC;
				clk_out : out  STD_LOGIC);
end delicka;

architecture Behavioral of delicka is
	
	signal counter_reg_out, counter_reg_in : STD_LOGIC_VECTOR (25 downto 0);

begin

	process(clk)
	begin
		if (clk'event and clk='1') then
			counter_reg_out <= counter_reg_in;
		end if;
	end process;
	
	
	-- kombinacni cast
	counter_reg_in <= (others=>'0') when counter_reg_out=49999999 else counter_reg_out+1;
	-- divider_reg_in <= not divider_reg_out when counter_reg_out=49999999 else divider_reg_out;
	
	clk_out <= '1' when counter_reg_out=49999999 else '0';

end Behavioral;

