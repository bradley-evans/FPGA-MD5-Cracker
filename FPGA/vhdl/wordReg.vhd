--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity wordReg is
	Port( Clk, Reset, Run : in std_logic;
          w0_in, w1_in, w2_in, w3_in, w4_in, w14_in : in std_logic_vector(31 downto 0);
          w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15 : out std_logic_vector(31 downto 0);
          Done : out std_logic);
end wordReg;

architecture Behavioral of wordReg is
begin
	process(Clk,Reset)
	begin
		if (Reset = '1') then -- Asynchronous Reset
			w0 <= x"00000080";
			w1 <= x"00000000";
			w2 <= x"00000000";
			w3 <= x"00000000";
			w4 <= x"00000000";
			w5 <= x"00000000";
			w6 <= x"00000000";
			w7 <= x"00000000";
			w8 <= x"00000000";
			w9 <= x"00000000";
			w10 <= x"00000000";
			w11 <= x"00000000";
			w12 <= x"00000000";
			w13 <= x"00000000";
			w14 <= x"00000000";
			w15 <= x"00000000";
		elsif (rising_edge(Clk)) then
			Done <= '0';
			if(Run = '1') then
				w0 <= w0_in;
				w1 <= w1_in;
				w2 <= w2_in;
				w3 <= w3_in;
				w4 <= w4_in;
				w5 <= x"00000000";
				w6 <= x"00000000";
				w7 <= x"00000000";
				w8 <= x"00000000";
				w9 <= x"00000000";
				w10 <= x"00000000";
				w11 <= x"00000000";
				w12 <= x"00000000";
				w13 <= x"00000000";
				w14 <= w14_in;
				w15 <= x"00000000";
				Done <= '1';
			end if;
		end if;
	end process;
end Behavioral;