LIBRARY ieee;
USE ieee.std_logic_1164.all; 
LIBRARY lpm;
USE lpm.all;
LIBRARY work;

ENTITY g24color IS 
 port ( P1, P2, P3, P4, G1, G2, G3, G4 : in std_logic_vector(2 downto 0); 
        NP1, NP2, NP3, NP4, NP5, NP6,NG1, NG2, NG3, NG4, NG5, NG6 : out std_logic_vector(2 downto 0)  
        ); 
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
	SIGNAL EQ5: std_LOGIC_VECTOR(7 downto 0);
	SIGNAL EQ6: std_LOGIC_VECTOR(7 downto 0);

	SIGNAL NEQ1: std_LOGIC_VECTOR(3 downto 0);
	SIGNAL NEQ2: std_LOGIC_VECTOR(3 downto 0);
	SIGNAL NEQ3: std_LOGIC_VECTOR(3 downto 0);
	SIGNAL NEQ4: std_LOGIC_VECTOR(3 downto 0);
	SIGNAL NEQ5: std_LOGIC_VECTOR(3 downto 0);
	SIGNAL NEQ6: std_LOGIC_VECTOR(3 downto 0);

	SIGNAL EH1: std_LOGIC_VECTOR(7 downto 0);
	SIGNAL EH2: std_LOGIC_VECTOR(7 downto 0);
	SIGNAL EH3: std_LOGIC_VECTOR(7 downto 0);
	SIGNAL EH4: std_LOGIC_VECTOR(7 downto 0);
	SIGNAL EH5: std_LOGIC_VECTOR(7 downto 0);
	SIGNAL EH6: std_LOGIC_VECTOR(7 downto 0);

	SIGNAL NEH1: std_LOGIC_VECTOR(3 downto 0);
	SIGNAL NEH2: std_LOGIC_VECTOR(3 downto 0);
	SIGNAL NEH3: std_LOGIC_VECTOR(3 downto 0);
	SIGNAL NEH4: std_LOGIC_VECTOR(3 downto 0);
	SIGNAL NEH5: std_LOGIC_VECTOR(3 downto 0);
	SIGNAL NEH6: std_LOGIC_VECTOR(3 downto 0);


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
		ld5 : LPM_DECODE
	GENERIC MAP (
		lpm_decodes => 8,
		lpm_type => "LPM_DECODE",
		lpm_width => 3
	)
	PORT MAP (
		data => G1,
		eq => EH1
	);
		ld6 : LPM_DECODE
	GENERIC MAP (
		lpm_decodes => 8,
		lpm_type => "LPM_DECODE",
		lpm_width => 3
	)
	PORT MAP (
		data => G2,
		eq => EH2
	);
	ld7 : LPM_DECODE
	GENERIC MAP (
		lpm_decodes => 8,
		lpm_type => "LPM_DECODE",
		lpm_width => 3
	)
	PORT MAP (
		data => G3,
		eq => EH3
	);
	ld8 : LPM_DECODE
	GENERIC MAP (
		lpm_decodes => 8,
		lpm_type => "LPM_DECODE",
		lpm_width => 3
	)
	PORT MAP (
		data => G4,
		eq => EH4
	);
NEQ1<=EQ1(0)&EQ2(0)&EQ3(0)&EQ4(0);
NEQ2<=EQ1(1)&EQ2(1)&EQ3(1)&EQ4(1);
NEQ3<=EQ1(2)&EQ2(2)&EQ3(2)&EQ4(2);
NEQ4<=EQ1(3)&EQ2(3)&EQ3(3)&EQ4(3);
NEQ5<=EQ1(4)&EQ2(4)&EQ3(4)&EQ4(4);
NEQ6<=EQ1(5)&EQ2(5)&EQ3(5)&EQ4(5);

NEH1<=EH1(0)&EH2(0)&EH3(0)&EH4(0);
NEH2<=EH1(1)&EH2(1)&EH3(1)&EH4(1);
NEH3<=EH1(2)&EH2(2)&EH3(2)&EH4(2);
NEH4<=EH1(3)&EH2(3)&EH3(3)&EH4(3);
NEH5<=EH1(4)&EH2(4)&EH3(4)&EH4(4);
NEH6<=EH1(5)&EH2(5)&EH3(5)&EH4(5);

num1: g24_num1s port map (X =>NEQ1, num1s => NP1);
num2: g24_num1s port map (X =>NEQ2, num1s => NP2);
num3: g24_num1s port map (X =>NEQ3, num1s => NP3);
num4: g24_num1s port map (X =>NEQ4, num1s => NP4);
num5: g24_num1s port map (X =>NEQ5, num1s => NP5);
num6: g24_num1s port map (X =>NEQ6, num1s => NP6);

num7: g24_num1s port map (X =>NEH1, num1s => NG1);
num8: g24_num1s port map (X =>NEH2, num1s => NG2);
num9: g24_num1s port map (X =>NEH3, num1s => NG3);
num10: g24_num1s port map (X =>NEH4, num1s => NG4);
num11: g24_num1s port map (X =>NEH5, num1s => NG5);
num12: g24_num1s port map (X =>NEH6, num1s => NG6);


END color;