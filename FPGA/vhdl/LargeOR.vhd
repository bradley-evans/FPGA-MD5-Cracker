--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LargeOR is
	Port ( FoundBus : in std_logic_vector(15 downto 0);
		   Found : out std_logic);
end LargeOR;

architecture Behavioral of LargeOR is
begin
	process (FoundBus)
	begin
		if (Foundbus = x"0000") then
			Found <= '0';
		else
			Found <= '1';
		end if;
	end process;
end Behavioral;