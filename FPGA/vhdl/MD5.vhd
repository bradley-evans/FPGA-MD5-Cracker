library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MD5 is
	Port( Clk   : in std_logic;
          Reset : in std_logic;
          Run   : in std_logic;
          FirstRun   : in std_logic;
          w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15 : in std_logic_vector(31 downto 0);
          Done  : out std_logic;
          Hash_1, Hash_2, Hash_3, Hash_4 : out std_logic_vector(31 downto 0));
end MD5;
          
architecture Behavioral of MD5 is

--Initial Constants for Words A, B, C, and D
constant aa : std_logic_vector(31 downto 0) := x"67452301";
constant bb : std_logic_vector(31 downto 0) := x"EFCDAB89";
constant cc : std_logic_vector(31 downto 0) := x"98BADCFE";
constant dd : std_logic_vector(31 downto 0) := x"10325476";

subtype arr8 is STD_LOGIC_VECTOR (7 downto 0);
subtype arr32 is STD_LOGIC_VECTOR (31 downto 0);

--R[64] is used to determine the amount of left rotation
type Rarray is array (63 downto 0) of arr8;
constant R : Rarray :=( x"15", x"0F", x"0A", x"06", x"15", x"0F", x"0A", x"06", x"15", x"0F", x"0A", x"06", x"15", x"0F", x"0A", x"06",
						x"17", x"10", x"0B", x"04", x"17", x"10", x"0B", x"04", x"17", x"10", x"0B", x"04", x"17", x"10", x"0B", x"04",
						x"14", x"0E", x"09", x"05", x"14", x"0E", x"09", x"05", x"14", x"0E", x"09", x"05", x"14", x"0E", x"09", x"05",
						x"16", x"11", x"0C", x"07", x"16", x"11", x"0C", x"07", x"16", x"11", x"0C", x"07", x"16", x"11", x"0C", x"07");
					

--K[64] = floor(abs(sin(i)) * 2^32)
type Karray is array (63 downto 0) of arr32;
constant K : Karray :=( x"eb86d391", x"2ad7d2bb", x"bd3af235", x"f7537e82", x"4e0811a1", x"a3014314", x"fe2ce6e0", x"6fa87e4f", x"85845dd1",
						x"ffeff47d", x"8f0ccc92", x"655b59c3", x"fc93a039", x"ab9423a7", x"432aff97", x"f4292244", x"c4ac5665", x"1fa27cf8",
						x"e6db99e5", x"d9d4d039", x"04881d05", x"d4ef3085", x"eaa127fa", x"289b7ec6", x"bebfbc70", x"f6bb4b60", x"4bdecfa9",
						x"a4beea44", x"fde5380c", x"6d9d6122", x"8771f681", x"fffa3942", x"8d2a4c8a", x"676f02d9", x"fcefa3f8", x"a9e3e905",
						x"455a14ed", x"f4d50d87", x"c33707d6", x"21e1cde6", x"e7d3fbc8", x"d8a1e681", x"02441453", x"d62f105d", x"e9b6c7aa",
						x"265e5a51", x"c040b340", x"f61e2562", x"49b40821", x"a679438e", x"fd987193", x"6b901122", x"895cd7be", x"ffff5bb1",
						x"8b44f7af", x"698098d8", x"fd469501", x"a8304613", x"4787c62a", x"f57c0faf", x"c1bdceee", x"242070db", x"e8c7b756",
						x"d76aa478");

type Warray is array (15 downto 0) of arr32;				   
signal W : Warray;
signal a, b, c, d, f : std_logic_vector(31 downto 0);
signal g : integer range 0 to 15;
signal i :  integer range 0 to 64;

type ctrl_state is (Halt, Process_1, Process_2, Process_3, Process_4, Waiting, Finished);
signal State, Next_state : ctrl_state;

begin
	Assign_Next_State : process (Clk, Reset)
	begin
	  if (Reset = '1') then
		State <= Halt;
	  elsif (rising_edge(clk)) then
		State <= Next_State;
	  end if;
	end process;
	
	Get_Next_State : process (State, Run, FirstRun, i)
	begin
		case State is
			when Halt => 
				if (FirstRun = '0') then
					Next_state <= Halt;
				else
					Next_state <= Process_1;
				end if;
			when Process_1 =>  --Each Process is one of the four stages in the MD5 Algorithm
				if(i = 15) then
					Next_state <= Process_2;
				else
					Next_state <= Process_1;
				end if;
			when Process_2 =>
				if(i = 31) then
					Next_state <= Process_3;
				else
					Next_state <= Process_2;
				end if;
			when Process_3 =>
				if(i = 47) then
					Next_state <= Process_4;
				else
					Next_state <= Process_3;
				end if;
			when Process_4 =>
				if(i = 63) then
					Next_state <= Finished;
				else
					Next_state <= Process_4;
				end if;
			when Finished =>
				Next_state <= Waiting;
			when Waiting =>
				if (Run = '0') then
					Next_state <= Waiting;
				else
					Next_state <= Process_1;
				end if;
			when others =>
				Next_state <= Halt;
		end case;
	end process;
	
	Control_States : process (state, a, b, c, d, i)
	begin
		Done <= '0';			
		Hash_1 <= x"00000000";
		Hash_2 <= x"00000000";
		Hash_3 <= x"00000000";
		Hash_4 <= x"00000000";
		
		f <= x"00000000";
		g <= 0;
		case State is
			when Process_1 =>
				f <= (b and c) or ((not b) and d);
				g <= i;
			when Process_2 =>
				f <= (d and b) or ((not d) and c);
				g <= (((5*i) + 1) mod 16);
			when Process_3 =>
				f <= b xor c xor d;
				g <= ((3*i) + 5) mod 16;
			when Process_4 =>
				f <= c xor (b or (not d));
				g <= (7*i) mod 16;
			when Finished =>
				Done <= '1';
				Hash_1 <= aa + a;
				Hash_2 <= bb + b;
				Hash_3 <= cc + c;
				Hash_4 <= dd + d;
			when others =>
				NULL;
		end case;
	end process;
	Process_MD5 : process (state, a, b, c, d, i, W, clk)
	begin
		if (rising_edge(clk)) then		
			case State is
				when Halt =>
					i <= 0;
					a <= aa;
					b <= bb;
					c <= cc;
					d <= dd;
					
					W(0) <= w0;
					W(1) <= w1;
					W(2) <= w2;
					W(3) <= w3;
					W(4) <= w4;
					W(5) <= w5;
					W(6) <= w6;
					W(7) <= w7;
					W(8) <= w8;
					W(9) <= w9;
					W(10) <= w10;
					W(11) <= w11;
					W(12) <= w12;
					W(13) <= w13;
					W(14) <= w14;
					W(15) <= w15;
				when Process_1 =>
					d <= c;
					c <= b;
					--Shift Left OR'ed with the Equivalent Shift Right is the same as Left Rotation
					b <= b + (SHL((a + f + K(i) + W(g)),  R(i)) or SHR((a + f + K(i) + W(g)), ("00100000" - R(i))));
					a <= d;
					i <= i + 1;
				when Process_2 =>					
					d <= c;
					c <= b;
					--Shift Left OR'ed with the Equivalent Shift Right is the same as Left Rotation
					b <= b + (SHL((a + f + K(i) + W(g)),  R(i)) or SHR((a + f + K(i) + W(g)), ("00100000" - R(i))));
					a <= d;
					i <= i + 1;
				when Process_3 =>					
					d <= c;
					c <= b;
					b <= b + (SHL((a + f + K(i) + W(g)),  R(i)) or SHR((a + f + K(i) + W(g)), ("00100000" - R(i))));
					a <= d;
					i <= i + 1;
				when Process_4 =>					
					d <= c;
					c <= b;
					b <= b + (SHL((a + f + K(i) + W(g)),  R(i)) or SHR((a + f + K(i) + W(g)), ("00100000" - R(i))));
					a <= d;
					i <= i + 1;
				when Waiting =>
					i <= 0;
					a <= aa;
					b <= bb;
					c <= cc;
					d <= dd;
					
					W(0) <= w0;
					W(1) <= w1;
					W(2) <= w2;
					W(3) <= w3;
					W(4) <= w4;
					W(5) <= w5;
					W(6) <= w6;
					W(7) <= w7;
					W(8) <= w8;
					W(9) <= w9;
					W(10) <= w10;
					W(11) <= w11;
					W(12) <= w12;
					W(13) <= w13;
					W(14) <= w14;
					W(15) <= w15;
				when others =>
					NULL;
			end case;
		end if;
	end process;
end Behavioral;