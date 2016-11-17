
-- VHDL Instantiation Created from source file wordReg.vhd -- 19:00:04 11/16/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT wordReg
	PORT(
		Clk : IN std_logic;
		Reset : IN std_logic;
		Run : IN std_logic;
		w0_in : IN std_logic_vector(31 downto 0);
		w1_in : IN std_logic_vector(31 downto 0);
		w2_in : IN std_logic_vector(31 downto 0);
		w3_in : IN std_logic_vector(31 downto 0);
		w4_in : IN std_logic_vector(31 downto 0);
		w14_in : IN std_logic_vector(31 downto 0);          
		w0 : OUT std_logic_vector(31 downto 0);
		w1 : OUT std_logic_vector(31 downto 0);
		w2 : OUT std_logic_vector(31 downto 0);
		w3 : OUT std_logic_vector(31 downto 0);
		w4 : OUT std_logic_vector(31 downto 0);
		w5 : OUT std_logic_vector(31 downto 0);
		w6 : OUT std_logic_vector(31 downto 0);
		w7 : OUT std_logic_vector(31 downto 0);
		w8 : OUT std_logic_vector(31 downto 0);
		w9 : OUT std_logic_vector(31 downto 0);
		w10 : OUT std_logic_vector(31 downto 0);
		w11 : OUT std_logic_vector(31 downto 0);
		w12 : OUT std_logic_vector(31 downto 0);
		w13 : OUT std_logic_vector(31 downto 0);
		w14 : OUT std_logic_vector(31 downto 0);
		w15 : OUT std_logic_vector(31 downto 0);
		Done : OUT std_logic
		);
	END COMPONENT;

	Inst_wordReg: wordReg PORT MAP(
		Clk => ,
		Reset => ,
		Run => ,
		w0_in => ,
		w1_in => ,
		w2_in => ,
		w3_in => ,
		w4_in => ,
		w14_in => ,
		w0 => ,
		w1 => ,
		w2 => ,
		w3 => ,
		w4 => ,
		w5 => ,
		w6 => ,
		w7 => ,
		w8 => ,
		w9 => ,
		w10 => ,
		w11 => ,
		w12 => ,
		w13 => ,
		w14 => ,
		w15 => ,
		Done => 
	);


