----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:55:55 03/15/2023 
-- Design Name: 
-- Module Name:    ukol5 - Behavioral 
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

entity ukol5 is
    Port ( H : in  STD_LOGIC;
           Tmax : in  STD_LOGIC;
           Tmin : in  STD_LOGIC;
           Vin : out  STD_LOGIC;
           Vout : out  STD_LOGIC;
           O : out  STD_LOGIC;
           A : out  STD_LOGIC;
			  an : out std_logic_vector (3 downto 0); -- vystupy - anody
			  leds : out std_logic_vector (6 downto 0)); -- vystupy - katody
end ukol5;

architecture Behavioral of ukol5 is

begin

	Vin <= '1' when H='0' and Tmax='0' else '0';
	Vout <= '1' when H='1' and Tmax='0' and Tmin='0' else '0';
	O <= '1' when H='1' and Tmax='0' and Tmin='1' else '0';
	A <= '1' when (Tmax = '1' or (Tmin = '1' and Tmax = '1')) else '0';
	leds <= "0001000" when (Tmax = '1' or (Tmin = '1' and Tmax = '1')) else "1111111";
	an <= "1110";

end Behavioral;