--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Dreg is
	Port ( D, Clk, reset: in std_logic;
		   Q: out std_logic);
end Dreg;

architecture Behavioral of Dreg is
begin
	process(Clk, reset)
	begin
		if reset = '1' then
			Q <= '0';
		elsif (rising_edge(Clk)) then
			Q <= D;
		end if;
	end process;
end Behavioral;