





LIBRARY ieee;                                                
USE ieee.std_logic_1164.all;  
USE ieee.numeric_std.all; 
 
ENTITY g24_mastermind_tst IS 
END g24_mastermind_tst; 
ARCHITECTURE g24_num1s_arch OF g24_mastermind_tst IS 


SIGNAL P1 : STD_LOGIC_VECTOR(2 DOWNTO 0); 
SIGNAL P2 : STD_LOGIC_VECTOR(2 DOWNTO 0); 
SIGNAL P3 : STD_LOGIC_VECTOR(2 DOWNTO 0); 
SIGNAL P4 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL G1 : STD_LOGIC_VECTOR(2 DOWNTO 0); 
SIGNAL G2 : STD_LOGIC_VECTOR(2 DOWNTO 0); 
SIGNAL G3 : STD_LOGIC_VECTOR(2 DOWNTO 0); 
SIGNAL G4 : STD_LOGIC_VECTOR(2 DOWNTO 0);  
SIGNAL num_exact_matches : STD_LOGIC_VECTOR(2 DOWNTO 0); 
SIGNAL num_color_matches : STD_LOGIC_VECTOR(2 DOWNTO 0); 
SIGNAL score_code : STD_LOGIC_VECTOR(3 DOWNTO 0); 


component g24_mastermind_score is 
 port ( P1, P2, P3, P4    : in std_logic_vector(2 downto 0); 
        G1, G2, G3, G4    : in std_logic_vector(2 downto 0); 
  exact_match_score : out std_logic_vector(2 downto 0); 
  color_match_score : out std_logic_vector(2 downto 0); 
        score_code : out std_logic_vector(3 downto 0)); 

end component;

BEGIN 
  i1 : g24_mastermind_score PORT MAP (P1 => P1,P2 => P2,P3=> P3,P4=>P4,
  G1=>G1,G2=>G2,G3=>G3,G4=>G4,
  exact_match_score=>num_exact_matches,
  color_match_score=>num_color_matches,score_code=>score_code); 
 
generate_test : PROCESS                                               
BEGIN                                                          
  --1  
    P1 <= "001"; 
    P2 <=  "010";
    P3 <= "001";
    P4 <= "001"; 
    G1 <= "001"; 
    G2 <= "010"; 
    G3 <= "011"; 
    G4 <= "100"; 
--2
        WAIT FOR 10 ns; 
    P1 <= "001"; 
    P2 <= "010"; 
    P3 <= "011"; 
    P4 <= "100"; 
    G1 <= "001"; 
    G2 <= "010"; 
    G3 <= "011"; 
    G4 <= "100"; 
--3
        WAIT FOR 10 ns; 
    P1 <= "000"; 
    P2 <=  "000";
    P3 <= "001";
    P4 <= "001"; 
    G1 <= "001"; 
    G2 <= "010"; 
    G3 <= "011"; 
    G4 <= "100"; 
--4
        WAIT FOR 10 ns; 
    P1 <= "100"; 
    P2 <=  "010";
    P3 <= "001";
    P4 <= "011"; 
    G1 <= "001"; 
    G2 <= "010"; 
    G3 <= "011"; 
    G4 <= "100"; 
--5
    WAIT FOR 10 ns; 
    P1 <= "010"; 
    P2 <=  "010";
    P3 <= "001";
    P4 <= "010"; 
    G1 <= "001"; 
    G2 <= "010"; 
    G3 <= "011"; 
    G4 <= "100"; 
    --6
    WAIT FOR 10 ns; 
    P1 <= "010"; 
    P2 <=  "010";
    P3 <= "010";
    P4 <= "010"; 
    G1 <= "001"; 
    G2 <= "010"; 
    G3 <= "011"; 
    G4 <= "100"; 
   --7
        WAIT FOR 10 ns; 
    P1 <= "010"; 
    P2 <=  "010";
    P3 <= "011";
    P4 <= "010"; 
    G1 <= "001"; 
    G2 <= "010"; 
    G3 <= "010"; 
    G4 <= "011"; 
   --8
    WAIT FOR 10 ns; 
    P1 <= "010"; 
    P2 <=  "010";
    P3 <= "011";
    P4 <= "010"; 
    G1 <= "001"; 
    G2 <= "010"; 
    G3 <= "011"; 
    G4 <= "011"; 
    WAIT; 
                                                        
END PROCESS generate_test; 
                                           
END g24_num1s_arch; 

 