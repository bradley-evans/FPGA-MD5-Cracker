--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity charAdder is
	Port( Inc, rAddActive, lastAdder : in std_logic;
          lastChar : in std_logic_vector(7 downto 0);
          activeAdder, carry : out std_logic;
          nextChar : out std_logic_vector(7 downto 0));
end charAdder;

architecture Behavioral of charAdder is
-- original settings: end 73, beg 20.
-- alphabetic lower: 61:7A
constant begCharset : std_logic_vector(7 downto 0) := x"61";
constant endCharset : std_logic_vector(7 downto 0) := x"7A";

begin 
	increment : process (Inc, rAddActive, lastAdder, lastChar)
	begin
		nextChar <= x"00";
		carry <= '0';
		activeAdder <= '0';
		if(Inc = '1') then
			activeAdder <= '1';
			if(lastChar = endCharset) then
				nextChar <= begCharset;
				carry <= '1';
			elsif(lastChar = x"80") then
				if(lastAdder = '1') then
					nextChar <= x"80";
				else
					nextChar <= begCharset;
				end if;
			else
				nextChar <= lastChar + 1;
			end if;
		elsif((lastChar = x"00") or (lastChar = x"80")) then
			if(rAddActive = '1') then	
				nextChar <= x"80";
			else
				nextChar <= lastChar;
			end if;
		else
			activeAdder <= '1';
			nextChar <= lastChar;
		end if;
	end process;
end Behavioral;