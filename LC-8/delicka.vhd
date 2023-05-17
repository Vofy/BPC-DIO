library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divider is
    Port ( clk : in  STD_LOGIC;
           clk_1kHz : out  STD_LOGIC;
           clk_1Hz : out  STD_LOGIC);
end divider;

architecture Behavioral of divider is

	signal cnt1_d_int, cnt1_q_reg : std_logic_vector (16 downto 0) := (others => '0');
	signal cnt2_d_int, cnt2_q_reg : std_logic_vector (26 downto 0) := (others => '0');

begin

	--
	process (clk) begin
		if rising_edge(clk) then
			cnt1_q_reg <= cnt1_d_int;
			cnt2_q_reg <= cnt2_d_int;
		end if;
	end process;

	process (cnt1_q_reg) begin
		cnt1_d_int <= cnt1_q_reg + 1;
		clk_1kHz <= '0';
		if cnt1_q_reg = 99999 then
			cnt1_d_int <= (others => '0');
			clk_1kHz <= '1';
		end if;
	end process;

	process (cnt2_q_reg) begin
		cnt2_d_int <= cnt2_q_reg + 1;
		clk_1Hz <= '0';
		if cnt2_q_reg = 49999999 then
			cnt2_d_int <= (others => '0');
			clk_1Hz <= '1';
		end if;
	end process;

end Behavioral;

