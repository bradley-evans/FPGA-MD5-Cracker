-- Vhdl test bench created from schematic C:\Users\bevans\Desktop\FPGA-MD5-Cracker\FPGA\Interface.sch - Mon Nov 21 20:04:00 2016
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
ENTITY Interface_Interface_sch_tb IS
END Interface_Interface_sch_tb;
ARCHITECTURE behavioral OF Interface_Interface_sch_tb IS 

   COMPONENT Interface
   PORT( AVR_IN	:	IN	STD_LOGIC; 
          AVR_CLK	:	IN	STD_LOGIC; 
          AVR_RST	:	IN	STD_LOGIC; 
          AVR_EN	:	IN	STD_LOGIC; 
          found	:	OUT	STD_LOGIC; 
          word_out	:	OUT	STD_LOGIC_VECTOR (159 DOWNTO 0); 
          HASH_RDY	:	OUT	STD_LOGIC; 
          MD5_RST	:	IN	STD_LOGIC; 
          MD5_RUN	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC;
			 w0 : OUT STD_LOGIC_VECTOR (31 downto 0);
			 w1 : OUT STD_LOGIC_VECTOR (31 downto 0);
			 w2 : OUT STD_LOGIC_VECTOR (31 downto 0);
			 w3 : OUT STD_LOGIC_VECTOR (31 downto 0);
			 w4 : OUT STD_LOGIC_VECTOR (31 downto 0) );
   END COMPONENT;

   SIGNAL AVR_IN	:	STD_LOGIC;
   SIGNAL AVR_CLK	:	STD_LOGIC;
   SIGNAL AVR_RST	:	STD_LOGIC;
   SIGNAL AVR_EN	:	STD_LOGIC;
   SIGNAL found	:	STD_LOGIC;
   SIGNAL word_out	:	STD_LOGIC_VECTOR (159 DOWNTO 0);
   SIGNAL HASH_RDY	:	STD_LOGIC;
   SIGNAL MD5_RST	:	STD_LOGIC;
   SIGNAL MD5_RUN	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC;
	SIGNAL w0 : STD_LOGIC_VECTOR (31 downto 0);
	SIGNAL w1 : STD_LOGIC_VECTOR (31 downto 0);
	SIGNAL w2 : STD_LOGIC_VECTOR (31 downto 0);
	SIGNAL w3 : STD_LOGIC_VECTOR (31 downto 0);
	SIGNAL w4 : STD_LOGIC_VECTOR (31 downto 0);
	SIGNAL hash : STD_LOGIC_VECTOR (127 downto 0) := x"74b87337454200d4d33f80c4663dc5e5";

BEGIN

   UUT: Interface PORT MAP(
		AVR_IN => AVR_IN, 
		AVR_CLK => AVR_CLK, 
		AVR_RST => AVR_RST, 
		AVR_EN => AVR_EN, 
		found => found, 
		w0 => w0,
		w1 => w1,
		w2 => w2,
		w3 => w3,
		w4 => w4,
		word_out => word_out, 
		HASH_RDY => HASH_RDY, 
		MD5_RST => MD5_RST, 
		MD5_RUN => MD5_RUN, 
		clk => clk
   );

-- *** Test Bench - User Defined Section ***

	avr_clock : PROCESS
	BEGIN
		clk <= '0';
		AVR_CLK <= '0';
		wait for 0.5 ns;
		clk <= '1';
		AVR_CLK <= '1';
		wait for 0.5 ns;
	
	END PROCESS;
	
   avr_hash_input_test : PROCESS
   BEGIN
		-- initialization
		MD5_RUN <= '0';
		MD5_RST <= '0';
		AVR_EN <= '0';
		AVR_IN <= '0';
		AVR_RST <= '0';
		
		wait for 10 ns;
		AVR_EN <= '1';
		wait for 2 ns;
		AVR_RST <= '1';
		MD5_RST <= '1';
		wait for 2 ns;
		AVR_RST <= '0';
		AVR_EN <= '0';
		MD5_RST <= '0';
		wait for 2 ns;
		AVR_EN <= '1';
		FOR I in 0 to 127 LOOP
			AVR_IN <= hash(I);
			wait for 1 ns;
		END LOOP;
		AVR_EN <= '0';
		wait for 1 ns;
		MD5_RUN <= '1';
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
