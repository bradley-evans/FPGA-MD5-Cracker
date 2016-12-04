--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity setupWord is
	Port ( Control, clk : in std_logic;
		   w0, w1, w2, w3, w4 : in std_logic_vector(31 downto 0);
		   w0_Out, w1_Out, w2_Out, w3_Out, w4_Out : out std_logic_vector(31 downto 0));
end setupWord;

architecture Behavioral of setupWord is
signal w0_sig, w1_sig, w2_sig, w3_sig, w4_sig : std_logic_vector(31 downto 0);
begin
	process(w0, w1, w2, w3, w4, Control, clk)
	begin
		if (rising_edge(clk)) then
			if (Control = '0') then
				w0_sig <= w0(7 downto 0) & w0(15 downto 8) & w0(23 downto 16) & w0(31 downto 24);
				w1_sig <= w1(7 downto 0) & w1(15 downto 8) & w1(23 downto 16) & w1(31 downto 24);
				w2_sig <= w2(7 downto 0) & w2(15 downto 8) & w2(23 downto 16) & w2(31 downto 24);
				w3_sig <= w3(7 downto 0) & w3(15 downto 8) & w3(23 downto 16) & w3(31 downto 24);
				w4_sig <= w4(7 downto 0) & w4(15 downto 8) & w4(23 downto 16) & w4(31 downto 24);
				w0_Out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
				w1_Out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
				w2_Out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
				w3_Out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
				w4_Out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
			else
				w0_Out <= w0_sig;
				w1_Out <= w1_sig;
				w2_Out <= w2_sig;
				w3_Out <= w3_sig;
				w4_Out <= w4_sig;
			end if;
		end if;
	end process;
end Behavioral;