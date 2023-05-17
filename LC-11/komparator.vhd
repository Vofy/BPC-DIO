----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:09:48 04/26/2023 
-- Design Name: 
-- Module Name:    komparator - Behavioral 
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

entity komparator is
    Port ( ref, vstup : in  STD_LOGIC_VECTOR (3 downto 0);
           vystup : out  STD_LOGIC);
end komparator;

architecture Behavioral of komparator is

begin
	
	vystup <= '1' when (vstup > ref) else '0';

end Behavioral;

