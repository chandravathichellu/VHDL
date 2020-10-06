----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/30/2019 09:03:08 PM
-- Design Name: 
-- Module Name: JKFFTEST - Behavioral
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

entity JKFFTEST is
--  Port ( );
end JKFFTEST;

architecture Behavioral of JKFFTEST is
component JKDATA port(J,K,clk,reset : in std_logic; q,qbar : inout std_logic);
end component;
signal J,K,clk,reset : std_logic :='0';
signal q : std_logic := '0';
signal qbar : std_logic := '1';
constant clkperiod : time := 10ns;
begin
uut : JKDATA port map(J,K,clk,reset,q,qbar);
clk_proc : process
begin
  wait for clkperiod/2;
  clk <= '0';
  wait for clkperiod/2;
  clk <= '1';
end process;
stim_proc:process
begin
    wait for 3ns;
    J <= '1';
    K <= '0';
    wait for 3ns;
    J <= '0';
    K <= '0';
    wait for 3ns;
    J <= '1';
    K <= '1';
    wait for 3ns;
    J <= '0';
    K <= '1';
    wait for 3ns;
    J <= '1';
    K <= '0';
    wait for 3ns;
    J <= '1';
     K <= '1';
end process;
end Behavioral;
