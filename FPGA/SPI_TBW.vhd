--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:13:34 11/21/2016
-- Design Name:   
-- Module Name:   C:/Users/bevans/Desktop/FPGA-MD5-Cracker/FPGA/SPI_TBW.vhd
-- Project Name:  MD5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SPI_Slave
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY SPI_TBW IS
END SPI_TBW;
 
ARCHITECTURE behavior OF SPI_TBW IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SPI_Slave
    PORT(
         AVR_IN : IN  std_logic;
         AVR_CLK : IN  std_logic;
         RST : IN  std_logic;
         ENABLE : IN  std_logic;
         READY : OUT  std_logic;
         HASH_OUT : OUT  std_logic_vector(127 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal AVR_IN : std_logic := '0';
   signal AVR_CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal ENABLE : std_logic := '0';

 	--Outputs
   signal READY : std_logic;
   signal HASH_OUT : std_logic_vector(127 downto 0);

   -- Clock period definitions
   constant AVR_CLK_period : time := 2 ps;
 
 
	
	SIGNAL hash : STD_LOGIC_VECTOR (127 downto 0) := x"74b87337454200d4d33f80c4663dc5e5";
	
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SPI_Slave PORT MAP (
          AVR_IN => AVR_IN,
          AVR_CLK => AVR_CLK,
          RST => RST,
          ENABLE => ENABLE,
          READY => READY,
          HASH_OUT => HASH_OUT
        );

   -- Clock process definitions
   AVR_CLK_process :process
   begin
		AVR_CLK <= '0';
		wait for AVR_CLK_period/2;
		AVR_CLK <= '1';
		wait for AVR_CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
		
		wait for 20 ps;
		ENABLE <= '1';
		wait for 4 ps;
		RST <= '1';
		wait for 4 ps;
		RST <= '0';
		ENABLE <= '0';
		wait for 4 ps;
		FOR I in 0 to 127 LOOP
			ENABLE <= '1';
			AVR_IN <= hash(I);
			wait for 2 ps;
		END LOOP;
		wait for 2 ps;
		ENABLE <= '0';

   end process;

END;
