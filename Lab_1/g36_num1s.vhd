-- Group# 36 
-- JAM Electronics inc. (JE)
-- C.E.O Mathieu Sylvestre #260333709
-- C.R&D Juan Morency Trudel #260481762
--
-- Title: g36_num1s 
-- Description:  This circuit counts the number of 1 in a 4 bit input array 
-- 					and outputs the count in binary form. 
-- input: X (4 std_logic_vector)
-- output: num1s (3 std_logic_vector)

library ieee; 
use ieee.std_logic_1164.all;

entity g36_num1s is 
port (  X     : in std_logic_vector(3 downto 0); 
        num1s : out std_logic_vector(2 downto 0)); 
end g36_num1s; 
architecture design of g36_num1s is
-- Signals : we create a not array that will store not versions of our inputs
SIGNAL	XN :  std_logic_vector(3 downto 0);

begin
-- We NOT all our inputs into new variables to simplify later code 
-- XN is a NOT version of X hence XN(a) = NOT(X(a)) for a = 0,1,2,3
XN <= NOT(X);

--This is the expression representing our minimal SOP form for 
-- nums1s(0) : least significant bit of the output
num1s(0) <= (XN(0) AND X(1) AND XN(2) AND XN(3)) OR 
				(X(0) AND XN(1) AND XN(2) AND XN(3)) OR
				(XN(0) AND XN(1) AND XN(2) AND X(3)) OR
				(X(0) AND X(1) AND XN(2) AND X(3)) OR
				(XN(0) AND X(1) AND X(2) AND X(3)) OR
				(X(0) AND XN(1) AND X(2) AND X(3)) OR
				(XN(0) AND XN(1) AND X(2) AND XN(3)) OR
				(X(0) AND X(1) AND X(2) AND XN(3));
--This is the expression representing our minimal SOP form for 
-- nums1s(1) : 2nd least significant bit of the output
num1s(1) <= (XN(0) and X(2) and X(3)) or 
				(X(1) and XN(2) and X(3)) or 
				(X(0) and X(1) and XN(3)) or 
				(X(0) and XN(1) and X(3)) or 
				(X(1) and X(2) and XN(3)) or 
				(X(0) and X(2) and XN(3));
--This is the expression representing our minimal SOP form for 
-- nums1s(2) : most significant bit of the output
num1s(2) <= X(0) AND X(1) AND X(2) AND X(3);

end design;