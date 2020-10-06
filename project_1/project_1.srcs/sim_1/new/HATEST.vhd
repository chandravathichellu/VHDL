----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/27/2019 06:18:12 PM
-- Design Name: 
-- Module Name: HATEST - Behavioral
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

entity HATEST is
--  Port ( );
end HATEST;

architecture Behavioral of HATEST is
COMPONENT HAD port( A : in STD_LOGIC;
          B : in STD_LOGIC;
          Sum : out STD_LOGIC;
          Carry : out STD_LOGIC);
          end component;
          signal A:std_logic :='0';
          signal B:std_logic :='0';
          signal Sum:std_logic;
          signal Carry:std_logic;
          begin
          uut:HAD port map(A,B,Sum,Carry
          );
stim_proc:process
begin
wait for 5 ns;

A<='0';
B<='1';
wait for 5 ns;

A<='1';
B<='0';
wait for 5 ns;
A<='1';
B<='1';
wait for 5 ns;
A<='0';
B<='0';
wait for 5 ns;
end process;
end Behavioral;

