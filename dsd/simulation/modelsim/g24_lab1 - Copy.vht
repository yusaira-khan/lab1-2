------- Testbench for validating and simulating the 6-input comparator circuit --------------- 
-- 
-- Yusaira Khan
-- Michael Curtis
-- 28 September, 2015
-- 
LIBRARY ieee;                                                
USE ieee.std_logic_1164.all;  
USE ieee.numeric_std.all; -- added to the template 
 
ENTITY g24_lab1_vhd_tst IS 
END g24_lab1_vhd_tst; 
ARCHITECTURE g24_lab1_arch OF g24_lab1_vhd_tst IS 
-- constants                                                  
-- signals                                                    
SIGNAL A : STD_LOGIC_VECTOR(5 DOWNTO 0); 
SIGNAL AeqB : STD_LOGIC; 
SIGNAL B : STD_LOGIC_VECTOR(5 DOWNTO 0); 
 
COMPONENT g24_lab1 
  PORT ( 
  A : IN STD_LOGIC_VECTOR(5 DOWNTO 0); 
  AeqB : OUT STD_LOGIC; 
  B : IN STD_LOGIC_VECTOR(5 DOWNTO 0) 
  ); 
END COMPONENT;
------------------------------------------------------------------------------------------------- 
BEGIN 
  i1 : g24_lab1 PORT MAP (A => A,AeqB => AeqB,B => B); --instantiate component being tested 
 
generate_test : PROCESS                                               
BEGIN                                                          
    FOR i IN 0 to 63 LOOP -- loop over all A values 
    A <= std_logic_vector(to_unsigned(i,6)); -- convert the loop variable i to std_logic_vector 
    FOR j IN 0 to 63 LOOP -- loop over all B values 
        B <= std_logic_vector(to_unsigned(j,6)); -- convert the loop variable i to std_logic_vector 
 
        WAIT FOR 10 ns; -- suspend process for 10 nanoseconds at the start of each loop 
 
    END LOOP; -- end the j loop 
    END LOOP; -- end the i loop 
 
    WAIT; -- we have gone through all possible input patterns, so suspend simulator forever 
                                                        
END PROCESS generate_test; 
                                           
END g24_lab1_arch; 
------------------------------------------------------------------------------------------------- 
 