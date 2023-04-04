----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:33:16 02/17/2023 
-- Design Name: 
-- Module Name:    testModule - Behavioral 
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

entity cnt is
    Port ( clk, rst : in  STD_LOGIC;
           load_en, cnt_en : in  STD_LOGIC;
           load_data : in  STD_LOGIC_VECTOR (3 downto 0);
           cnt_out : out  STD_LOGIC_VECTOR (3 downto 0));
end cnt;

architecture Behavioral of cnt is

signal cnt_d, cnt_q : STD_LOGIC_VECTOR (3 downto 0);

begin

p_reg : process (clk, rst)
	begin
		if rst = '1' then
			cnt_q <= (others => '0');
		elsif rising_edge(clk) then
			cnt_q <= cnt_d;
		end if;
	end process;
	
	p_cnt : process (cnt_q, load_en, cnt_en, load_data)
		begin
			-- default assignment
			cnt_d <= cnt_q;
			
			-- load
			if load_en = '1' then
				cnt_d <= load_data;
			elsif cnt_en = '1' then
				cnt_d <= cnt_q + 1;
			end if;
		end process;
		
		cnt_out <= cnt_q;

end Behavioral;