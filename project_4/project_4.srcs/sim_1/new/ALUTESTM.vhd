----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/03/2019 02:10:55 AM
-- Design Name: 
-- Module Name: ALUTESTM - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALUTESTM is
--  Port ( );
end ALUTESTM;

architecture Behavioral of ALUTESTM is
component ALUSTR port(A,B : in std_logic_vector(3 downto 0); Sel : in std_logic_vector(2 downto 0); Cin: in std_logic; FO : out std_logic_vector(3 downto 0); y : out std_logic);
end component;
signal A,B,F : std_logic_vector(3 downto 0);
signal Cin,cout : std_logic ;
signal S: std_logic_vector(2 downto 0);
begin
sample : ALUSTR port map(A,B,S,Cin,F,cout);
process
begin
   S <= "001";
   A <= "0011";
   B<= "0101";
   Cin <= '0';
   wait for 20ns;
   S <= "000";  
   A <= "0011";
   B<= "0101";
   Cin <= '0';
   wait for 20ns;
   S <= "010";
   A <= "1010";
   B<= "0110";
   Cin <= '1';
   wait for 20ns;
   S <= "011";
    A <= "1010";
    B<= "0111";
    Cin <= '0';
   wait for 20ns;
   S <= "100";
   A <= "0101";
   B<= "0010";
   wait for 20ns;
   S <= "110";
   A <= "0110";
   B <=  "1010";
   wait for 20ns;
   S <= "111";
  wait for 20ns;
end process;
end Behavioral;
