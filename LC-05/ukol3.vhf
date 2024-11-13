--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ukol3.vhf
-- /___/   /\     Timestamp : 03/15/2023 13:44:55
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/BDIO/243511/uloha5/ukol3.vhf -w C:/BDIO/243511/uloha5/ukol3.sch
--Design Name: ukol3
--Device: spartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ukol3 is
   port ( H    : in    std_logic; 
          Tmax : in    std_logic; 
          Tmin : in    std_logic; 
          A    : out   std_logic; 
          O    : out   std_logic; 
          Vin  : out   std_logic; 
          Vout : out   std_logic);
end ukol3;

architecture BEHAVIORAL of ukol3 is
   attribute BOX_TYPE   : string ;
   signal XLXN_4 : std_logic;
   signal XLXN_5 : std_logic;
   signal XLXN_7 : std_logic;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND3
      port map (I0=>XLXN_7,
                I1=>Tmin,
                I2=>H,
                O=>O);
   
   XLXI_2 : AND2
      port map (I0=>XLXN_7,
                I1=>XLXN_4,
                O=>Vin);
   
   XLXI_3 : INV
      port map (I=>H,
                O=>XLXN_4);
   
   XLXI_4 : AND3
      port map (I0=>XLXN_7,
                I1=>XLXN_5,
                I2=>H,
                O=>Vout);
   
   XLXI_5 : INV
      port map (I=>Tmin,
                O=>XLXN_5);
   
   XLXI_6 : INV
      port map (I=>Tmax,
                O=>XLXN_7);
   
   XLXI_7 : BUF
      port map (I=>Tmax,
                O=>A);
   
end BEHAVIORAL;


