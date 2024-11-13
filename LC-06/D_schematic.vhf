--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : D_schematic.vhf
-- /___/   /\     Timestamp : 03/22/2023 13:43:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/BDIO/243511/uloha6/D_schematic.vhf -w C:/BDIO/243511/uloha6/D_schematic.sch
--Design Name: D_schematic
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

entity D_schematic is
   port ( clk   : in    std_logic; 
          D     : in    std_logic; 
          Q1    : out   std_logic; 
          Q1inv : out   std_logic; 
          Q2    : out   std_logic);
end D_schematic;

architecture BEHAVIORAL of D_schematic is
   attribute BOX_TYPE   : string ;
   signal XLXN_3      : std_logic;
   signal XLXN_4      : std_logic;
   signal XLXN_13     : std_logic;
   signal Q1inv_DUMMY : std_logic;
   signal Q1_DUMMY    : std_logic;
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
begin
   Q1 <= Q1_DUMMY;
   Q1inv <= Q1inv_DUMMY;
   XLXI_1 : NAND2
      port map (I0=>clk,
                I1=>D,
                O=>XLXN_3);
   
   XLXI_2 : NAND2
      port map (I0=>D,
                I1=>D,
                O=>XLXN_13);
   
   XLXI_4 : NAND2
      port map (I0=>XLXN_13,
                I1=>clk,
                O=>XLXN_4);
   
   XLXI_6 : NAND2
      port map (I0=>XLXN_4,
                I1=>Q1_DUMMY,
                O=>Q1inv_DUMMY);
   
   XLXI_7 : NAND2
      port map (I0=>Q1inv_DUMMY,
                I1=>XLXN_3,
                O=>Q1_DUMMY);
   
   XLXI_10 : FD
      port map (C=>clk,
                D=>D,
                Q=>Q2);
   
end BEHAVIORAL;


