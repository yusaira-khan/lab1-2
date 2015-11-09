-- exact match counting part of the scoring circuit for the Mastermind game 
-- 
-- entity name: g24_num_matches 
-- 
-- Author: 
-- Yusaira Khan yusaira.khan@mail.mcgill.ca
-- Michael Curtis michael.curtis@mail.mcgill.ca
-- Date: October 2015
 
library ieee; -- allows use of the std_logic_vector type 
use ieee.std_logic_1164.all; 
 
entity g24_num_matches is 
 port ( P1, P2, P3, P4    : in std_logic_vector(2 downto 0); 
        G1, G2, G3, G4    : in std_logic_vector(2 downto 0); 
        N : out std_logic_vector(2 downto 0));  
end g24_num_matches; 
 
architecture a of g24_num_matches is 
   SIGNAL SP0: std_LOGIC_VECTOR(5 downto 0);
	SIGNAL SP1: std_LOGIC_VECTOR(5 downto 0);
	SIGNAL SP2: std_LOGIC_VECTOR(5 downto 0);
	SIGNAL SP3: std_LOGIC_VECTOR(5 downto 0);
	SIGNAL SG0: std_LOGIC_VECTOR(5 downto 0);
	SIGNAL SG1: std_LOGIC_VECTOR(5 downto 0);
	SIGNAL SG2: std_LOGIC_VECTOR(5 downto 0);
	SIGNAL SG3: std_LOGIC_VECTOR(5 downto 0);
	SIGNAL PG: std_LOGIC_VECTOR(3 downto 0);
	SIGNAL NUM_MATCHES: std_LOGIC_VECTOR(2 downto 0);
	

COMPONENT g24_comp6
	PORT(A : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 AeqB : OUT STD_LOGIC
	);
END COMPONENT;
COMPONENT g24_num1s is 
 port ( X     : in std_logic_vector(3 downto 0); 
        num1s : out std_logic_vector(2 downto 0)); 
end COMPONENT; 

begin

SP0 <= "000" & P1;
SP1 <= "000" & P2;
SP2 <= "000" & P3;
SP3 <= "000" & P4;
SG0 <= "000" & G1;
SG1 <= "000" & G2;
SG2 <= "000" & G3;
SG3 <= "000" & G4;

comp1: g24_comp6 port map (A => SP0, B => SG0, AeqB => PG(0));
comp2: g24_comp6 port map (A => SP1, B => SG1, AeqB => PG(1));
comp3: g24_comp6 port map (A => SP2, B => SG2, AeqB => PG(2));
comp4: g24_comp6 port map (A => SP3, B => SG3, AeqB => PG(3));


comp: g24_num1s port map (X => PG, num1s => N);


 
end a; 