--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : gates.vhf
-- /___/   /\     Timestamp : 02/08/2023 14:13:44
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/BDIO/243511/ukol1/gates.vhf -w C:/BDIO/243511/ukol1/gates.sch
--Design Name: gates
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

entity gates is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          OUT0 : out   std_logic; 
          OUT1 : out   std_logic; 
          OUT2 : out   std_logic; 
          OUT3 : out   std_logic; 
          OUT4 : out   std_logic; 
          OUT5 : out   std_logic; 
          OUT6 : out   std_logic);
end gates;

architecture BEHAVIORAL of gates is
   attribute BOX_TYPE   : string ;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>B,
                I1=>A,
                O=>OUT0);
   
   XLXI_2 : NAND2
      port map (I0=>B,
                I1=>A,
                O=>OUT1);
   
   XLXI_3 : OR2
      port map (I0=>B,
                I1=>A,
                O=>OUT2);
   
   XLXI_4 : NOR2
      port map (I0=>B,
                I1=>A,
                O=>OUT3);
   
   XLXI_5 : XOR2
      port map (I0=>B,
                I1=>A,
                O=>OUT4);
   
   XLXI_6 : XNOR2
      port map (I0=>B,
                I1=>A,
                O=>OUT5);
   
   XLXI_7 : INV
      port map (I=>A,
                O=>OUT6);
   
end BEHAVIORAL;


