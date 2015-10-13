-- Group# 36 
-- JAM Electronics inc. (JE)
-- C.E.O Mathieu Sylvestre #260333709
-- C.R&D Juan Morency Trudel #260481762
--
-- Generated on "09/30/2015 16:57:15"
                                                            
-- Title:Vhdl Test Bench template for design  :  g36_num1s
-- Description: This testbench sets the value of x to all its different 16
-- 		values in order to verify if g36_num1s is accurate
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;  
USE ieee.numeric_std.all;                              

ENTITY g36_num1s_vhd_tst IS
END g36_num1s_vhd_tst;
ARCHITECTURE g36_num1s_arch OF g36_num1s_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL num1s : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT g36_num1s
	PORT (
	num1s : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	X : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g36_num1s
	PORT MAP (
-- list connections between master ports and signals
	num1s => num1s,
	X => X
	);
test : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
    FOR i IN 0 to 15 LOOP -- loop over all X 
    X <= std_logic_vector(to_unsigned(i,4)); -- convert the loop variable i to a std_logic_vector of 4 bits 
   
		WAIT FOR 10 ns; -- suspend process for 10 nanoseconds at the end of each loop 

    END LOOP; -- end the i loop 
 
    WAIT; -- we have gone through all possible input patterns, so suspend simulator forever                                                      
END PROCESS test;                                           
                                
END g36_num1s_arch;
