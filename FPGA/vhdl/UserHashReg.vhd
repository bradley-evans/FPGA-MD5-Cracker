--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UserHashReg is
	Port ( Clk, Reset, Shift_Enable, Shift_R : in std_logic;
		   Shift_In : in std_logic_vector(3 downto 0);
		   Data_Out : out std_logic_vector(127 downto 0));
end UserHashReg;

architecture Behavioral of UserHashReg is
	signal reg_value : std_logic_vector(127 downto 0);
begin

	operate_reg : process (Clk, Reset, Shift_Enable, Shift_In)
	begin
		if (Reset = '1') then -- Asynchronous Reset
			reg_value <= x"00000000000000000000000000000000";
		elsif (rising_edge(Clk)) then
			if (Shift_Enable = '1') then
				reg_value <= reg_value(123 downto 0) & Shift_In;
			elsif (Shift_R = '1') then
				reg_value <= x"0" & reg_value(127 downto 4);
			else
				reg_value <= reg_value;
			end if;
		end if;
	end process;

	Data_Out <= reg_value;

end Behavioral;