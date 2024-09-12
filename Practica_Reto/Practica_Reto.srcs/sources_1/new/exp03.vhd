library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 

entity exp03 is 
Port (A, B: in std_logic; 
 C: out std_logic); 
end exp03; 

architecture Behavioral of exp03 is 

begin 
C <= A xnor B; 
end Behavioral;
