----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:42:02 04/18/2023 
-- Design Name: 
-- Module Name:    divider - Behavioral 
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

entity divider is
    Port ( clk                    : in  STD_LOGIC;
           clock_en_1, clock_en_2 : out  STD_LOGIC);
end divider;

architecture Behavioral of divider is

signal cnt1_d_int, cnt1_q_reg : std_logic_vector (18 downto 0) := (others => '0');
signal cnt2_d_int, cnt2_q_reg : std_logic_vector (23 downto 0) := (others => '0');

begin

	process (clk) begin
		if rising_edge(clk) then
			cnt1_q_reg <= cnt1_d_int;
			cnt2_q_reg <= cnt2_d_int;
		end if;
	end process;

	process (cnt1_q_reg) begin
		cnt1_d_int <= cnt1_q_reg + 1;
		clock_en_1 <= '0';
		if cnt1_q_reg = 499999 then
			cnt1_d_int <= (others => '0');
			clock_en_1 <= '1';
		end if;
	end process;
	
	process (cnt2_q_reg) begin
		cnt2_d_int <= cnt2_q_reg + 1;
		clock_en_2 <= '0';
		if cnt2_q_reg = 4999999 then --9999999
			cnt2_d_int <= (others => '0');
			clock_en_2 <= '1';
		end if;
	end process;

end Behavioral;

