--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FourbitAdder is
	Port ( inValue : in std_logic_vector(3 downto 0);
		   outValue : out std_logic_vector(3 downto 0));
end FourbitAdder;

architecture Behavioral of FourbitAdder is
begin
	outValue <= inValue + 1;
end Behavioral;
