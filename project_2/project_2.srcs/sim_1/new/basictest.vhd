----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2019 11:03:15 AM
-- Design Name: 
-- Module Name: basictest - Behavioral
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

entity basictest is
--  Port ( );
end basictest;

architecture Behavioral of basictest is
component basic port(A : in std_logic; x: out integer);
end component;
signal A : std_logic;
signal x : integer;
begin
uut : basic port map(A,x);
process
begin
A <= '0';
wait for 5ns;
A <= '1';
wait for 5ns;
end process;
end Behavioral;
