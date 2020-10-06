----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2019 12:24:59 PM
-- Design Name: 
-- Module Name: JKDATA - Behavioral
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

entity JKDATA is
 port(J,K,clk,reset,preset : in std_logic; q,qbar : inout std_logic);
end JKDATA;

architecture Behavioral of JKDATA is
component nand_gate3 port( A,B,C: in STD_LOGIC; D : out STD_LOGIC);
end component;
signal s1,s2 : std_logic;
begin
Gate1 : nand_gate3 port map(J,qbar,clk,s1);
Gate2 : nand_gate3 port map(K,q,clk,s2);
Gate3 : nand_gate3 port map(s1,qbar,reset,q);
Gate4 : nand_gate3 port map(s2,q,preset,qbar);
end Behavioral;
