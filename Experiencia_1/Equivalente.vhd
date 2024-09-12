library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Equivalente is
  Port (A,B,C,D: in std_logic ; F,G: out std_logic);
end Equivalente;

architecture Behavioral of Equivalente is
signal P,Q,R,S,T: std_logic;
begin
P <= D nand Q;
Q <= C nand C;
R <= B nand B;
S <= R nand A;
T <= P nand P;
F <= P nand P;
G <= T nand S;
end Behavioral;
