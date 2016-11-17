-- Vhdl test bench created from schematic C:\Users\bevans\Desktop\FPGA-MD5-Cracker\FPGA\First_MD5_Crack.sch - Thu Nov 17 01:41:29 2016
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
ENTITY First_MD5_Crack_First_MD5_Crack_sch_tb IS
END First_MD5_Crack_First_MD5_Crack_sch_tb;
ARCHITECTURE behavioral OF First_MD5_Crack_First_MD5_Crack_sch_tb IS 

   COMPONENT First_MD5_Crack
   PORT( AdderNum	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          Reset	:	IN	STD_LOGIC; 
          Clk	:	IN	STD_LOGIC; 
          Run	:	IN	STD_LOGIC; 
          UserHash	:	IN	STD_LOGIC_VECTOR (127 DOWNTO 0); 
          Found	:	OUT	STD_LOGIC; 
          w0_Out	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w1_Out	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w2_Out	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w3_Out	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w4_Out	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w0_Count	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w1_Count	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w2_Count	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w3_Count	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          w4_Count	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0));
   END COMPONENT;

   SIGNAL AdderNum	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL Reset	:	STD_LOGIC;
   SIGNAL Clk	:	STD_LOGIC;
   SIGNAL Run	:	STD_LOGIC;
   SIGNAL UserHash	:	STD_LOGIC_VECTOR (127 DOWNTO 0);
   SIGNAL Found	:	STD_LOGIC;
   SIGNAL w0_Out	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w1_Out	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w2_Out	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w3_Out	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w4_Out	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w0_Count	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w1_Count	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w2_Count	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w3_Count	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL w4_Count	:	STD_LOGIC_VECTOR (31 DOWNTO 0);

BEGIN

   UUT: First_MD5_Crack PORT MAP(
		AdderNum => AdderNum, 
		Reset => Reset, 
		Clk => Clk, 
		Run => Run, 
		UserHash => UserHash, 
		Found => Found, 
		w0_Out => w0_Out, 
		w1_Out => w1_Out, 
		w2_Out => w2_Out, 
		w3_Out => w3_Out, 
		w4_Out => w4_Out, 
		w0_Count => w0_Count, 
		w1_Count => w1_Count, 
		w2_Count => w2_Count, 
		w3_Count => w3_Count, 
		w4_Count => w4_Count
   );

-- *** Test Bench - User Defined Section ***
	clock : PROCESS
	BEGIN
		Clk <= '1';
		wait for 10 ps;
		Clk <= '0';
		wait for 10 ps;
	END PROCESS;
   data : PROCESS
   BEGIN
		UserHash <= x"74b87337454200d4d33f80c4663dc5e5";
		Run <= '1';
		Reset <= '0';
		AdderNum <= x"0";
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
