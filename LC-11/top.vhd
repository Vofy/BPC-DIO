----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:50:42 04/26/2023 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is
	 Port ( clk : in  STD_LOGIC;
			  vystup : out  STD_LOGIC);
end top;

architecture Behavioral of top is

	component delicka
		 Port ( clk : in  STD_LOGIC;
				  vystup : out  STD_LOGIC);
	end component;

	component citac_intenzity
		 Port ( clk : in  STD_LOGIC;
           vystup : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;

	component citac
		 Port ( clk : in  STD_LOGIC;
           vystup : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;

	component vzorkovac
		 Port ( ref, vstup : in  STD_LOGIC_VECTOR (3 downto 0);
				  vystup : out  STD_LOGIC_VECTOR (3 downto 0);
				  clk : in  STD_LOGIC);
	end component;

	component komparator
		 Port ( ref, vstup : in  STD_LOGIC_VECTOR (3 downto 0);
				  vystup : out  STD_LOGIC);
	end component;
	
	component ffd
    Port ( vstup : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           vystup : out  STD_LOGIC);
	end component;

	
	signal citac_vystup, vzorkovac_vystup, intenzita : STD_LOGIC_VECTOR (3 downto 0);
	signal komparator_vystup, clk_30Hz : STD_LOGIC;

begin

		delicka1 : delicka
		 port map (clk => clk, vystup => clk_30Hz);

		citac_intenzity1 : citac_intenzity
		 port map (clk => clk_30Hz, vystup => intenzita);

		citac1 : citac
		 port map (clk => clk, vystup => citac_vystup);
				  
		vzorkovac1 : vzorkovac
		 port map (ref => citac_vystup, vstup => intenzita, vystup => vzorkovac_vystup, clk => clk);
				  
		komparator1 : komparator
		 port map (ref => citac_vystup, vstup => vzorkovac_vystup, vystup => komparator_vystup);
		 
		ffd1 : ffd
		 port map (vstup => komparator_vystup, clk => clk, vystup => vystup);
				  

end Behavioral;

