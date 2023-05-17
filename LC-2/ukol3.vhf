--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ukol3.vhf
-- /___/   /\     Timestamp : 02/22/2023 15:12:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/BDIO/243511/uloha2/ukol3.vhf -w C:/BDIO/243511/uloha2/ukol3.sch
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

entity D3_8E_MXILINX_ukol3 is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          A2 : in    std_logic; 
          E  : in    std_logic; 
          D0 : out   std_logic; 
          D1 : out   std_logic; 
          D2 : out   std_logic; 
          D3 : out   std_logic; 
          D4 : out   std_logic; 
          D5 : out   std_logic; 
          D6 : out   std_logic; 
          D7 : out   std_logic);
end D3_8E_MXILINX_ukol3;

architecture BEHAVIORAL of D3_8E_MXILINX_ukol3 is
   attribute BOX_TYPE   : string ;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND4B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B1 : component is "BLACK_BOX";
   
   component AND4B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B2 : component is "BLACK_BOX";
   
   component AND4B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B3 : component is "BLACK_BOX";
   
begin
   I_36_30 : AND4
      port map (I0=>A2,
                I1=>A1,
                I2=>A0,
                I3=>E,
                O=>D7);
   
   I_36_31 : AND4B1
      port map (I0=>A0,
                I1=>A2,
                I2=>A1,
                I3=>E,
                O=>D6);
   
   I_36_32 : AND4B1
      port map (I0=>A1,
                I1=>A2,
                I2=>A0,
                I3=>E,
                O=>D5);
   
   I_36_33 : AND4B2
      port map (I0=>A1,
                I1=>A0,
                I2=>A2,
                I3=>E,
                O=>D4);
   
   I_36_34 : AND4B1
      port map (I0=>A2,
                I1=>A0,
                I2=>A1,
                I3=>E,
                O=>D3);
   
   I_36_35 : AND4B2
      port map (I0=>A2,
                I1=>A0,
                I2=>A1,
                I3=>E,
                O=>D2);
   
   I_36_36 : AND4B2
      port map (I0=>A2,
                I1=>A1,
                I2=>A0,
                I3=>E,
                O=>D1);
   
   I_36_37 : AND4B3
      port map (I0=>A2,
                I1=>A1,
                I2=>A0,
                I3=>E,
                O=>D0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ukol3 is
   port ( a : in    std_logic; 
          b : in    std_logic; 
          c : in    std_logic; 
          y : out   std_logic);
end ukol3;

architecture BEHAVIORAL of ukol3 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_4  : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_15 : std_logic;
   component D3_8E_MXILINX_ukol3
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic; 
             D4 : out   std_logic; 
             D5 : out   std_logic; 
             D6 : out   std_logic; 
             D7 : out   std_logic);
   end component;
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
begin
   XLXI_1 : D3_8E_MXILINX_ukol3
      port map (A0=>a,
                A1=>b,
                A2=>c,
                E=>XLXN_15,
                D0=>XLXN_4,
                D1=>open,
                D2=>open,
                D3=>open,
                D4=>open,
                D5=>XLXN_11,
                D6=>open,
                D7=>XLXN_12);
   
   XLXI_2 : OR3
      port map (I0=>XLXN_12,
                I1=>XLXN_11,
                I2=>XLXN_4,
                O=>y);
   
   XLXI_4 : VCC
      port map (P=>XLXN_15);
   
end BEHAVIORAL;


