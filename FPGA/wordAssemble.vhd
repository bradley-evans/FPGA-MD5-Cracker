----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:40:42 11/21/2016 
-- Design Name: 
-- Module Name:    wordAssemble - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity wordAssemble is
    Port ( w0 : in  STD_LOGIC_VECTOR (31 downto 0);
           w1 : in  STD_LOGIC_VECTOR (31 downto 0);
           w2 : in  STD_LOGIC_VECTOR (31 downto 0);
           w3 : in  STD_LOGIC_VECTOR (31 downto 0);
           w4 : in  STD_LOGIC_VECTOR (31 downto 0);
           word_out : out  STD_LOGIC_VECTOR (159 downto 0));
end wordAssemble;

architecture Behavioral of wordAssemble is

begin
	word_out(31 downto 0) <= w0;
	word_out(63 downto 32) <= w1;
	word_out(95 downto 64) <= w2;
	word_out(127 downto 96) <= w3;
	word_out(159 downto 128) <= w4;
end Behavioral;

