----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:48 02/08/2023 
-- Design Name: 
-- Module Name:    gates - Behavioral 
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

entity gates is -- nazev entity
Port ( A, B : in STD_LOGIC; -- deklarace vstupu
 OUT0, OUT1, OUT2,
 OUT3, OUT4, OUT5,
 OUT6 : out STD_LOGIC); -- deklarace vystupu
end gates;
architecture Behavioral of gates is -- nazev architektury
begin
-- OUT0 <= ; -- logicky soucin signalu A a B
-- OUT1 <= ; -- negace logickeho soucinu signalu A a B
-- OUT2 <= ; -- logicky soucet signalu A a B
-- OUT3 <= ; -- negace logickeho souctu signalu A a B
-- OUT4 <= ; -- exklusivni logicky soucet signalu A a B
-- OUT5 <= ; -- negace exklusivniho log. souctu signalu A a B
-- OUT6 <= ; -- negace signalu A
end Behavioral;

