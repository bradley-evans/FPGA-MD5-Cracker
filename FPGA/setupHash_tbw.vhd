--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:18:59 11/17/2016
-- Design Name:   
-- Module Name:   C:/Users/bevans/Desktop/FPGA-MD5-Cracker/FPGA/setupHash_tbw.vhd
-- Project Name:  MD5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: setupHash
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
 
ENTITY setupHash_tbw IS
END setupHash_tbw;
 
ARCHITECTURE behavior OF setupHash_tbw IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT setupHash
    PORT(
         Hash_1 : IN  std_logic_vector(31 downto 0);
         Hash_2 : IN  std_logic_vector(31 downto 0);
         Hash_3 : IN  std_logic_vector(31 downto 0);
         Hash_4 : IN  std_logic_vector(31 downto 0);
         Hash_Out : OUT  std_logic_vector(127 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Hash_1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Hash_2 : std_logic_vector(31 downto 0) := (others => '0');
   signal Hash_3 : std_logic_vector(31 downto 0) := (others => '0');
   signal Hash_4 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Hash_Out : std_logic_vector(127 downto 0) := (others => '0') ;
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: setupHash PORT MAP (
          Hash_1 => Hash_1,
          Hash_2 => Hash_2,
          Hash_3 => Hash_3,
          Hash_4 => Hash_4,
          Hash_Out => Hash_Out
        );


   -- Stimulus process
   stim_proc: process
   begin		
		
		Hash_1 <= x"3773b874";
		Hash_2 <= x"d4004245";
		Hash_3 <= x"c4803fd3";
		Hash_4 <= x"e5c53d66";
		wait;

   end process;

END;
