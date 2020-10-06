----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/01/2019 09:06:40 PM
-- Design Name: 
-- Module Name: ALUTEST - Behavioral
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

entity ALUTEST is
--  Port ( );
end ALUTEST;

architecture Behavioral of ALUTEST is
component ALUSTR port(A,B : in std_logic_vector(3 downto 0); Sel : in std_logic_vector(2 downto 0); Cin: in std_logic; FO : out std_logic_vector(3 downto 0); y : out std_logic);
end component;
signal A,B,FO : std_logic_vector(3 downto 0);
signal Cin,y : std_logic ;
signal Sel : std_logic_vector(2 downto 0);
begin
sample : ALUSTR port map(A,B,Sel,Cin,FO,y);
process
begin
   Sel <= "000";
   A <= "1100";
   B<= "0010";
   Cin <= '0';
   wait for 20ns;
   Sel <= "000";  
   A <= "1101";
   B<= "0011";
   Cin <= '1';
   wait for 20ns;
   Sel <= "001";
   A <= "1010";
   B<= "1000";
   Cin <= '1';
   wait for 20ns;
   Sel <= "001";
    Cin <= '0';
   wait for 20ns;
   Sel <= "010";
   A <= "1001";
   B<= "0001";
   Cin <= '1';
   wait for 20ns;
   Sel <= "011";
   A <= "0111";
   B <=  "0100";
   Cin <= '0';
   wait for 20ns;
   Cin <= '1';
   wait for 20ns;
   Sel <= "100";
   A <= "0110";
   B <= "1000";
   wait for 20ns;
   Sel <= "101";
   wait for 20ns;
   Sel <= "110";
   wait for 20ns;
   Sel <= "111";
  wait for 20ns;
end process;
end Behavioral;
