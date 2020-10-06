----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/03/2019 10:07:28 PM
-- Design Name: 
-- Module Name: muni - Behavioral
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

entity muni is
--  Port ( );
end muni;

architecture Behavioral of muni is
component monika port(clk,clear,SL,SR : in std_logic;
 PI : in std_logic_vector(3 downto 0); 
 q,qbar : inout std_logic_vector(3 downto 0);
  S : in std_logic_vector(1 downto 0));
end component;
signal clk,clear : std_logic := '1';
signal SL,SR : std_logic := '0';
signal q,qbar : std_logic_vector(3 downto 0);
signal PI : std_logic_vector(3 downto 0) := "0000";
signal S : std_logic_vector(1 downto 0) := "00";
constant clkper : time := 30ns;
begin
call : monika port map(clk,clear,SL,SR,PI,q,qbar,S);
process
begin
clear <= '0';
wait for clkper/2;
clk <= '0';
wait for clkper/2;
clk <= '1';
end process;
process
begin
wait for 15ns;
S <= "01";
SL <= '0';
wait for 20ns;
SL <= '1';
wait for 20ns;
SL <= '0';
wait for 20ns;
SL <= '1';
wait for 20ns;
S <= "10";
SR <= '0';
wait for 20ns;
SR <= '1';
wait for 20ns;
SR <= '0';
wait for 20ns;
SR <= '1';
wait for 20ns;
SR <= '0';
S <= "00";
wait for 20ns;
S <= "11";
PI <= "1010";
wait for 20ns;
end process;
end Behavioral;
