----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/28/2019 06:59:54 PM
-- Design Name: 
-- Module Name: CLATEST - Behavioral
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

entity CLATEST is
--  Port ( );
end CLATEST;

architecture Behavioral of CLATEST is
component CLASTRU port(A,B : in std_logic_vector(3 downto 0);
                    cin : in std_logic; 
                    Sum : out std_logic_vector(3 downto 0); 
                    Cout : out std_logic);
end component;
  signal A : std_logic_vector(3 downto 0):= (others => '0');
  signal B : std_logic_vector(3 downto 0):= (others => '0');
  signal cin : std_logic :='0';
  signal Sum : std_logic_vector(3 downto 0);
  signal Cout : std_logic;
begin
    uut : CLASTRU port map(A=>A,B=>B,cin=>cin,Sum=>Sum,Cout=>Cout);
    stim_proc : process
    begin
    wait for 5 ns;
    A <= "1000";
    B <= "1010";
    wait for 5 ns;
    A <= "0001";
    B <= "1110";
    wait for 5 ns;
    A <= "0100";
    B <= "1100";
    cin<= '1';
    wait for 5 ns;
    A <= "0010";
    B <= "1011";
    wait for 5 ns;
    A <= "1100";
    B <= "0010";
    wait for 5 ns;
    A <= "1101";
    B <= "0110";
    cin<='0';
end process;
end Behavioral;
