--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:58:40 12/07/2016
-- Design Name:   
-- Module Name:   C:/Users/bevans/Desktop/FPGA-MD5-Cracker/FPGA/lcd_parser_tbw.vhd
-- Project Name:  MD5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lcd_parser
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
 
ENTITY lcd_parser_tbw IS
END lcd_parser_tbw;
 
ARCHITECTURE behavior OF lcd_parser_tbw IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lcd_parser
    PORT(
         word_in : IN  std_logic_vector(159 downto 0);
         line1 : OUT  std_logic_vector(127 downto 0);
         line2 : OUT  std_logic_vector(127 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal word_in : std_logic_vector(159 downto 0) := (others => '0');

 	--Outputs
   signal line1 : std_logic_vector(127 downto 0);
   signal line2 : std_logic_vector(127 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lcd_parser PORT MAP (
          word_in => word_in,
          line1 => line1,
          line2 => line2
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
			
			word_in <= x"20202020202020202020202020202068656c6c6f";
      -- insert stimulus here 

      wait;
   end process;

END;
