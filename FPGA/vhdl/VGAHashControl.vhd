--FPGA MD5 Cracker
--By Greg "Patchy" Meyer and Eric Iverson
--InfinityExists.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity VGAHashControl is
   Port (  UserHash : std_logic_vector(127 downto 0);
           DrawX : in std_logic_vector(9 downto 0);
           DrawY : in std_logic_vector(9 downto 0);
           draw_hash : out std_logic;
           curr_char : out std_logic_vector(7 downto 0));
end VGAHashControl;

architecture Behavioral of VGAHashControl is

signal curr_hex_val : std_logic_vector(3 downto 0);
signal draw_en : std_logic;

begin
--Ascii text at : http://www.network-science.de/ascii/ (use 3x5 font)
--Ascii table at: http://www.asciitable.com/

GetCurrHashVal : process(DrawX, DrawY, UserHash, curr_hex_val)
begin

  if((DrawX <= 255) and (DrawY >= 16) and (DrawY < 32)) then -- This is the pixel range for the Hash display
	draw_en <= '1'; --This means we'll be drawing something
	case DrawX(9 downto 3) is -- DrawX(7 downto 3) is going to tell us which character we're drawing,
		when "0000000"=>            --  and DrawX(2 downto 0) is going to tell AsciiInterpreter which pixel of the character we're drawing
			curr_hex_val <= UserHash(127 downto 124);
		when "0000001"=>
			curr_hex_val <= UserHash(123 downto 120); --This big Case statement figures out which hex char in UserHash we want to output
		when "0000010"=>
			curr_hex_val <= UserHash(119 downto 116);
		when "0000011"=>
			curr_hex_val <= UserHash(	115	downto	112	);
		when "0000100"=>
			curr_hex_val <= UserHash(	111	downto	108	);
		when "0000101"=>			
			curr_hex_val <= UserHash(	107	downto	104	);
		when "0000110"=>			
			curr_hex_val <= UserHash(	103	downto	100	);
		when "0000111"=>			
			curr_hex_val <= UserHash(	99	downto	96	);
		when "0001000"=>			
			curr_hex_val <= UserHash(	95	downto	92	);
		when "0001001"=>			
			curr_hex_val <= UserHash(	91	downto	88	);
		when "0001010"=>			
			curr_hex_val <= UserHash(	87	downto	84	);
		when "0001011"=>			
			curr_hex_val <= UserHash(	83	downto	80	);
		when "0001100"=>			
			curr_hex_val <= UserHash(	79	downto	76	);
		when "0001101"=>			
			curr_hex_val <= UserHash(	75	downto	72	);
		when "0001110"=>			
			curr_hex_val <= UserHash(	71	downto	68	);
		when "0001111"=>			
			curr_hex_val <= UserHash(	67	downto	64	);
		when "0010000"=>			
			curr_hex_val <= UserHash(	63	downto	60	);
		when "0010001"=>			
			curr_hex_val <= UserHash(	59	downto	56	);
		when "0010010"=>			
			curr_hex_val <= UserHash(	55	downto	52	);
		when "0010011"=>			
			curr_hex_val <= UserHash(	51	downto	48	);
		when "0010100"=>			
			curr_hex_val <= UserHash(	47	downto	44	);
		when "0010101"=>			
			curr_hex_val <= UserHash(	43	downto	40	);
		when "0010110"=>			
			curr_hex_val <= UserHash(	39	downto	36	);
		when "0010111"=>			
			curr_hex_val <= UserHash(	35	downto	32	);
		when "0011000"=>			
			curr_hex_val <= UserHash(	31	downto	28	);
		when "0011001"=>			
			curr_hex_val <= UserHash(	27	downto	24	);
		when "0011010"=>			
			curr_hex_val <= UserHash(	23	downto	20	);
		when "0011011"=>			
			curr_hex_val <= UserHash(	19	downto	16	);
		when "0011100"=>			
			curr_hex_val <= UserHash(	15	downto	12	);
		when "0011101"=>			
			curr_hex_val <= UserHash(	11	downto	8	);
		when "0011110"=>			
			curr_hex_val <= UserHash(	7	downto	4	);
		when "0011111"=>			
			curr_hex_val <= UserHash(	3	downto	0	);
		when others =>
			curr_hex_val <= x"0";
	end case;
  else
	draw_en <= '0';
	curr_hex_val <= x"0"; --curr_hex_val;
  end if;	

end process;

OutputCtl : process(curr_hex_val, draw_en)
begin
	if(draw_en = '1') then
		draw_hash <= '1';
		
		if(curr_hex_val < x"A") then
			curr_char <= curr_hex_val + x"30"; -- for integers 0-9'0
		else
			curr_char <= curr_hex_val + x"37"; -- for letters A-F
		end if;
		
	else
		draw_hash <= '0'; --If we're not drawing, we set draw_hash to 0
		curr_char <= "ZZZZZZZZ"; --and curr_char to high-Z.
	end if;	
end process;
	
end Behavioral;