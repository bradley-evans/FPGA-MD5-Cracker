--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity VGAWordControl is
   Port (  w0, w1, w2, w3, w4 : std_logic_vector(31 downto 0);
           DrawX : in std_logic_vector(9 downto 0);
           DrawY : in std_logic_vector(9 downto 0);
           curr_char : out std_logic_vector(7 downto 0);
           draw_word :out std_logic);
end VGAWordControl;

architecture Behavioral of VGAWordControl is

signal curr_word : std_logic_vector(31 downto 0);
signal draw_en : std_logic;

begin
--Ascii text at : http://www.network-science.de/ascii/ (use 3x5 font)
--Ascii table at: http://www.asciitable.com/

GetCurrHashVal : process(DrawX, DrawY, curr_word, w0, w1, w2, w3, w4)
begin

  if((DrawX <= 160) and (DrawY >= 48) and (DrawY < 64)) then -- This is the pixel range for the Word display
	draw_en <= '1';
	
	case DrawX(7 downto 5) is
		when "000" =>
			curr_word <= w0;
		when "001" =>
			curr_word <= w1;
		when "010" =>
			curr_word <= w2;
		when "011" =>
			curr_word <= w3;
		when "100" =>
			curr_word <= w4;
		when others =>
			curr_word <= x"00000000";
	end case;
  else
	draw_en <= '0';
	curr_word <= x"00000000"; --curr_word;
  end if;	

end process;

OutputCtl : process(curr_word, draw_en, DrawX)
begin

	if(draw_en = '1') then
		draw_word <= '1';
		case DrawX(4 downto 3) is
			when "00" =>
				curr_char <= curr_word(31 downto 24);
			when "01" =>
				curr_char <= curr_word(23 downto 16);
			when "10" =>
				curr_char <= curr_word(15 downto 8);
			when "11" =>
				curr_char <= curr_word(7 downto 0);
		end case;		
	else
		curr_char <= "ZZZZZZZZ";
		draw_word <= '0';
	end if;	
end process;
	
end Behavioral;