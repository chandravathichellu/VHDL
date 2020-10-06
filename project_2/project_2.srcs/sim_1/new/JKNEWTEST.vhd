----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/13/2019 04:06:13 AM
-- Design Name: 
-- Module Name: JKNEWTEST - Behavioral
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

entity JKNEWTEST is
--  Port ( );
end JKNEWTEST;

architecture Behavioral of JKNEWTEST is
component JKFFNEW port(J,K,clk,clr,preset : in std_logic; q,qbar : inout std_logic);
end component;
signal q,qbar : std_logic;
signal clk,J,K : std_logic :='0' ;
signal clr : std_logic :='0';
signal preset : std_logic := '1';
constant  clkperiod : time := 10ns;
begin
calling : JKFFNEW port map(J,K,clk,clr,preset,q,qbar);
process
begin
  wait for clkperiod/2;
  clr <='1';
  clk <= '1';
  wait for clkperiod/2;
  clk <= '0';
end process;
process
begin
    wait for 3 ns;
    J <= '1';
    K <= '1';
    wait for 3 ns; 
    J <= '0';
    K <= '1';
    wait for 3ns;
    J <= '1';
    K <= '0';
end process;
end Behavioral;
