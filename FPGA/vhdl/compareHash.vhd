--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity compareHash is
	Port ( clk, Run, Reset : in std_logic;
		   MD5Hash : in std_logic_vector(127 downto 0);
		   UserHash : in std_logic_vector(127 downto 0);
		   Found : out std_logic);
end compareHash;

architecture Behavioral of compareHash is
	signal Hash : std_logic_vector(127 downto 0);
begin
	check_hash : process (Clk, MD5Hash, UserHash, Run, Reset)
	begin
		if (Reset = '1') then
			Found <= '0';
		elsif (rising_edge(clk)) then
			if((UserHash = MD5Hash) and (Run = '1')) then
				Found <= '1';
			end if;
		end if;
	end process;
end Behavioral;
