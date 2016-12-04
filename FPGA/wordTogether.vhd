----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:10:29 11/21/2016 
-- Design Name: 
-- Module Name:    wordTogether - Behavioral 
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

entity wordTogether is
    Port ( w0 : in  STD_LOGIC_VECTOR (31 downto 0);
           w1 : in  STD_LOGIC_VECTOR (31 downto 0);
           w2 : in  STD_LOGIC_VECTOR (31 downto 0);
           w3 : in  STD_LOGIC_VECTOR (31 downto 0);
           w4 : in  STD_LOGIC_VECTOR (31 downto 0);
           word_out : out  STD_LOGIC_VECTOR (155 downto 0);
end wordTogether;

architecture Behavioral of wordTogether is

begin

end Behavioral;

