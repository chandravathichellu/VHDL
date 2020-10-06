----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/01/2019 12:41:26 AM
-- Design Name: 
-- Module Name: USTEST - Behavioral
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

entity USTEST is
--  Port ( );
end USTEST;

architecture Behavioral of USTEST is
component USST port(clk,preset,SIL,SIR,clr : in std_logic; PI : in std_logic_vector(3 downto 0); q,qbar : inout std_logic_vector(3 downto 0); Sel : in std_logic_vector(1 downto 0));
end component;
signal clk,preset : std_logic := '1';
signal SIL,SIR : std_logic := '0';
signal clr : std_logic:='0';
signal q,qbar : std_logic_vector(3 downto 0);
signal PI : std_logic_vector(3 downto 0) := "0000";
signal Sel : std_logic_vector(1 downto 0) := "00";
constant clkper : time := 30ns;
begin
call : USST port map(clk,preset,SIL,SIR,clr,PI,q,qbar,Sel);
process
begin
clr <= '1';
wait for clkper/2;
clk <= '0';
wait for clkper/2;
clk <= '1';
end process;
process
begin
wait for 15ns;
Sel <= "01";
SIL <= '1';
wait for 20ns;
SIL <= '0';
wait for 20ns;
SIL <= '1';
wait for 20ns;
SIL <= '1';
wait for 20ns;
SIL <= '0';
wait for 20ns;
Sel <= "10";
SIR <= '1';
wait for 20ns;
SIR <= '0';
wait for 20ns;
SIR <= '1';
wait for 20ns;
SIR <= '1';
wait for 20ns;
SIR <= '0';
wait for 20ns;
Sel <= "00";
wait for 20ns;
Sel <= "11";
PI <= "1110";
wait for 20ns;
end process;
end Behavioral;
