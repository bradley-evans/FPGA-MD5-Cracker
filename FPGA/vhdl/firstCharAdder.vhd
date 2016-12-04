--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity firstCharAdder is
	Port( Inc, rAddActive : in std_logic;
          adderNum : in std_logic_vector(3 downto 0);
          lastChar : in std_logic_vector(7 downto 0);
          activeAdder, carry : out std_logic;
          nextChar : out std_logic_vector(7 downto 0));
end firstCharAdder;

architecture Behavioral of firstCharAdder is

-- Above has been modified to account for the presence of only two MD5_Crack modules.

begin 
	increment : process (Inc, rAddActive, lastChar, adderNum)
	begin
		nextChar <= x"00";
		carry <= '0';
		activeAdder <= '0';
		if(Inc = '1') then
			activeAdder <= '1';
			-- start at "20", the first printable ascii char
			-- end at "7E", the last printable ascii char
			-- may want to trim this to alphanumeric only, in which case start 
			if(lastChar = x"7A") then 	-- end goes on this line: 		current, 7A = z
				nextChar <= x"61"; 		-- start goes on this line: 	current, 61 = a
				carry <= '1';
			elsif(lastChar = x"7B") then -- end+1 on this line
				nextChar <= x"61";		-- start goes on this line: 	current, 61 = a
			else
				nextChar <= lastChar + 1;
			end if;
		elsif((lastChar = x"00") or (lastChar = x"7B")) then -- end+1 on this line
			if(rAddActive = '1') then	
				nextChar <= x"7B"; -- end+1 on this line
			else
				nextChar <= lastChar;
			end if;
		else
			activeAdder <= '1';
			nextChar <= lastChar;
		end if;
	end process;
end Behavioral;