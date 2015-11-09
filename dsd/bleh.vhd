LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;
Entity bleh is
 port ( P1, P2, P3, P4    : in std_logic_vector(2 downto 0); 
        G1, G2, G3, G4    : in std_logic_vector(2 downto 0); 
        NP1, NP2, NP3, NP4, NP5, NP6    : out std_logic_vector(2 downto 0);  
 		NG1, NG2, NG3, NG4, NG5, NG6    : out std_logic_vector(2 downto 0)  
        ); 
        end bleh;
ARCHITECTURE b OF bleh IS 
Component g24color IS 
 port ( P1, P2, P3, P4    : in std_logic_vector(2 downto 0); 
       NP1, NP2, NP3, NP4, NP5, NP6    : in std_logic_vector(2 downto 0));  
END component;
begin
p:g24color  port map (P1=>P1, P2=>P2, P3=>P3,  P4=>P4, 
	NP1=> NP1, NP2=>NP2, NP3=>NP3,  NP4=>NP4, NP5=>NP5,  NP6=>NP6);
G:g24color  port map (P1=>G1, P2=>G2, P3=>G3,  P4=>G4, 
	NP1=> NG1, NP2=>NG2, NG3=>NG3,  NG4=>NG4, NG5=>NG5,  NG6=>NG6);
End b