-- Vhdl test bench created from schematic C:\Users\bevans\Desktop\FPGA-MD5-Cracker\FPGA\bruteforce.sch - Mon Nov 14 22:11:48 2016
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY bruteforce_bruteforce_sch_tb IS
END bruteforce_bruteforce_sch_tb;
ARCHITECTURE behavioral OF bruteforce_bruteforce_sch_tb IS 

   COMPONENT bruteforce
   PORT( w4	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w4_in	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w3_in	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w3	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w2	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w1	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w2_in	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w1_in	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w0	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w0_in	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          ActiveAdders	:	OUT	STD_LOGIC_VECTOR (18 DOWNTO 0); 
          inc	:	IN	STD_LOGIC; 
          AdderNum	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0));
   END COMPONENT;

   SIGNAL w4	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w4_in	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w3_in	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w3	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w2	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w1	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w2_in	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w1_in	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w0	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w0_in	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL ActiveAdders	:	STD_LOGIC_VECTOR (18 DOWNTO 0);
   SIGNAL inc	:	STD_LOGIC;
   SIGNAL AdderNum	:	STD_LOGIC_VECTOR (3 DOWNTO 0);

BEGIN

   UUT: bruteforce PORT MAP(
		w4 => w4, 
		w4_in => w4_in, 
		w3_in => w3_in, 
		w3 => w3, 
		w2 => w2, 
		w1 => w1, 
		w2_in => w2_in, 
		w1_in => w1_in, 
		w0 => w0, 
		w0_in => w0_in, 
		ActiveAdders => ActiveAdders, 
		inc => inc, 
		AdderNum => AdderNum
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		w0_in => '00000000000000000000000000000000';
		w1_in => '00000000000000000000000000000000';
		w2_in => '00000000000000000000000000000000';
		w3_in => '00000000000000000000000000000000';
		w4_in => '00000000000000000000000000000000';
		AdderNum => '0000';
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
