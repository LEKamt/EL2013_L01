library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Original is
  Port (A,B,C,D: in std_logic; F,G: out std_logic);
end Original;

architecture Behavioral of Original is
signal P,Q,R,S: std_logic ;
begin
P <= not D;
Q <= P or C;
F <= not Q;
R <= not B;
S <= R and A;
G <= S or Q;
end Behavioral;
