----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2019 06:25:06 PM
-- Design Name: 
-- Module Name: SYNTEST - Behavioral
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

entity SYNTEST is
--  Port ( );
end SYNTEST;

architecture Behavioral of SYNTEST is
component SYNUPST port(clk,clr,preset : in std_logic; q,qbar : inout std_logic_vector(3 downto 0));
end component;
signal clk,preset : std_logic :='1';
signal clr :std_logic := '0';
signal q,qbar : std_logic_vector(3 downto 0);
constant  clkperiod : time := 10ns;
begin
call : SYNUPST  port map(clk,clr,preset,q,qbar);
process
begin
  clr <='1';
  wait for clkperiod/2;
  clk <= '0';
  wait for clkperiod/2;
  clk <= '1';
end process;
end Behavioral;
