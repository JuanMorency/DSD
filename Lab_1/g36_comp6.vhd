-- Group# 36 
-- JAM Electronics inc. (JE)
-- C.E.O Mathieu Sylvestre #260333709
-- C.R&D Juan Morency Trudel #260481762
--
-- Title: g36_comp6
-- Description: This circuit compares every bit of a two 6 bits inputs (A and B)
-- and outputs (in AeqB) 1 if all the corresponding bits are identical and 0 otherwise  
-- input: 	A :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
-- output: 	AeqB :  OUT  STD_LOGIC

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY g36_comp6 IS 
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		AeqB :  OUT  STD_LOGIC
	);
END g36_comp6;

ARCHITECTURE bdf_type OF g36_comp6 IS 
-- signals declaration for intermediate nodes
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;


BEGIN 


-- implementation of the comparator
-- XNOR gates are used to compare the corresponding bit of A and B
-- then the outputs of the XNOR gates are ANDed to get the value of AeqB
SYNTHESIZED_WIRE_0 <= NOT(A(0) XOR B(0));


SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_0 AND SYNTHESIZED_WIRE_1 AND SYNTHESIZED_WIRE_2;


AeqB <= SYNTHESIZED_WIRE_3 AND SYNTHESIZED_WIRE_4;


SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_5 AND SYNTHESIZED_WIRE_6 AND SYNTHESIZED_WIRE_7;


SYNTHESIZED_WIRE_1 <= NOT(A(1) XOR B(1));


SYNTHESIZED_WIRE_2 <= NOT(A(2) XOR B(2));


SYNTHESIZED_WIRE_5 <= NOT(A(3) XOR B(3));


SYNTHESIZED_WIRE_6 <= NOT(A(4) XOR B(4));


SYNTHESIZED_WIRE_7 <= NOT(A(5) XOR B(5));


END bdf_type;