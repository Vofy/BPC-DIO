--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ukol4.vhf
-- /___/   /\     Timestamp : 03/08/2023 14:02:05
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/BDIO/243511/uloha3/ukol4.vhf -w C:/BDIO/243511/uloha3/ukol4.sch
--Design Name: ukol4
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

entity ukol4 is
   port ( x0 : in    std_logic; 
          x1 : in    std_logic; 
          x2 : in    std_logic; 
          x3 : in    std_logic; 
          f  : out   std_logic);
end ukol4;

architecture BEHAVIORAL of ukol4 is
   attribute BOX_TYPE   : string ;
   signal XLXN_1  : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_3  : std_logic;
   signal XLXN_4  : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_19 : std_logic;
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : OR4
      port map (I0=>XLXN_4,
                I1=>XLXN_3,
                I2=>XLXN_2,
                I3=>XLXN_1,
                O=>f);
   
   XLXI_2 : AND2
      port map (I0=>x3,
                I1=>x2,
                O=>XLXN_2);
   
   XLXI_3 : AND2
      port map (I0=>x1,
                I1=>x0,
                O=>XLXN_3);
   
   XLXI_4 : AND2
      port map (I0=>XLXN_16,
                I1=>x1,
                O=>XLXN_4);
   
   XLXI_5 : AND3
      port map (I0=>x0,
                I1=>XLXN_19,
                I2=>XLXN_11,
                O=>XLXN_1);
   
   XLXI_7 : INV
      port map (I=>x2,
                O=>XLXN_11);
   
   XLXI_8 : INV
      port map (I=>x2,
                O=>XLXN_16);
   
   XLXI_10 : INV
      port map (I=>x3,
                O=>XLXN_19);
   
end BEHAVIORAL;


