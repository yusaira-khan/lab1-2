------- Testbench for validating and simulating the 6-input comparator circuit --------------- 
-- 
-- Yusaira Khan
-- Michael Curtis
-- 28 September, 2015
-- 
LIBRARY ieee;                                                
USE ieee.std_logic_1164.all;  
USE ieee.numeric_std.all; -- added to the template 
 
ENTITY g24_num1s_vhd_tst IS 
END g24_num1s_vhd_tst; 
ARCHITECTURE g24_num1s_arch OF g24_num1s_vhd_tst IS 
-- constants                                                  
-- signals                                                    
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0); 
SIGNAL num1s : STD_LOGIC_VECTOR(2 DOWNTO 0); 
 
component g24_num1s 
 port ( X     : in std_logic_vector(3 downto 0); 
        num1s : out std_logic_vector(2 downto 0)); 
end component; 
------------------------------------------------------------------------------------------------- 
BEGIN 
  i1 : g24_num1s PORT MAP (X => X,num1s => num1s); --instantiate component being tested 
 
generate_test : PROCESS                                               
BEGIN                                                          
    FOR i IN 0 to 15 LOOP -- loop over all A values 
    X <= std_logic_vector(to_unsigned(i,4)); -- convert the loop variable i to std_logic_vector 
        WAIT FOR 10 ns; -- suspend process for 10 nanoseconds at the start of each loop 
    END LOOP; -- end the i loop 
 
    WAIT; -- we have gone through all possible input patterns, so suspend simulator forever 
                                                        
END PROCESS generate_test; 
                                           
END g24_num1s_arch; 
------------------------------------------------------------------------------------------------- 
 