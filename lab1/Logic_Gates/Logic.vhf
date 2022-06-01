--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Logic.vhf
-- /___/   /\     Timestamp : 06/01/2022 16:56:15
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family zynq -flat -suppress -vhdl H:/Desktop/SOF1/lab1/Logic_Gates/Logic.vhf -w H:/Desktop/SOF1/lab1/Logic_Gates/Logic.sch
--Design Name: Logic
--Device: zynq
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Logic is
   port ( SW0   : in    std_logic; 
          SW1   : in    std_logic; 
          GREEN : out   std_logic; 
          RED   : out   std_logic);
end Logic;

architecture BEHAVIORAL of Logic is
   attribute BOX_TYPE   : string ;
   signal GREEN_DUMMY : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   GREEN <= GREEN_DUMMY;
   XLXI_1 : INV
      port map (I=>GREEN_DUMMY,
                O=>RED);
   
   XLXI_2 : AND2
      port map (I0=>SW1,
                I1=>SW0,
                O=>GREEN_DUMMY);
   
end BEHAVIORAL;


