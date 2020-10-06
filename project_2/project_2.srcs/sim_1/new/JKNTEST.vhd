----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2019 11:30:11 PM
-- Design Name: 
-- Module Name: JKNTEST - Behavioral
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

entity JKNTEST is
--  Port ( );
end JKNTEST;

architecture Behavioral of JKNTEST is
component JKDATA port(J,K,clk,reset,preset : in std_logic; q,qbar : inout std_logic);
end component;
signal J,K,q,qbar : std_logic;
signal clk : std_logic := '0';
signal preset : std_logic := '0';
signal reset : std_logic := '1';
constant clkper : time := 20ns;
begin
sample : JKDATA port map(J,K,clk,reset,preset,q,qbar);
process
begin
    wait for clkper/2;
    preset <= '1';
    reset <= '1';
   clk <= '1';
   wait for clkper/2; 
   clk <= '0';  
end process;
process
begin
   J <= '0';
   K <= '1';
   wait for 5ns;
   J <= '1';
   K <= '1';
   wait for 5ns;
   J <= '0';
   K <= '0';
   wait for 5ns;
   J <= '0';
   K <= '1';
   wait for 5ns;
    J <= '1';
    K <= '1';
    wait for 5ns;
    J <= '1';
    K <= '0';
    wait for 5ns;
    J <= '1';
    K <= '1';
    wait for 5ns;                
end process;
end Behavioral;
