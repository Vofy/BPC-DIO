----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:55:36 02/15/2023 
-- Design Name: 
-- Module Name:    modul1 - Behavioral 
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

entity modul1 is
    Port ( OUT0 : out  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           OUT2 : out  STD_LOGIC;
           OUT3 : out  STD_LOGIC;
           OUT4 : out  STD_LOGIC;
           OUT5 : out  STD_LOGIC;
           OUT6 : out  STD_LOGIC;
           A : in  STD_LOGIC;
           B : in  STD_LOGIC);
end modul1;

architecture Behavioral of modul1 is

begin
	OUT0 <= A and B;
	OUT1 <= A nand B;
	OUT2 <= A or B;
	OUT3 <= A nor B;
	OUT4 <= A xor B;
	OUT5 <= A xnor B;
	OUT6 <= not A;
end Behavioral;

