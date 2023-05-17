----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:45:10 04/18/2023 
-- Design Name: 
-- Module Name:    debouncer - Behavioral 
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

entity debouncer is
    Port ( vstup    : in  STD_LOGIC;
           clock_en : in  STD_LOGIC;
           clk      : in  STD_LOGIC;
           vystup   : out  STD_LOGIC;
           CE       : out  STD_LOGIC);
end debouncer;

architecture Behavioral of debouncer is

	type state is (s0, s1, s2, s3, s4, s5);
	signal present_state, next_state : state;

begin

	process(clk,clock_en)
	begin
		if rising_edge(clk) then
			present_state <= next_state;
		end if;
	end process;

	process(present_state, vstup, clock_en)
	begin
		case present_state is
			when s0 => vystup<='0'; CE<='0'; if vstup='1' and clock_en='1' then next_state<=s1; else next_state<=s0; end if;
			when s1 => vystup<='0'; CE<='0'; if vstup='1' and clock_en='1' then next_state<=s2; elsif vstup='0' and clock_en='1' then next_state<=s0; else next_state<=s1; end if;
			when s2 => vystup<='0'; CE<='0'; if vstup='1' and clock_en='1' then next_state<=s3; elsif vstup='0' and clock_en='1' then next_state<=s0; else next_state<=s2; end if;
			when s3 => vystup<='0'; CE<='0'; if vstup='1' and clock_en='1' then next_state<=s4; elsif vstup='0' and clock_en='1' then next_state<=s0; else next_state<=s3; end if;
			when s4 => vystup<='1'; CE<='1'; if vstup='0' then next_state<=s0; else next_state<=s5; end if;
			when s5 => vystup<='1'; CE<='0'; if vstup='0' and clock_en='1' then  next_state<=s0; else next_state<=s5; end if;
		end case;
	end process;

end Behavioral;

