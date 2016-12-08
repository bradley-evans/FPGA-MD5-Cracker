----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:14:51 12/07/2016 
-- Design Name: 
-- Module Name:    lcd_parser - Behavioral 
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

entity lcd_parser is
    Port ( word_in : in  STD_LOGIC_VECTOR (159 downto 0);
           line1 : out STD_LOGIC_VECTOR (127 downto 0);
           line2 : out  STD_LOGIC_VECTOR (127 downto 0));
end lcd_parser;

architecture Behavioral of lcd_parser is

	signal line1_signal : std_logic_vector(127 downto 0);	
	signal line2_signal : std_logic_vector(127 downto 0);	


begin
	
	
	line1 <= word_in(127 downto 0);
	line2 <= (others => '0');
		
	
end Behavioral;

