-- entity name: g24_minimum3 
-- 
-- Author: 
-- Yusaira Khan yusaira.khan@mail.mcgill.ca
-- Michael Curtis michael.curtis@mail.mcgill.ca
-- Date: October 2015
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
entity g24_minimum3 is 
 port ( X, Y    : in std_logic_vector(2 downto 0); 
        Z : out std_logic_vector(2 downto 0));  

end g24_minimum3;  
architecture arch of g24_minimum3 is 
signal e : std_logic;
 begin
 
 	e <= (X(2) AND (NOT Y(2))) 
 		OR ( (X(2) XNOR Y(2) ) AND (X(1) AND (NOT Y(1))) ) 
 		OR ( (X(2) XNOR Y(2) ) AND (X(1) XNOR Y(1)) AND ((X(0) AND (NOT Y(0)))) );
 	with e select
 	Z<= Y when '1',
 	X when others;



 end architecture ; -- arch