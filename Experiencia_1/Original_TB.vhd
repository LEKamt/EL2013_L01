library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Original_TB is
--  Port ( );
end Original_TB;

architecture Behavioral of Original_TB is
component Original is
    Port (A,B,C,D: in std_logic; F,G: out std_logic);
end component;

signal A_0, B_0, C_0, D_0, F_0, G_0: std_logic;

begin
DUT: Original port map(A => A_0, B => B_0, C => C_0, D => D_0, F => F_0, G => G_0);

process begin
A_0 <= '0'; B_0 <= '0'; C_0 <= '0'; D_0 <= '0'; wait for 10ns; 
A_0 <= '0'; B_0 <= '0'; C_0 <= '0'; D_0 <= '1'; wait for 10ns; 
A_0 <= '0'; B_0 <= '0'; C_0 <= '1'; D_0 <= '0'; wait for 10ns; 
A_0 <= '0'; B_0 <= '0'; C_0 <= '1'; D_0 <= '1'; wait for 10ns; 
A_0 <= '0'; B_0 <= '1'; C_0 <= '0'; D_0 <= '0'; wait for 10ns; 
A_0 <= '0'; B_0 <= '1'; C_0 <= '0'; D_0 <= '1'; wait for 10ns;
A_0 <= '0'; B_0 <= '1'; C_0 <= '1'; D_0 <= '0'; wait for 10ns; 
A_0 <= '0'; B_0 <= '1'; C_0 <= '1'; D_0 <= '1'; wait for 10ns; 
A_0 <= '1'; B_0 <= '0'; C_0 <= '0'; D_0 <= '0'; wait for 10ns; 
A_0 <= '1'; B_0 <= '0'; C_0 <= '0'; D_0 <= '1'; wait for 10ns; 
A_0 <= '1'; B_0 <= '0'; C_0 <= '1'; D_0 <= '0'; wait for 10ns; 
A_0 <= '1'; B_0 <= '0'; C_0 <= '1'; D_0 <= '1'; wait for 10ns; 
A_0 <= '1'; B_0 <= '1'; C_0 <= '0'; D_0 <= '0'; wait for 10ns; 
A_0 <= '1'; B_0 <= '1'; C_0 <= '0'; D_0 <= '1'; wait for 10ns;
A_0 <= '1'; B_0 <= '1'; C_0 <= '1'; D_0 <= '0'; wait for 10ns; 
A_0 <= '1'; B_0 <= '1'; C_0 <= '1'; D_0 <= '1'; wait for 10ns; 
end process;
end Behavioral;
