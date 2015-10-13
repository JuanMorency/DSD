-- Group# 36 
-- JAM Electronics inc. (JE)
-- C.E.O Mathieu Sylvestre #260333709
-- C.R&D Juan Morency Trudel #260481762
--
-- Title: g36_lab1
-- Description: This circuit simply uses the component g36_comp6 by mapping 
-- 		A => A, B => B and AeqB => AeqB.
-- input: 	A :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
-- output: 	AeqB :  OUT  STD_LOGIC

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY g36_lab1 IS 
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		AeqB :  OUT  STD_LOGIC
	);
END g36_lab1;

ARCHITECTURE bdf_type OF g36_lab1 IS 
-- component declaration
COMPONENT g36_comp6
	PORT(A : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 AeqB : OUT STD_LOGIC
	);
END COMPONENT;



BEGIN 


-- create instance of the component
b2v_inst : g36_comp6

-- maps the ports to the component's inputs and output
PORT MAP(A => A,
		 B => B,
		 AeqB => AeqB);


END bdf_type;