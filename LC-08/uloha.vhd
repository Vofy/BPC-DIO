----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:12:59 04/05/2023 
-- Design Name: 
-- Module Name:    uloha - Behavioral 
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

entity uloha is
	Port (  clk: in STD_LOGIC);
end uloha;

architecture Behavioral of uloha is
	 signal clk_1kHz, reset : STD_LOGIC;
	 signal jednotky, desitky, x, AN : STD_LOGIC_VECTOR (3 downto 0);
	 signal leds : STD_LOGIC_VECTOR (6 downto 0);

	component divider
		Port ( clk : in  STD_LOGIC;
				 clk_1kHz : out  STD_LOGIC;
				 clk_1Hz : out  STD_LOGIC);
	end component;
	
	component mux
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           AN : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	component citac
    Port ( AN : in  STD_LOGIC_VECTOR (3 downto 0);
           x : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	component dekoder -- nazev entity
		port ( x : in  std_logic_vector (3 downto 0); -- vstupy
			 leds : out std_logic_vector (6 downto 0)); -- vystupy - katody
	end component;
	

--	component bcd_citac
--		Port (clk,en : in STD_LOGIC;
--				max : out STD_LOGIC;
--				Q   : out STD_LOGIC_VECTOR (3 downto 0));
--	end component;
--	


begin
--		
--	bcd_citac_jednotky : bcd_citac
--		port map (clk => clk_1Hz, en => en, max => max, Q => jednotky);
--		
--	bcd_citac_desitky : bcd_citac
--		port map (clk => clk_1Hz, en => en_desitky, Q => desitky);
--
--	dekoder1 : dekoder
--		port map (x => jednotky, leds => leds);
--		
--	en_desitky <= '1' when (en='1' and max='1') else '0';
	
	divider1 : divider
		port map (clk => clk, clk_1kHz => clk_1kHz);
	
	mux1 : mux
		port map (clk => clk_1kHz, reset => reset, AN => AN);
		
	dekoder1 : dekoder
		port map (x => x, leds => leds);
	
	with AN select
		x <= 	"0000" when "0111",
				"0010" when "1011",
				"0100" when "1101",
				"1000" when "1110",
				"1111" when others;
		
end Behavioral;

