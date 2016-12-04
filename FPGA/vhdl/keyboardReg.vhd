--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity keyboardReg is
	Port ( Clk : in std_logic;
		   Reset : in std_logic;
		   Shift_In, Shift_En : in std_logic;
		   Data_Out : out std_logic_vector(7 downto 0);
		   Detect_En : out std_logic );
end keyboardReg;

architecture Behavioral of keyboardReg is
	signal reg_value : std_logic_vector( 10 downto 0 );
	signal countFrame : std_logic_vector( 3 downto 0 );
begin

	operate_reg : process (Clk, Reset, Shift_En, Shift_In)
	begin
		if (Reset = '1') then -- Asynchronous Reset
			reg_value <= "00000000000";
		elsif (rising_edge(Clk)) then
			if (Shift_En = '1') then
				reg_value <= Shift_In & reg_value(10 downto 1);
				if(countFrame = "1010") then
					Detect_En <= '1';
					countFrame <= "0000";
				else
					Detect_En <= '0';
					countFrame <= countFrame + 1;
				end if;
			else
				Detect_En <= '0';
				reg_value <= reg_value;
				countFrame <= countFrame;
			end if;
		end if;
	end process;

	Data_Out <= reg_value(8 downto 1);

end Behavioral;