--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ClockDivider is
	Port ( Clk, Reset : in std_logic;
		   Divided_Clk : out std_logic );
end ClockDivider;

architecture Behavioral of ClockDivider is

signal clk_div : std_logic_vector(8 downto 0);
signal Divided_Clk_sig : std_logic;

begin	
	Divide_Clk : process(Clk, Reset, clk_div, Divided_Clk_sig)
	begin
		if (Reset = '1') then -- Asynchronous Reset
			clk_div <= "000000000";
			Divided_Clk_sig <= '0';
		elsif(rising_edge(Clk)) then
			clk_div <= clk_div + 1;
			if(clk_div = "111111111") then
				Divided_Clk_sig <= Divided_Clk_sig xor '1';
			else
				Divided_Clk_sig <= Divided_Clk_sig;
			end if;
		end if;
		Divided_Clk <= Divided_Clk_sig;
	end process;
end Behavioral;