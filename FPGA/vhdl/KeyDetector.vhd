--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity KeyDetector is
	Port ( Clk, Enable, Reset : in std_logic;
		   D : in std_logic_vector(7 downto 0);
		   Load, Run, Backspace : out std_logic;
		   hexValue : out std_logic_vector(3 downto 0));
end KeyDetector;

architecture Behavioral of KeyDetector is
signal breakCode : std_logic;
signal Run_Sig : std_logic;
signal LastKey : std_logic_vector(7 downto 0);
begin
	detect : process (Clk, Run_Sig, Enable, Reset, D)
	begin
		if (Reset = '1') then -- Asynchronous Reset
			hexValue <= x"0";
			breakCode <= '0';
			Load <= '0';
			Run_Sig <= '0';
			Backspace <= '0';
			LastKey <= x"00";
		elsif (rising_edge(Clk)) then
			Load <= '0';
			Backspace <= '0';
			hexValue <= x"0";
			if (Enable = '1') then
				if (breakCode = '0') then
					case D is
						when x"45"=> -- 0
							hexValue <= x"0";
							LastKey <= x"45";
							if ((Run_Sig = '0') and (LastKey /= x"45")) then
								Load <= '1';
							else
								Load <= '0';
							end if;
							Backspace <= '0';
							breakCode <= '0';
						when x"16"=> -- 1
							hexValue <= x"1";
							LastKey <= x"16";
							if ((Run_Sig = '0') and (LastKey /= x"16")) then
								Load <= '1';
							else
								Load <= '0';
							end if;
							Backspace <= '0';
							breakCode <= '0';
						when x"1E"=> -- 2
							hexValue <= x"2";
							LastKey <= x"1E";
							if ((Run_Sig = '0') and (LastKey /= x"1E")) then
								Load <= '1';
							else
								Load <= '0';
							end if;
							Backspace <= '0';
							breakCode <= '0';
						when x"26"=> -- 3
							hexValue <= x"3";
							LastKey <= x"26";
							if ((Run_Sig = '0') and (LastKey /= x"26")) then
								Load <= '1';
							else
								Load <= '0';
							end if;
							Backspace <= '0';
							breakCode <= '0';
						when x"25"=> -- 4
							hexValue <= x"4";
							LastKey <= x"25";
							if ((Run_Sig = '0') and (LastKey /= x"25")) then
								Load <= '1';
							else
								Load <= '0';
							end if;
							Backspace <= '0';
							breakCode <= '0';
						when x"2E"=> -- 5
							hexValue <= x"5";
							LastKey <= x"2E";
							if ((Run_Sig = '0') and (LastKey /= x"2E")) then
								Load <= '1';
							else
								Load <= '0';
							end if;
							Backspace <= '0';
							breakCode <= '0';
						when x"36"=> -- 6
							hexValue <= x"6";
							LastKey <= x"36";
							if ((Run_Sig = '0') and (LastKey /= x"36")) then
								Load <= '1';
							else
								Load <= '0';
							end if;
							Backspace <= '0';
							breakCode <= '0';
						when x"3D"=> -- 7
							hexValue <= x"7";
							LastKey <= x"3D";
							if ((Run_Sig = '0') and (LastKey /= x"3D")) then
								Load <= '1';
							else
								Load <= '0';
							end if;
							Backspace <= '0';
							breakCode <= '0';
						when x"3E"=> -- 8
							hexValue <= x"8";
							LastKey <= x"3E";
							if ((Run_Sig = '0') and (LastKey /= x"3E")) then
								Load <= '1';
							else
								Load <= '0';
							end if;
							Backspace <= '0';
							breakCode <= '0';
						when x"46"=> -- 9
							hexValue <= x"9";
							LastKey <= x"46";
							if ((Run_Sig = '0') and (LastKey /= x"46")) then
								Load <= '1';
							else
								Load <= '0';
							end if;
							Backspace <= '0';
							breakCode <= '0';
						when x"1C"=> -- A
							hexValue <= x"A";
							LastKey <= x"1C";
							if ((Run_Sig = '0') and (LastKey /= x"1C")) then
								Load <= '1';
							else
								Load <= '0';
							end if;
							Backspace <= '0';
							breakCode <= '0';
						when x"32"=> -- B
							hexValue <= x"B";
							LastKey <= x"32";
							if ((Run_Sig = '0') and (LastKey /= x"32")) then
								Load <= '1';
							else
								Load <= '0';
							end if;
							Backspace <= '0';
							breakCode <= '0';
						when x"21"=> -- C
							hexValue <= x"C";
							LastKey <= x"21";
							if ((Run_Sig = '0') and (LastKey /= x"21")) then
								Load <= '1';
							else
								Load <= '0';
							end if;
							Backspace <= '0';
							breakCode <= '0';
						when x"23"=> -- D
							hexValue <= x"D";
							LastKey <= x"23";
							if ((Run_Sig = '0') and (LastKey /= x"23")) then
								Load <= '1';
							else
								Load <= '0';
							end if;
							Backspace <= '0';
							breakCode <= '0';
						when x"24"=> -- E
							hexValue <= x"E";
							LastKey <= x"24";
							if ((Run_Sig = '0') and (LastKey /= x"24")) then
								Load <= '1';
							else
								Load <= '0';
							end if;
							Backspace <= '0';
							breakCode <= '0';
						when x"2B"=> -- F
							hexValue <= x"F";
							LastKey <= x"2B";
							if ((Run_Sig = '0') and (LastKey /= x"2B")) then
								Load <= '1';
							else
								Load <= '0';
							end if;
							Backspace <= '0';
							breakCode <= '0';
						when x"66"=> -- Backspace
							hexValue <= x"0";
							LastKey <= x"66";
							if(Run_Sig = '0') then
								Backspace <= '1';
							end if;
							Load <= '0';
							breakCode <= '0';
						when x"F0"=>  -- Breakcode
							hexValue <= x"0";
							Load <= '0';
							Backspace <= '0';
							breakCode <= '1';
						when x"5A"=>  -- Enter Key
							hexValue <= x"0";
							Load <= '0';
							Backspace <= '0';
							breakCode <= '0';						
							Run_Sig <= '1';
						when others=>
							hexValue <= x"0";
							breakCode <= '0';
							Load <= '0';
							Backspace <= '0';
							LastKey <= x"00";
					end case;				
				else
					breakCode <= '0';
					LastKey <= x"00";
					Load <= '0';
					Backspace <= '0';
					hexValue <= x"0";
				end if;
			end if;
		end if;	
		Run <= Run_sig;
	end process;
end Behavioral;
