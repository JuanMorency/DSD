-- Group# 36 
-- JAM Electronics inc. (JE)
-- C.E.O Mathieu Sylvestre #260333709
-- C.R&D Juan Morency Trudel #260481762
--
-- Title: g36_minimum3
-- Description:
-- input:
-- output: 

entity g36_minimum3 is 
 port ( N, M    : in std_logic_vector(2 downto 0); 
        min : out std_logic_vector(2 downto 0));  
end g36_minimum3;
architecture a of g36_minimum3 is

with Dsel select  
   Y <=  
  N when "00”, 
  M when others; 


end a