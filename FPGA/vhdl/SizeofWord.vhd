library IEEE;
--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Size is
	Port( ActiveAdders : in std_logic_vector(18 downto 0);
          w14: out std_logic_vector(31 downto 0));
end Size;

architecture Behavioral of Size is
begin
	with ActiveAdders select
		w14 <=  x"00000000" when "0000000000000000000", -- 0
				x"00000008" when "0000000000000000001", -- 1
				x"00000010" when "0000000000000000011", -- 2
				x"00000018" when "0000000000000000111", -- 3
				x"00000020" when "0000000000000001111", -- 4
				x"00000028" when "0000000000000011111", -- 5
				x"00000030" when "0000000000000111111", -- 6
				x"00000038" when "0000000000001111111", -- 7
				x"00000040" when "0000000000011111111", -- 8
				x"00000048" when "0000000000111111111", -- 9
				x"00000050" when "0000000001111111111", -- 10
				x"00000058" when "0000000011111111111", -- 11
				x"00000060" when "0000000111111111111", -- 12
				x"00000068" when "0000001111111111111", -- 13
				x"00000070" when "0000011111111111111", -- 14
				x"00000078" when "0000111111111111111", -- 15
				x"00000080" when "0001111111111111111", -- 16
				x"00000088" when "0011111111111111111", -- 17
				x"00000090" when "0111111111111111111", -- 18
				x"00000098" when "1111111111111111111", -- 19
				x"00000000" when others;
end Behavioral;