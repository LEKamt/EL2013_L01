library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparador_dos_bits_TB is
--  Port ( );
end Comparador_dos_bits_TB;

architecture Behavioral of Comparador_dos_bits_TB is
component Comparador_dos_bits is
    Port (A_1, A_0, B_1, B_0: in std_logic ; EQ: out std_logic);
end component;

signal A_1s, A_0s, B_1s, B_0s, EQs: std_logic ;
begin
DUT: Comparador_dos_bits port map (A_1 => A_1s, A_0 => A_0s, B_1 => B_1s, B_0 => B_0s, EQ => EQs);

process begin
A_1s <= '0'; A_0s <= '0' ; B_1s <= '0'; B_0s <= '0'; wait for 10ns;
A_1s <= '0'; A_0s <= '0' ; B_1s <= '0'; B_0s <= '1'; wait for 10ns;
A_1s <= '0'; A_0s <= '0' ; B_1s <= '1'; B_0s <= '0'; wait for 10ns;
A_1s <= '0'; A_0s <= '0' ; B_1s <= '1'; B_0s <= '1'; wait for 10ns;
A_1s <= '0'; A_0s <= '1' ; B_1s <= '0'; B_0s <= '0'; wait for 10ns;
A_1s <= '0'; A_0s <= '1' ; B_1s <= '0'; B_0s <= '1'; wait for 10ns;
A_1s <= '0'; A_0s <= '1' ; B_1s <= '1'; B_0s <= '0'; wait for 10ns;
A_1s <= '0'; A_0s <= '1' ; B_1s <= '1'; B_0s <= '1'; wait for 10ns;
A_1s <= '1'; A_0s <= '0' ; B_1s <= '0'; B_0s <= '0'; wait for 10ns;
A_1s <= '1'; A_0s <= '0' ; B_1s <= '0'; B_0s <= '1'; wait for 10ns;
A_1s <= '1'; A_0s <= '0' ; B_1s <= '1'; B_0s <= '0'; wait for 10ns;
A_1s <= '1'; A_0s <= '0' ; B_1s <= '1'; B_0s <= '1'; wait for 10ns;
A_1s <= '1'; A_0s <= '1' ; B_1s <= '0'; B_0s <= '0'; wait for 10ns;
A_1s <= '1'; A_0s <= '1' ; B_1s <= '0'; B_0s <= '1'; wait for 10ns;
A_1s <= '1'; A_0s <= '1' ; B_1s <= '1'; B_0s <= '0'; wait for 10ns;
A_1s <= '1'; A_0s <= '1' ; B_1s <= '1'; B_0s <= '1'; wait for 10ns;
end process;

end Behavioral;
