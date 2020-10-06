----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2019 02:02:30 PM
-- Design Name: 
-- Module Name: ASYUDTEST - Behavioral
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

entity ASYUDTEST is
--  Port ( );
end ASYUDTEST;

architecture Behavioral of ASYUDTEST is
component ASYNUDB port(clk,reset,x: in std_logic; q,qbar : inout std_logic_vector(2 downto 0));
end component;
signal clk : std_logic:= '1';
signal reset : std_logic := '1';
signal x : std_logic :='0' ;
signal q,qbar : std_logic_vector(2 downto 0);
constant clkper : time := 10ns;
begin
 sampl : ASYNUDB port map(clk,reset,x,q,qbar);
clk_proc: process
  begin
    reset <= '0';
    wait for clkper/2;
    clk <= '0';
   wait for clkper/2;
    clk <= '1';
 end process;
 process
 begin
   wait for 50 ns;
   X <= '1';
   wait for 50ns;
   X <= '0';
 end process;
end Behavioral;
