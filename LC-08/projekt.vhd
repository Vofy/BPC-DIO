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
	Port ( clk, reset, DIR : in STD_LOGIC;
			 katody : out STD_LOGIC_VECTOR (6 downto 0);
			 anody : out STD_LOGIC_VECTOR (3 downto 0)
			);
end uloha;

architecture Behavioral of uloha is

	component divider
		Port ( clk : in  STD_LOGIC;
				 clk_1kHz : out  STD_LOGIC;
				 clk_1Hz : out  STD_LOGIC);
	end component;
	
	component mux
		Port ( clk, en : in  STD_LOGIC;
             reset : in  STD_LOGIC;
             AN : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;
		
	component dekoder
		Port ( cislo : in  std_logic_vector (3 downto 0); -- vstupy
				 katody : out std_logic_vector (6 downto 0)); -- vystupy - katody
	end component;
	
	component citac 
		Port (clk,en,DIR : in STD_LOGIC;
				max : out STD_LOGIC;
				Q   : out STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	signal clk_1kHz, clk_1Hz, max, en_desitky : STD_LOGIC;
	signal jednotky, desitky, cislo, pozice : STD_LOGIC_VECTOR (3 downto 0);


begin

	divider1 : divider
		port map (clk => clk, clk_1kHz => clk_1kHz, clk_1Hz => clk_1Hz);
	
	mux1 : mux
		port map (clk => clk, en => clk_1kHz, reset => reset, AN => pozice);
		
	citac_jednotky : citac
		port map (clk => clk, en => clk_1Hz, DIR => DIR, max => max, Q => jednotky);
		
	citac_desitky : citac
		port map (clk => clk, en => en_desitky, DIR => DIR, max => open, Q => desitky);
		
	dekoder1 : dekoder
		port map (cislo => cislo, katody => katody);
	
	en_desitky <= max and clk_1Hz;
	
	with pozice select
		cislo <= jednotky when "1110",
					desitky  when "1101",
					"1111" when others;
	anody <= pozice;
		
end Behavioral;

