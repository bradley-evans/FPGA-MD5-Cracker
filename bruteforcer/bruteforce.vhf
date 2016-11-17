--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : bruteforce.vhf
-- /___/   /\     Timestamp : 11/16/2016 18:52:38
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3a -flat -suppress -vhdl C:/Users/bevans/Desktop/FPGA-MD5-Cracker/bruteforcer/bruteforce.vhf -w C:/Users/bevans/Desktop/FPGA-MD5-Cracker/bruteforcer/bruteforce.sch
--Design Name: bruteforce
--Device: spartan3a
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bruteforce is
   port ( AdderNum     : in    std_logic_vector (3 downto 0); 
          inc          : in    std_logic; 
          w0_in        : in    std_logic_vector (31 downto 0); 
          w1_in        : in    std_logic_vector (31 downto 0); 
          w2_in        : in    std_logic_vector (31 downto 0); 
          w3_in        : in    std_logic_vector (31 downto 0); 
          w4_in        : in    std_logic_vector (31 downto 0); 
          ActiveAdders : out   std_logic_vector (18 downto 0); 
          w0           : out   std_logic_vector (31 downto 0); 
          w1           : out   std_logic_vector (31 downto 0); 
          w2           : out   std_logic_vector (31 downto 0); 
          w3           : out   std_logic_vector (31 downto 0); 
          w4           : out   std_logic_vector (31 downto 0));
end bruteforce;

architecture BEHAVIORAL of bruteforce is
   attribute BOX_TYPE   : string ;
   signal XLXN_10            : std_logic;
   signal XLXN_12            : std_logic;
   signal XLXN_14            : std_logic;
   signal XLXN_30            : std_logic;
   signal XLXN_38            : std_logic;
   signal XLXN_39            : std_logic;
   signal XLXN_40            : std_logic;
   signal XLXN_168           : std_logic;
   signal XLXN_169           : std_logic;
   signal XLXN_170           : std_logic;
   signal XLXN_191           : std_logic;
   signal XLXN_192           : std_logic;
   signal XLXN_193           : std_logic;
   signal XLXN_249           : std_logic;
   signal XLXN_251           : std_logic;
   signal XLXN_253           : std_logic;
   signal XLXN_554           : std_logic;
   signal XLXN_555           : std_logic;
   signal XLXN_556           : std_logic;
   signal XLXN_582           : std_logic;
   signal XLXN_585           : std_logic;
   signal XLXN_588           : std_logic;
   signal ActiveAdders_DUMMY : std_logic_vector (18 downto 0);
   component charAdder
      port ( Inc         : in    std_logic; 
             rAddActive  : in    std_logic; 
             lastAdder   : in    std_logic; 
             lastChar    : in    std_logic_vector (7 downto 0); 
             activeAdder : out   std_logic; 
             carry       : out   std_logic; 
             nextChar    : out   std_logic_vector (7 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component firstCharAdder
      port ( Inc         : in    std_logic; 
             rAddActive  : in    std_logic; 
             adderNum    : in    std_logic_vector (3 downto 0); 
             lastChar    : in    std_logic_vector (7 downto 0); 
             activeAdder : out   std_logic; 
             carry       : out   std_logic; 
             nextChar    : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   ActiveAdders(18 downto 0) <= ActiveAdders_DUMMY(18 downto 0);
   XLXI_27 : charAdder
      port map (Inc=>XLXN_14,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w4_in(15 downto 8),
                rAddActive=>ActiveAdders_DUMMY(16),
                activeAdder=>ActiveAdders_DUMMY(17),
                carry=>XLXN_12,
                nextChar(7 downto 0)=>w4(15 downto 8));
   
   XLXI_30 : charAdder
      port map (Inc=>XLXN_12,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w4_in(23 downto 16),
                rAddActive=>ActiveAdders_DUMMY(17),
                activeAdder=>ActiveAdders_DUMMY(18),
                carry=>XLXN_10,
                nextChar(7 downto 0)=>w4(23 downto 16));
   
   XLXI_31 : charAdder
      port map (Inc=>XLXN_10,
                lastAdder=>XLXN_30,
                lastChar(7 downto 0)=>w4_in(31 downto 24),
                rAddActive=>ActiveAdders_DUMMY(18),
                activeAdder=>open,
                carry=>open,
                nextChar(7 downto 0)=>w4(31 downto 24));
   
   XLXI_41 : charAdder
      port map (Inc=>XLXN_249,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w4_in(7 downto 0),
                rAddActive=>ActiveAdders_DUMMY(15),
                activeAdder=>ActiveAdders_DUMMY(16),
                carry=>XLXN_14,
                nextChar(7 downto 0)=>w4(7 downto 0));
   
   XLXI_138 : VCC
      port map (P=>XLXN_30);
   
   XLXI_142 : charAdder
      port map (Inc=>XLXN_38,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w3_in(31 downto 24),
                rAddActive=>ActiveAdders_DUMMY(14),
                activeAdder=>ActiveAdders_DUMMY(15),
                carry=>XLXN_249,
                nextChar(7 downto 0)=>w3(31 downto 24));
   
   XLXI_143 : charAdder
      port map (Inc=>XLXN_40,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w3_in(15 downto 8),
                rAddActive=>ActiveAdders_DUMMY(12),
                activeAdder=>ActiveAdders_DUMMY(13),
                carry=>XLXN_39,
                nextChar(7 downto 0)=>w3(15 downto 8));
   
   XLXI_144 : charAdder
      port map (Inc=>XLXN_251,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w3_in(7 downto 0),
                rAddActive=>ActiveAdders_DUMMY(11),
                activeAdder=>ActiveAdders_DUMMY(12),
                carry=>XLXN_40,
                nextChar(7 downto 0)=>w3(7 downto 0));
   
   XLXI_145 : charAdder
      port map (Inc=>XLXN_39,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w3_in(23 downto 16),
                rAddActive=>ActiveAdders_DUMMY(13),
                activeAdder=>ActiveAdders_DUMMY(14),
                carry=>XLXN_38,
                nextChar(7 downto 0)=>w3(23 downto 16));
   
   XLXI_225 : charAdder
      port map (Inc=>XLXN_168,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w2_in(31 downto 24),
                rAddActive=>ActiveAdders_DUMMY(10),
                activeAdder=>ActiveAdders_DUMMY(11),
                carry=>XLXN_251,
                nextChar(7 downto 0)=>w2(31 downto 24));
   
   XLXI_226 : charAdder
      port map (Inc=>XLXN_170,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w2_in(15 downto 8),
                rAddActive=>ActiveAdders_DUMMY(8),
                activeAdder=>ActiveAdders_DUMMY(9),
                carry=>XLXN_169,
                nextChar(7 downto 0)=>w2(15 downto 8));
   
   XLXI_227 : charAdder
      port map (Inc=>XLXN_253,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w2_in(7 downto 0),
                rAddActive=>ActiveAdders_DUMMY(7),
                activeAdder=>ActiveAdders_DUMMY(8),
                carry=>XLXN_170,
                nextChar(7 downto 0)=>w2(7 downto 0));
   
   XLXI_228 : charAdder
      port map (Inc=>XLXN_169,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w2_in(23 downto 16),
                rAddActive=>ActiveAdders_DUMMY(9),
                activeAdder=>ActiveAdders_DUMMY(10),
                carry=>XLXN_168,
                nextChar(7 downto 0)=>w2(23 downto 16));
   
   XLXI_232 : GND
      port map (G=>XLXN_585);
   
   XLXI_237 : charAdder
      port map (Inc=>XLXN_192,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w1_in(23 downto 16),
                rAddActive=>ActiveAdders_DUMMY(5),
                activeAdder=>ActiveAdders_DUMMY(6),
                carry=>XLXN_193,
                nextChar(7 downto 0)=>w1(23 downto 16));
   
   XLXI_239 : charAdder
      port map (Inc=>XLXN_191,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w1_in(15 downto 8),
                rAddActive=>ActiveAdders_DUMMY(4),
                activeAdder=>ActiveAdders_DUMMY(5),
                carry=>XLXN_192,
                nextChar(7 downto 0)=>w1(15 downto 8));
   
   XLXI_240 : charAdder
      port map (Inc=>XLXN_193,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w1_in(31 downto 24),
                rAddActive=>ActiveAdders_DUMMY(6),
                activeAdder=>ActiveAdders_DUMMY(7),
                carry=>XLXN_253,
                nextChar(7 downto 0)=>w1(31 downto 24));
   
   XLXI_299 : charAdder
      port map (Inc=>XLXN_582,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w1_in(7 downto 0),
                rAddActive=>ActiveAdders_DUMMY(3),
                activeAdder=>ActiveAdders_DUMMY(4),
                carry=>XLXN_191,
                nextChar(7 downto 0)=>w1(7 downto 0));
   
   XLXI_336 : charAdder
      port map (Inc=>XLXN_555,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w0_in(23 downto 16),
                rAddActive=>ActiveAdders_DUMMY(1),
                activeAdder=>ActiveAdders_DUMMY(2),
                carry=>XLXN_556,
                nextChar(7 downto 0)=>w0(23 downto 16));
   
   XLXI_337 : charAdder
      port map (Inc=>XLXN_554,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w0_in(15 downto 8),
                rAddActive=>ActiveAdders_DUMMY(0),
                activeAdder=>ActiveAdders_DUMMY(1),
                carry=>XLXN_555,
                nextChar(7 downto 0)=>w0(15 downto 8));
   
   XLXI_338 : charAdder
      port map (Inc=>XLXN_556,
                lastAdder=>XLXN_585,
                lastChar(7 downto 0)=>w0_in(31 downto 24),
                rAddActive=>ActiveAdders_DUMMY(2),
                activeAdder=>ActiveAdders_DUMMY(3),
                carry=>XLXN_582,
                nextChar(7 downto 0)=>w0(31 downto 24));
   
   XLXI_344 : firstCharAdder
      port map (adderNum(3 downto 0)=>AdderNum(3 downto 0),
                Inc=>inc,
                lastChar(7 downto 0)=>w0_in(7 downto 0),
                rAddActive=>XLXN_588,
                activeAdder=>ActiveAdders_DUMMY(0),
                carry=>XLXN_554,
                nextChar(7 downto 0)=>w0(7 downto 0));
   
   XLXI_345 : VCC
      port map (P=>XLXN_588);
   
end BEHAVIORAL;


