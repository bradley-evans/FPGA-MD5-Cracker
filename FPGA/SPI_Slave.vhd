----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:10:24 11/21/2016 
-- Design Name: 
-- Module Name:    SPI_Slave - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SPI_Slave is
    Port ( AVR_IN 	: in  STD_LOGIC;
           AVR_CLK 	: in  STD_LOGIC;
           RST 		: in  STD_LOGIC;
			  ENABLE		: in 	STD_LOGIC;
			  READY		: out STD_LOGIC;
           HASH_OUT 	: out STD_LOGIC_VECTOR (127 downto 0) := x"00000000000000000000000000000000" );
end SPI_Slave;

architecture Behavioral of SPI_Slave is

	shared variable count : integer := 0;
	signal hash : std_logic_vector(127 downto 0);	

begin
	
	PROCESS(AVR_CLK, ENABLE)
	BEGIN
		IF (ENABLE = '1') THEN				 	-- If ENABLE is HIGH
			IF (rising_edge(AVR_CLK)) THEN 	-- If CLK goes HIGH
				IF (RST = '1') THEN				-- If RST is HIGH
					hash <= x"00000000000000000000000000000000"; -- then zero HASH_OUT and count
					count := 0;
					READY <= '0';				
				ELSE 								-- Otherwise, if RST is LOW
						IF (count > 126) THEN
						hash(count) <= AVR_IN;
						HASH_OUT <= hash (127 downto 0);
						READY <= '1';
						count := count + 1;
					ELSE 
						hash(count) <= AVR_IN;
						count := count + 1;
						READY <= '0';
					END IF;
				END IF;
			END IF;
		END IF;
	END PROCESS;
			
		
		
	

end Behavioral;

