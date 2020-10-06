----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2019 09:21:36 PM
-- Design Name: 
-- Module Name: DFFTEST - Behavioral
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

entity DFFTEST is
end DFFTEST;

architecture Behavioral of DFFTEST is
component DFF port (D,clk,clear : in std_logic; q,qbar : inout std_logic);
end component;
signal D,clk,q,qbar : std_logic;
signal clear : std_logic := '1';
constant clkper : time := 10ns;
begin
sample : DFF port map(D,clk,clear,q,qbar);
process
begin
   clk <= '1';
   clear <= '0';
   wait for clkper/2;
   clk <= '0';
   wait for clkper/2;
end process;
process
begin
   D <= '0';
   wait for 3ns;
   D <= '1';
   wait for 3ns;
end process;
end Behavioral;
