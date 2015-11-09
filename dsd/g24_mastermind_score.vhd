LIBRARY ieee;
USE ieee.std_logic_1164.all;
entity g24_mastermind_score is 
 port ( P1, P2, P3, P4    : in std_logic_vector(2 downto 0); 
        G1, G2, G3, G4    : in std_logic_vector(2 downto 0); 
  exact_match_score : out std_logic_vector(2 downto 0); 
  color_match_score : out std_logic_vector(2 downto 0); 
        score_code : out std_logic_vector(3 downto 0)); 

end g24_mastermind_score;  
 architecture arch of g24_mastermind_score is
 
 component g24_color_matches is 
 port ( P1, P2, P3, P4    : in std_logic_vector(2 downto 0); 
        G1, G2, G3, G4    : in std_logic_vector(2 downto 0); 
        num_exact_matches : in std_logic_vector(2 downto 0); 
        num_color_matches : out std_logic_vector(2 downto 0));  
end component; 

component g24_num_matches is 
 port ( P1, P2, P3, P4    : in std_logic_vector(2 downto 0); 
        G1, G2, G3, G4    : in std_logic_vector(2 downto 0); 
        N : out std_logic_vector(2 downto 0));  
END component g24_num_matches; 

component g24_score_encoder is 
 port ( score_code : out std_logic_vector(3 downto 0); 
        num_exact_matches : in std_logic_vector(2 downto 0); 
        num_color_matches : in std_logic_vector(2 downto 0));  

end component;

signal ne:  std_logic_vector(2 downto 0);
signal nc:  std_logic_vector(2 downto 0);
 begin
 nm: g24_num_matches port map(P1 => P1,P2 => P2,P3=> P3,P4=>P4,
  G1=>G1,G2=>G2,G3=>G3,G4=>G4,
  N=>ne);
 cm:g24_color_matches port map(P1 => P1,P2 => P2,P3=> P3,P4=>P4,
  G1=>G1,G2=>G2,G3=>G3,G4=>G4,
  num_exact_matches=>ne,num_color_matches=>nc);
 se: g24_score_encoder port map(num_exact_matches=>ne,num_color_matches=>nc, score_code=> score_code);
 exact_match_score<=ne;
 color_match_score<=nc;
 end arch ; -- arch