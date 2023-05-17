----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:32:54 02/22/2023 
-- Design Name: 
-- Module Name:    ukol6 - Behavioral 
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

entity ukol6 is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           y : out  STD_LOGIC_VECTOR (1 downto 0);
           z : out  STD_LOGIC);
end ukol6;

architecture Behavioral of ukol6 is

begin

	y <=	"01" when x(1)='1' else
			"10" when x(2)='1' else
			"00" when x(0)='1' else
			"11" when x(3)='1' else
			"00";
	z <= x(3) or x(2) or x(1) or x(0);

end Behavioral;

