--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity VGAAsciiInterpreter is
   Port (  curr_char : std_logic_vector(7 downto 0); --An Ascii character
           DrawX : in std_logic_vector(9 downto 0); 
           DrawY : in std_logic_vector(9 downto 0);
           font_data : in std_logic_vector(7 downto 0);  --The current 8-pixel row for the character
           draw_hash, draw_word, draw_background : in std_logic; --Bools telling if we're drawing from hash, word, or neither
           font_addr : out std_logic_vector(10 downto 0); --Tells font_rom which character we're on
           Red,Green,Blue : out std_logic_vector(9 downto 0)); -- the 8-bit RGB outputs for the current pixel.
end VGAAsciiInterpreter;

architecture Behavioral of VGAAsciiInterpreter is
begin
	font_addr <= curr_char(6 downto 0) & DrawY(3 downto 0); -- first 7 bits choose the character, last 4 bits choose which row DrawY is currently on.
	
OutputCtl : process(DrawX, DrawY, font_data, draw_hash, draw_word,draw_background)
begin
if((draw_hash = '1') or (draw_word = '1') or (draw_background = '1')) then

	case DrawX(2 downto 0) is

		when "111" =>
			Red <= font_data(0) & "000000000"; --I didn't feel like doing an if statement, so I guess the letters will be gray instead of white.
			Green <= font_data(0) & "000000000";
			Blue <= font_data(0) & "000000000";
		when "110" =>
			Red <= font_data(1) & "000000000";
			Green <= font_data(1) & "000000000";
			Blue <= font_data(1) & "000000000";
		when "101" =>
			Red <= font_data(2) & "000000000";
			Green <= font_data(2) & "000000000";
			Blue <= font_data(2) & "000000000";
		when "100" =>
			Red <= font_data(3) & "000000000";
			Green <= font_data(3) & "000000000";
			Blue <= font_data(3) & "000000000";
		when "011" =>
			Red <= font_data(4) & "000000000";
			Green <= font_data(4) & "000000000";
			Blue <= font_data(4) & "000000000";
		when "010" =>
			Red <= font_data(5) & "000000000";
			Green <= font_data(5) & "000000000";
			Blue <= font_data(5) & "000000000";
		when "001" =>
			Red <= font_data(6) & "000000000";
			Green <= font_data(6) & "000000000";
			Blue <= font_data(6) & "000000000";
		when "000" =>
			Red <= font_data(7) & "000000000";
			Green <= font_data(7) & "000000000";
			Blue <= font_data(7) & "000000000";
		when others =>
			Red <= "0000000000";
			Green <= "0000000000";
			Blue <= "0000000000";
	end case;
else
	Red <= "0000000000";
	Green <= "0000000000";
	Blue <= "0000000000";

end if;

end process;

end Behavioral;