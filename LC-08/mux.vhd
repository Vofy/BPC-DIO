----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:26:00 04/12/2023 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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

entity mux is
    Port ( clk, en : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           AN : out  STD_LOGIC_VECTOR (3 downto 0));
end mux;

architecture Behavioral of mux is
	type state_type is (s0,s1,s2,s3);
	signal state, state_next : state_type;

begin

	process(clk, reset)
	begin
		if reset='1' then
			state <= s0;
		elsif rising_edge(clk) and en='1' then
			state <= state_next;
		end if;
	end process;
	
	process(state)
	begin
		case state is
			when s0 => state_next <= s1; AN <= "0111";
			when s1 => state_next <= s2; AN <= "1011";
			when s2 => state_next <= s3; AN <= "1101";
			when s3 => state_next <= s0; AN <= "1110";
		end case;
	end process;

end Behavioral;

