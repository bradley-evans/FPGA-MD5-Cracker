-- Vhdl test bench created from schematic C:\Users\bevans\Desktop\FPGA-MD5-Cracker\FPGA\bruteforce.sch - Wed Nov 16 23:08:32 2016
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
	
   CONSTANT clk_period : time := 10 ps;

   SIGNAL w4	:	STD_LOGIC_VECTOR (31 DOWNTO 0) 	:= x"00000000";
   SIGNAL w4_in	:	STD_LOGIC_VECTOR (31 DOWNTO 0) := x"00000000";
   SIGNAL w3_in	:	STD_LOGIC_VECTOR (31 DOWNTO 0) := x"00000000";
   SIGNAL w3	:	STD_LOGIC_VECTOR (31 DOWNTO 0) := x"00000000";
   SIGNAL w2	:	STD_LOGIC_VECTOR (31 DOWNTO 0) := x"00000000";
   SIGNAL w1	:	STD_LOGIC_VECTOR (31 DOWNTO 0) := x"00000000";
   SIGNAL w2_in	:	STD_LOGIC_VECTOR (31 DOWNTO 0) := x"00000000";
   SIGNAL w1_in	:	STD_LOGIC_VECTOR (31 DOWNTO 0) := x"00000000";
   SIGNAL w0	:	STD_LOGIC_VECTOR (31 DOWNTO 0) := x"00000000";
   SIGNAL w0_in	:	STD_LOGIC_VECTOR (31 DOWNTO 0) := x"00000000";
   SIGNAL ActiveAdders	:	STD_LOGIC_VECTOR (18 DOWNTO 0);
   SIGNAL inc	:	STD_LOGIC;
   SIGNAL AdderNum	:	STD_LOGIC_VECTOR (3 DOWNTO 0) := x"0";

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
   clock : PROCESS
   BEGIN
		inc <= '0';
      wait for clk_period/2;  --for 0.5 ns signal is '0'.
      inc <= '1';
      wait for clk_period/2;  --for next 0.5 ns signal is '1'.
   END PROCESS;   

	data : PROCESS
   BEGIN
		wait for clk_period/2;
		w4_in <= w4;
		w3_in <= w3;
		w2_in <= w2;
		w1_in <= w1;
		w0_in <= w0;
   END PROCESS;
	
-- *** End Test Bench - User Defined Section ***

END;
