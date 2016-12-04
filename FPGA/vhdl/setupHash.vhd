--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity setupHash is
	Port ( Hash_1, Hash_2, Hash_3, Hash_4 : in std_logic_vector(31 downto 0);
		   Hash_Out : out std_logic_vector(127 downto 0) );
end setupHash;

architecture Behavioral of setupHash is
begin
	Hash_Out <= Hash_1(7 downto 0) & Hash_1(15 downto 8) & Hash_1(23 downto 16) & Hash_1(31 downto 24) & Hash_2(7 downto 0) & Hash_2(15 downto 8) & Hash_2(23 downto 16) & Hash_2(31 downto 24) & Hash_3(7 downto 0) & Hash_3(15 downto 8) & Hash_3(23 downto 16) & Hash_3(31 downto 24) & Hash_4(7 downto 0) & Hash_4(15 downto 8) & Hash_4(23 downto 16) & Hash_4(31 downto 24);
end Behavioral;