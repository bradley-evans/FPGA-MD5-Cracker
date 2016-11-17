--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:41:52 11/16/2016
-- Design Name:   
-- Module Name:   C:/Users/bevans/Desktop/FPGA-MD5-Cracker/FPGA/MD5_tbw.vhd
-- Project Name:  MD5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MD5
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
 
ENTITY MD5_tbw IS
END MD5_tbw;
 
ARCHITECTURE behavior OF MD5_tbw IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MD5
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         Run : IN  std_logic;
         FirstRun : IN  std_logic;
         w0 : IN  std_logic_vector(31 downto 0);
         w1 : IN  std_logic_vector(31 downto 0);
         w2 : IN  std_logic_vector(31 downto 0);
         w3 : IN  std_logic_vector(31 downto 0);
         w4 : IN  std_logic_vector(31 downto 0);
         w5 : IN  std_logic_vector(31 downto 0);
         w6 : IN  std_logic_vector(31 downto 0);
         w7 : IN  std_logic_vector(31 downto 0);
         w8 : IN  std_logic_vector(31 downto 0);
         w9 : IN  std_logic_vector(31 downto 0);
         w10 : IN  std_logic_vector(31 downto 0);
         w11 : IN  std_logic_vector(31 downto 0);
         w12 : IN  std_logic_vector(31 downto 0);
         w13 : IN  std_logic_vector(31 downto 0);
         w14 : IN  std_logic_vector(31 downto 0);
         w15 : IN  std_logic_vector(31 downto 0);
         Done : OUT  std_logic;
         Hash_1 : OUT  std_logic_vector(31 downto 0);
         Hash_2 : OUT  std_logic_vector(31 downto 0);
         Hash_3 : OUT  std_logic_vector(31 downto 0);
         Hash_4 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Run : std_logic := '0';
   signal FirstRun : std_logic := '0';
   signal w0 : std_logic_vector(31 downto 0) := (others => '0');
   signal w1 : std_logic_vector(31 downto 0) := (others => '0');
   signal w2 : std_logic_vector(31 downto 0) := (others => '0');
   signal w3 : std_logic_vector(31 downto 0) := (others => '0');
   signal w4 : std_logic_vector(31 downto 0) := (others => '0');
   signal w5 : std_logic_vector(31 downto 0) := (others => '0');
   signal w6 : std_logic_vector(31 downto 0) := (others => '0');
   signal w7 : std_logic_vector(31 downto 0) := (others => '0');
   signal w8 : std_logic_vector(31 downto 0) := (others => '0');
   signal w9 : std_logic_vector(31 downto 0) := (others => '0');
   signal w10 : std_logic_vector(31 downto 0) := (others => '0');
   signal w11 : std_logic_vector(31 downto 0) := (others => '0');
   signal w12 : std_logic_vector(31 downto 0) := (others => '0');
   signal w13 : std_logic_vector(31 downto 0) := (others => '0');
   signal w14 : std_logic_vector(31 downto 0) := (others => '0');
   signal w15 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Done : std_logic;
   signal Hash_1 : std_logic_vector(31 downto 0);
   signal Hash_2 : std_logic_vector(31 downto 0);
   signal Hash_3 : std_logic_vector(31 downto 0);
   signal Hash_4 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MD5 PORT MAP (
          Clk => Clk,
          Reset => Reset,
          Run => Run,
          FirstRun => FirstRun,
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
          Done => Done,
          Hash_1 => Hash_1,
          Hash_2 => Hash_2,
          Hash_3 => Hash_3,
          Hash_4 => Hash_4
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
      w0 <= x"61616161";
		w1 <= x"00000080";
		w2 <= x"00000000";
		w3 <= x"00000000";
		w4 <= x"00000000";
		w5 <= x"00000000";
		w6 <= x"00000000";
		w7 <= x"00000000";
		w8 <= x"00000000";
		w9 <= x"00000000";
		w10 <= x"00000000";
		w11 <= x"00000000";
		w12 <= x"00000000";
		w13 <= x"00000000";
		w14 <= x"00000020";
		w15 <= x"00000000";
		wait;
   end process;

	firstrun_proc: process
	begin
		Reset <= '1';
		wait for 50 ps;
		Reset <= '0';
		FirstRun <= '1';
		wait for 50 ps;
		FirstRun <= '0';
		Run <= '1';
		wait;
	end process;
END;
