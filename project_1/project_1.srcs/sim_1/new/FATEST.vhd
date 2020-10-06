----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/27/2019 09:32:21 PM
-- Design Name: 
-- Module Name: FATEST - Behavioral
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

entity FATEST is
end FATEST;

architecture Behavioral of FATEST is
   component FABYHA port(X,Y,C:in std_logic; S,Ca: out std_logic);
   end component;
   signal A,B,Cin : std_logic := '0';
   signal Sum,Cout: std_logic;
   begin
   uut : FABYHA port map(A,B,Cin,Sum,Cout);
   stim_proc: process
    begin
    wait for 5 ns;
    
    A<='0';
    B<='0';
    Cin<='1';
    wait for 5 ns;
    
    A<='0';
    B<='1';
    Cin<='0';
    wait for 5 ns;
    A<='0';
    B<='1';
    Cin<='1';
    wait for 5 ns;
    A<='1';
    B<='0';
    Cin<='0';
    wait for 5 ns;
    A<='1';
    B<='0';
    Cin<='1';
    wait for 5 ns;
    A<='1';
    B<='1';
    Cin<='0';
    wait for 5 ns;
    A<='1';
    B<='1';
    Cin<='1';
    wait for 5 ns;
end process;
end Behavioral;
