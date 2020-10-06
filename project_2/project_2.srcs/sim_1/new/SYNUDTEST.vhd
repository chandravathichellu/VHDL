----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2019 07:05:07 PM
-- Design Name: 
-- Module Name: SYNUDTEST - Behavioral
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

entity SYNUDTEST is
--  Port ( );
end SYNUDTEST;

architecture Behavioral of SYNUDTEST is
component ASYNUDB port(clk,clr,preset,x : in std_logic; q,qbar : inout std_logic_vector(3 downto 0));
end component;
signal clk,preset : std_logic :='1';
signal clr,x :std_logic := '0';
signal q,qbar : std_logic_vector(3 downto 0);
constant  clkperiod : time := 10ns;
begin
call : ASYNUDB port map(clk,clr,preset,x,q,qbar);
process
begin
  clr <='1';
  wait for clkperiod/2;
  clk <= '0';
  wait for clkperiod/2;
  clk <= '1';
end process;
process
begin
  wait for  73ns;
  x <= '1';
  wait for 73ns;
  x <= '0';
end process;
end Behavioral;
