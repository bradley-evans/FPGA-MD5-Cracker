--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity WordMux is
	Port ( Found : in std_logic;
		   w0_0, w1_0, w2_0, w3_0, w4_0, w0_1, w1_1, w2_1, w3_1, w4_1 : in std_logic_vector(31 downto 0);
		   w0_out,w1_out,w2_out,w3_out,w4_out : out std_logic_vector(31 downto 0) );
end WordMux;

architecture Behavioral of WordMux is
begin
	operate_mux : process (Found, w0_0, w1_0, w2_0, w3_0, w4_0, w0_1, w1_1, w2_1, w3_1, w4_1)
	begin
		case Found is
			when '0' =>
				w0_out <= w0_0;
				w1_out <= w1_0;
				w2_out <= w2_0;
				w3_out <= w3_0;
				w4_out <= w4_0;
			when '1' =>
				w0_out <= w0_1;
				w1_out <= w1_1;
				w2_out <= w2_1;
				w3_out <= w3_1;
				w4_out <= w4_1;
			when others =>
				w0_out <= w0_0;
				w1_out <= w1_0;
				w2_out <= w2_0;
				w3_out <= w3_0;
				w4_out <= w4_0;			
		end case;
	end process;
end Behavioral;