----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:01:57 03/29/2023 
-- Design Name: 
-- Module Name:    digitop - Behavioral 
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

entity digitop is
    Port ( clk : in  STD_LOGIC;
--         rst : in  STD_LOGIC;
           an  : out  STD_LOGIC_VECTOR (3 downto 0);
           o   : out  STD_LOGIC_VECTOR (6 downto 0));
end digitop;

architecture Behavioral of digitop is

	component delicka
		Port (clk : in  STD_LOGIC;
				clk_out : out  STD_LOGIC);
	end component;
	
	component citac
		Port (clk, en : in STD_LOGIC;
				Q       : out STD_LOGIC_VECTOR (3 downto 0)
		);
	end component;
	
	component decoder
		port ( x : in  std_logic_vector (3 downto 0);
				an : out std_logic_vector (3 downto 0);
			 leds : out std_logic_vector (6 downto 0));
	end component;
	
	signal clk_1Hz : STD_LOGIC;
	signal citac_out : std_logic_vector (3 downto 0);
	signal decoder_out : std_logic_vector (6 downto 0);

begin

	delicka1 : delicka
		port map (clk => clk, clk_out => clk_1Hz);
	
	citac1 : citac
		port map (clk => clk, en => clk_1Hz, Q => citac_out);
	
	decoder1 : decoder
		port map (x => citac_out, an => an, leds => decoder_out);
		
	o <= decoder_out;

end Behavioral;

