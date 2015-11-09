--Group 24
-- Yusaira Khan
-- Michael Curtis
-- 28 September, 2015
LIBRARY ieee;                                                
USE ieee.std_logic_1164.all;  
USE ieee.numeric_std.all; -- added to the template 

LIBRARY work;
entity g24_num1s is 
 port ( X     : in std_logic_vector(3 downto 0); 
        num1s : out std_logic_vector(2 downto 0)); 
end g24_num1s; 

ARCHITECTURE arch OF g24_num1s IS 
BEGIN 


		num1s(0) <= (X(0) XOR X(1)) XOR (X(2) XOR X(3));
		
		num1s(1) <= (X(0) AND X(1) AND (NOT X(3)))
		         OR ((NOT X(0)) AND X(1) AND X(3))
		         OR ((NOT X(1)) AND X(2) AND X(3))
		         OR ((NOT X(0)) AND X(1) AND X(2))
		         OR (X(1) AND (NOT X(2)) AND X(3))
		         OR (X(0) AND X(2) AND (NOT X(3)));

		num1s(2) <= X(0) AND X(1) AND X(2) AND X(3);

END arch;