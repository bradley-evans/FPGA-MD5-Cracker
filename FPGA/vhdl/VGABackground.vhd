--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity VGABackground is
   Port (  DrawX : in std_logic_vector(9 downto 0);
           DrawY : in std_logic_vector(9 downto 0);
           Found, Run : in std_logic;
           curr_char : out std_logic_vector(7 downto 0);
           draw_back :out std_logic);
end VGABackground;

architecture Behavioral of VGABackground is

constant line1: std_logic_vector(159 downto 0) :=          x"54797065204D443520486173682062656C6F773A";
constant line3cracking: std_logic_vector(159 downto 0) :=  x"437261636B696E672E2E2E202020202020202020";
constant line3finished: std_logic_vector(159 downto 0) :=  x"466F756E64212020202020202020202020202020";

signal curr_line : std_logic_vector(159 downto 0);
begin

SetChar : process(DrawX, DrawY, Found, Run)
begin
	case DrawY(5) is
		when '0' =>
			curr_line <= line1;
		when '1' =>
			if(Run = '1') then
				if(Found = '0') then
					curr_line <= line3cracking;
				else
					curr_line <= line3finished;
				end if;
			else
				curr_line <= x"2020202020202020202020202020202020202020";
			end if;
		when others =>
			curr_line <= x"2020202020202020202020202020202020202020";
	end case;
	  
end process;

Output : process(curr_line, DrawX, DrawY)
begin
  if((DrawX < 160) and (((DrawY >= 0) and (DrawY < 16)) or ((DrawY >= 32) and (DrawY < 48))))then
	draw_back <= '1';
	
	case DrawX(9 downto 3) is
		when "0000000" =>	
			curr_char <= curr_line(159 downto 152);
		when "0000001" =>	
			curr_char <= curr_line(151 downto 144);
		when "0000010" =>	
			curr_char <= curr_line(143 downto 136);
		when "0000011" =>	
			curr_char <= curr_line(135 downto 128);
		when "0000100" =>	
			curr_char <= curr_line(127 downto 120);
		when "0000101" =>	
			curr_char <= curr_line(119 downto 112);
		when "0000110" =>	
			curr_char <= curr_line(111 downto 104);
		when "0000111" =>	
			curr_char <= curr_line(103 downto 96);
		when "0001000" =>	
			curr_char <= curr_line(95 downto 88);
		when "0001001" =>	
			curr_char <= curr_line(87 downto 80);
		when "0001010" =>	
			curr_char <= curr_line(79 downto 72);
		when "0001011" =>	
			curr_char <= curr_line(71 downto 64);
		when "0001100" =>	
			curr_char <= curr_line(63 downto 56);
		when "0001101" =>	
			curr_char <= curr_line(55 downto 48);
		when "0001110" =>	
			curr_char <= curr_line(47 downto 40);
		when "0001111" =>	
			curr_char <= curr_line(39 downto 32);
		when "0010000" =>	
			curr_char <= curr_line(31 downto 24);
		when "0010001" =>	
			curr_char <= curr_line(23 downto 16);
		when "0010010" =>	
			curr_char <= curr_line(15 downto 8);
		when "0010011" =>	
			curr_char <= curr_line(7 downto 0);
		when others =>
			curr_char <= "ZZZZZZZZ";
	end case;
	
  else
	draw_back <= '0';
	curr_char <= "ZZZZZZZZ";
  end if;
end process;

end Behavioral;