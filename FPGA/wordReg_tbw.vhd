--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:02:57 11/17/2016
-- Design Name:   
-- Module Name:   C:/Users/bevans/Desktop/FPGA-MD5-Cracker/FPGA/wordReg_tbw.vhd
-- Project Name:  MD5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: wordReg
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
 
ENTITY wordReg_tbw IS
END wordReg_tbw;
 
ARCHITECTURE behavior OF wordReg_tbw IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT wordReg
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         Run : IN  std_logic;
         w0_in : IN  std_logic_vector(31 downto 0);
         w1_in : IN  std_logic_vector(31 downto 0);
         w2_in : IN  std_logic_vector(31 downto 0);
         w3_in : IN  std_logic_vector(31 downto 0);
         w4_in : IN  std_logic_vector(31 downto 0);
         w14_in : IN  std_logic_vector(31 downto 0);
         w0 : OUT  std_logic_vector(31 downto 0);
         w1 : OUT  std_logic_vector(31 downto 0);
         w2 : OUT  std_logic_vector(31 downto 0);
         w3 : OUT  std_logic_vector(31 downto 0);
         w4 : OUT  std_logic_vector(31 downto 0);
         w5 : OUT  std_logic_vector(31 downto 0);
         w6 : OUT  std_logic_vector(31 downto 0);
         w7 : OUT  std_logic_vector(31 downto 0);
         w8 : OUT  std_logic_vector(31 downto 0);
         w9 : OUT  std_logic_vector(31 downto 0);
         w10 : OUT  std_logic_vector(31 downto 0);
         w11 : OUT  std_logic_vector(31 downto 0);
         w12 : OUT  std_logic_vector(31 downto 0);
         w13 : OUT  std_logic_vector(31 downto 0);
         w14 : OUT  std_logic_vector(31 downto 0);
         w15 : OUT  std_logic_vector(31 downto 0);
         Done : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Run : std_logic := '0';
   signal w0_in : std_logic_vector(31 downto 0) := (others => '0');
   signal w1_in : std_logic_vector(31 downto 0) := (others => '0');
   signal w2_in : std_logic_vector(31 downto 0) := (others => '0');
   signal w3_in : std_logic_vector(31 downto 0) := (others => '0');
   signal w4_in : std_logic_vector(31 downto 0) := (others => '0');
   signal w14_in : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal w0 : std_logic_vector(31 downto 0);
   signal w1 : std_logic_vector(31 downto 0);
   signal w2 : std_logic_vector(31 downto 0);
   signal w3 : std_logic_vector(31 downto 0);
   signal w4 : std_logic_vector(31 downto 0);
   signal w5 : std_logic_vector(31 downto 0);
   signal w6 : std_logic_vector(31 downto 0);
   signal w7 : std_logic_vector(31 downto 0);
   signal w8 : std_logic_vector(31 downto 0);
   signal w9 : std_logic_vector(31 downto 0);
   signal w10 : std_logic_vector(31 downto 0);
   signal w11 : std_logic_vector(31 downto 0);
   signal w12 : std_logic_vector(31 downto 0);
   signal w13 : std_logic_vector(31 downto 0);
   signal w14 : std_logic_vector(31 downto 0);
   signal w15 : std_logic_vector(31 downto 0);
   signal Done : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: wordReg PORT MAP (
          Clk => Clk,
          Reset => Reset,
          Run => Run,
          w0_in => w0_in,
          w1_in => w1_in,
          w2_in => w2_in,
          w3_in => w3_in,
          w4_in => w4_in,
          w14_in => w14_in,
          w0 => w0,
          w1 => w1,
          w2 => w2,
          w3 => w3,
          w4 => w4,
          w5 => w5,
          w6 => w6,
          w7 => w7,
          w8 => w8,
          w9 => w9,
          w10 => w10,
          w11 => w11,
          w12 => w12,
          w13 => w13,
          w14 => w14,
          w15 => w15,
          Done => Done
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		w0_in <= 	x"61616161";
		w14_in <= 	x"00000020";
		
      wait;
   end process;
	
	run_proc: process
   begin		
      
		wait for 100 ps;
		Run <= '1';
		
      wait;
   end process;

END;
