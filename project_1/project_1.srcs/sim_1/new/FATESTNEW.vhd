----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/29/2019 08:40:26 PM
-- Design Name: 
-- Module Name: FATESTNEW - Behavioral
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

entity FATESTNEW is
end FATESTNEW;

architecture Behavioral of FATESTNEW is
 component FABYHA port(X,Y,C:in std_logic; S,Ca: out std_logic);
   end component;
   signal X,Y,c : std_logic := '0';
   signal s,ca : std_logic;
   begin
   uut : FABYHA port map(X,Y,C,S,Ca);
   stim_proc: process
    begin
    wait for 5 ns;
    
    X<='0';
    Y<='0';
    C<='1';
    wait for 5 ns;
    
    X<='0';
    Y<='1';
    C<='0';
    wait for 5 ns;
    X<='0';
    Y<='1';
    C<='1';
    wait for 5 ns;
    X<='1';
    Y<='0';
    C<='0';
    wait for 5 ns;
    X<='1';
    Y<='0';
    C<='1';
    wait for 5 ns;
    X<='1';
    Y<='1';
    C<='0';
    wait for 5 ns;
    X<='1';
    Y<='1';
    C<='1';
    wait for 5 ns;
 end process;
end Behavioral;
