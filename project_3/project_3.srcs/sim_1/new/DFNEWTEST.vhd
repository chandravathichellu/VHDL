----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/01/2019 12:11:21 AM
-- Design Name: 
-- Module Name: DFNEWTEST - Behavioral
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

entity DFNEWTEST is
--  Port ( );
end DFNEWTEST;

architecture Behavioral of DFNEWTEST is
component DFF  port(D,clk,clr,preset : in std_logic; q,qbar : inout std_logic);
end component;
signal D,clk,q,qbar : std_logic;
signal clr : std_logic := '0';
signal preset : std_logic := '1';
constant clkper : time := 30ns;
begin
sample : DFF port map(D,clk,clr,preset,q,qbar);
process
begin
   clk <= '1';
   clr <= '1';
   wait for clkper/2;
   clk <= '0';
   wait for clkper/2;
end process;
process
begin
   D <= '0';
   wait for 10ns;
   D <= '1';
   wait for 10ns;
end process;
end Behavioral;
