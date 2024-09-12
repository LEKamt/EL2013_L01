library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparador_dos_bits is
  Port (A_1, A_0, B_1, B_0: in std_logic ; EQ: out std_logic);
end Comparador_dos_bits;

architecture Behavioral of Comparador_dos_bits is
signal P,Q,R: std_logic ;
begin
P <= A_0 xor B_0 ;
Q <= A_1 xor B_1 ;
R <= P or Q;
EQ <= not R;

end Behavioral;
