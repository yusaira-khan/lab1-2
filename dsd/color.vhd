LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY g24color IS 
 port ( P1, P2, P3, P4    : in std_logic_vector(2 downto 0); 
       NP1, NP2, NP3, NP4, NP5, NP6    : in std_logic_vector(2 downto 0));  
END g24color;

ARCHITECTURE color OF g24color IS 
	COMPONENT lpm_decode
	GENERIC (
		lpm_decodes		: NATURAL;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			data	: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			eq	: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	END COMPONENT;
	COMPONENT g24_num1s is 
 port ( X     : in std_logic_vector(3 downto 0); 
        num1s : out std_logic_vector(2 downto 0)); 
end COMPONENT; 
	   SIGNAL EQ1: std_LOGIC_VECTOR(7 downto 0);
	SIGNAL EQ2: std_LOGIC_VECTOR(7 downto 0);
	SIGNAL EQ3: std_LOGIC_VECTOR(7 downto 0);
	   SIGNAL EQ4: std_LOGIC_VECTOR(7 downto 0);

	   SIGNAL NEQ1: std_LOGIC_VECTOR(7 downto 0);
	SIGNAL NEQ2: std_LOGIC_VECTOR(7 downto 0);
	SIGNAL NEQ3: std_LOGIC_VECTOR(7 downto 0);
	   SIGNAL NEQ4: std_LOGIC_VECTOR(7 downto 0);


BEGIN
	ld1 : LPM_DECODE
	GENERIC MAP (
		lpm_decodes => 8,
		lpm_type => "LPM_DECODE",
		lpm_width => 3
	)
	PORT MAP (
		data => P1,
		eq => EQ1
	);
		ld2 : LPM_DECODE
	GENERIC MAP (
		lpm_decodes => 8,
		lpm_type => "LPM_DECODE",
		lpm_width => 3
	)
	PORT MAP (
		data => P2,
		eq => EQ2
	);
	ld3 : LPM_DECODE
	GENERIC MAP (
		lpm_decodes => 8,
		lpm_type => "LPM_DECODE",
		lpm_width => 3
	)
	PORT MAP (
		data => P3,
		eq => EQ3
	);
	ld4 : LPM_DECODE
	GENERIC MAP (
		lpm_decodes => 8,
		lpm_type => "LPM_DECODE",
		lpm_width => 3
	)
	PORT MAP (
		data => P4,
		eq => EQ4
	);
NEQ1<=EQ1(0)&EQ2(0)&EQ3(0)&EQ4(0);
NEQ2<=EQ1(1)&EQ2(1)&EQ3(1)&EQ4(1);
NEQ3<=EQ1(2)&EQ2(2)&EQ3(2)&EQ4(2);
NEQ4<=EQ1(3)&EQ2(3)&EQ3(3)&EQ4(3);
NEQ5<=EQ1(4)&EQ2(4)&EQ3(4)&EQ4(4);
NEQ6<=EQ1(5)&EQ2(5)&EQ3(5)&EQ4(5);

num1: g24_num1s port map (X =>NEQ1, num1s => NP1);
num2: g24_num1s port map (X =>NEQ2, num1s => NP2);
num3: g24_num1s port map (X =>NEQ3, num1s => NP3);
num4: g24_num1s port map (X =>NEQ4, num1s => NP4);


END color;