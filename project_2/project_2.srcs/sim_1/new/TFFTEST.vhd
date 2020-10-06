----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2019 05:55:41 PM
-- Design Name: 
-- Module Name: TFFTEST - Behavioral
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

entity TFFTEST is
end TFFTEST;

architecture Behavioral of TFFTEST is
component TFF port(T,clk,reset : in std_logic; q,qbar : out std_logic);
end component;
signal q,qbar : std_logic;
signal clk,T : std_logic :='0' ;
signal reset : std_logic :='1';
constant  clkperiod : time := 10ns;
begin
calling : TFF port map(T,clk,reset,q,qbar);
process
begin
  wait for clkperiod/2;
  reset <='0';
  clk <= '1';
  wait for clkperiod/2;
  clk <= '0';
end process;
process
begin
    wait for 3 ns;
    T <= '1';
    wait for 3 ns; 
    T <= '0';
end process;
end Behavioral;
