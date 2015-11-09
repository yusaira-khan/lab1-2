------- Testbench for validating and simulating the 6-input comparator circuit --------------- 
-- 
-- Yusaira Khan
-- Michael Curtis
-- 28 September, 2015
-- 
LIBRARY ieee;                                                
USE ieee.std_logic_1164.all;  
USE ieee.numeric_std.all; -- added to the template 
 
ENTITY g24_num_matches_vhd_tst IS 
END g24_num_matches_vhd_tst; 
ARCHITECTURE g24_num1s_arch OF g24_num_matches_vhd_tst IS 
-- constants                                                  
-- signals                                                    
SIGNAL P1 : STD_LOGIC_VECTOR(2 DOWNTO 0); 
SIGNAL P2 : STD_LOGIC_VECTOR(2 DOWNTO 0); 
SIGNAL P3 : STD_LOGIC_VECTOR(2 DOWNTO 0); 
SIGNAL P4 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL G1 : STD_LOGIC_VECTOR(2 DOWNTO 0); 
SIGNAL G2 : STD_LOGIC_VECTOR(2 DOWNTO 0); 
SIGNAL G3 : STD_LOGIC_VECTOR(2 DOWNTO 0); 
SIGNAL G4 : STD_LOGIC_VECTOR(2 DOWNTO 0);  
SIGNAL N : STD_LOGIC_VECTOR(2 DOWNTO 0); 
 
component g24_num_matches is 
 port ( P1, P2, P3, P4    : in std_logic_vector(2 downto 0); 
        G1, G2, G3, G4    : in std_logic_vector(2 downto 0); 
        N : out std_logic_vector(2 downto 0));  
END component g24_num_matches; 
------------------------------------------------------------------------------------------------- 
BEGIN 
  i1 : g24_num_matches PORT MAP (P1 => P1,P2 => P2,P3=> P3,P4=>P4,
  G1=>G1,G2=>G2,G3=>G3,G4=>G4,N=>N); --instantiate component being tested 
 
generate_test : PROCESS                                               
BEGIN                                                          
    --FOR i IN 0 to 7 LOOP -- loop over all A values 
    P1 <= "001"; -- convert the loop variable i to std_logic_vector 
    P2 <=  "010";-- convert the loop variable i to std_logic_vector 
    P3 <= "001";-- convert the loop variable i to std_logic_vector 
    P4 <= "001"; -- convert the loop variable i to std_logic_vector 
    G1 <= "001"; -- convert the loop variable i to std_logic_vector 
    G2 <= "010"; -- convert the loop variable i to std_logic_vector 
    G3 <= "011"; -- convert the loop variable i to std_logic_vector 
    G4 <= "100"; -- convert the loop variable i to std_logic_vector 
        WAIT FOR 10 ns; -- suspend process for 10 nanoseconds at the start of each loop 
    P1 <= "001"; -- convert the loop variable i to std_logic_vector 
    P2 <= "010"; -- convert the loop variable i to std_logic_vector 
    P3 <= "011"; -- convert the loop variable i to std_logic_vector 
    P4 <= "100"; -- convert the loop variable i to std_logic_vector 
    G1 <= "001"; -- convert the loop variable i to std_logic_vector 
    G2 <= "010"; -- convert the loop variable i to std_logic_vector 
    G3 <= "011"; -- convert the loop variable i to std_logic_vector 
    G4 <= "100"; -- convert the loop variable i to std_logic_vector 
        WAIT FOR 10 ns; -- suspend process for 10 nanoseconds at the start of each loop 
    P1 <= "000"; -- convert the loop variable i to std_logic_vector 
    P2 <=  "000";-- convert the loop variable i to std_logic_vector 
    P3 <= "001";-- convert the loop variable i to std_logic_vector 
    P4 <= "001"; -- convert the loop variable i to std_logic_vector 
    G1 <= "001"; -- convert the loop variable i to std_logic_vector 
    G2 <= "010"; -- convert the loop variable i to std_logic_vector 
    G3 <= "011"; -- convert the loop variable i to std_logic_vector 
    G4 <= "100"; -- convert the loop variable i to std_logic_vector 
        WAIT FOR 10 ns; -- suspend process for 10 nanoseconds at the start of each loop 
    P1 <= "010"; -- convert the loop variable i to std_logic_vector 
    P2 <=  "010";-- convert the loop variable i to std_logic_vector 
    P3 <= "001";-- convert the loop variable i to std_logic_vector 
    P4 <= "001"; -- convert the loop variable i to std_logic_vector 
    G1 <= "001"; -- convert the loop variable i to std_logic_vector 
    G2 <= "010"; -- convert the loop variable i to std_logic_vector 
    G3 <= "011"; -- convert the loop variable i to std_logic_vector 
    G4 <= "100"; -- convert the loop variable i to std_logic_vector 
        WAIT FOR 10 ns; -- suspend process for 10 nanoseconds at the start of each loop
--new
    P1 <= "011"; -- convert the loop variable i to std_logic_vector 
    P2 <=  "010";-- convert the loop variable i to std_logic_vector 
    P3 <= "001";-- convert the loop variable i to std_logic_vector 
    P4 <= "001"; -- convert the loop variable i to std_logic_vector 
    G1 <= "011"; -- convert the loop variable i to std_logic_vector 
    G2 <= "100"; -- convert the loop variable i to std_logic_vector 
    G3 <= "011"; -- convert the loop variable i to std_logic_vector 
    G4 <= "100"; -- convert the loop variable i to std_logic_vector 
        WAIT FOR 10 ns; -- suspend process for 10 nanoseconds at the start of each loop 
    P1 <= "001"; -- convert the loop variable i to std_logic_vector 
    P2 <= "010"; -- convert the loop variable i to std_logic_vector 
    P3 <= "011"; -- convert the loop variable i to std_logic_vector 
    P4 <= "100"; -- convert the loop variable i to std_logic_vector 
    G1 <= "011"; -- convert the loop variable i to std_logic_vector 
    G2 <= "100"; -- convert the loop variable i to std_logic_vector 
    G3 <= "011"; -- convert the loop variable i to std_logic_vector 
    G4 <= "100"; -- convert the loop variable i to std_logic_vector 
        WAIT FOR 10 ns; -- suspend process for 10 nanoseconds at the start of each loop 
    P1 <= "010"; -- convert the loop variable i to std_logic_vector 
    P2 <=  "000";-- convert the loop variable i to std_logic_vector 
    P3 <= "001";-- convert the loop variable i to std_logic_vector 
    P4 <= "001"; -- convert the loop variable i to std_logic_vector 
    G1 <= "010"; -- convert the loop variable i to std_logic_vector 
    G2 <= "010"; -- convert the loop variable i to std_logic_vector 
    G3 <= "011"; -- convert the loop variable i to std_logic_vector 
    G4 <= "100"; -- convert the loop variable i to std_logic_vector 
        WAIT FOR 10 ns; -- suspend process for 10 nanoseconds at the start of each loop 
    P1 <= "010"; -- convert the loop variable i to std_logic_vector 
    P2 <=  "010";-- convert the loop variable i to std_logic_vector 
    P3 <= "001";-- convert the loop variable i to std_logic_vector 
    P4 <= "001"; -- convert the loop variable i to std_logic_vector 
    G1 <= "001"; -- convert the loop variable i to std_logic_vector 
    G2 <= "010"; -- convert the loop variable i to std_logic_vector 
    G3 <= "001"; -- convert the loop variable i to std_logic_vector 
    G4 <= "100"; -- convert the loop variable i to std_logic_vector 

    --END LOOP; -- end the i loop 
 
    WAIT; -- we have gone through all possible input patterns, so suspend simulator forever 
                                                        
END PROCESS generate_test; 
                                           
END g24_num1s_arch; 
------------------------------------------------------------------------------------------------- 
 