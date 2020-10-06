----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2019 05:16:31 PM
-- Design Name: 
-- Module Name: vendingmachinetb - Behavioral
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

entity vendingmachinetb is
--  Port ( );
end vendingmachinetb;

architecture Behavioral of vendingmachinetb is
component vendingmachine port (clock : in std_logic; --Clock, active high
rst : in std_logic; --Async. Reset, active low
CoinIn : in std_logic_vector (1 downto 0); --Which coin was inserted
product : out std_logic; --Is product dispensed ?
CoinOut : out std_logic_vector (1 downto 0) --Which coin is dispensed?
 ); 
end component;
signal clock,rst,product : std_logic ;
signal CoinIn, CoinOut : std_logic_vector (1 downto 0);
begin
call : vendingmachine port map(clock,rst,CoinIn,product,CoinOut); 
process
begin
clock <= '0';
wait for 10 ns;
clock <= '1';
wait for 10ns;
end process;
process
begin
rst <= '0';
wait for 10ns;
rst <= '1';
CoinIn <= "10";
wait for 20 ns;
CoinIn <= "11"; 
wait for 20 ns;
CoinIn <= "01"; 
wait for 20 ns;
end process;
end Behavioral;
