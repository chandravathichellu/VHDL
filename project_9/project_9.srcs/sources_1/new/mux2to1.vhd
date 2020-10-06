----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2019 04:50:49 PM
-- Design Name: 
-- Module Name: mux2to1 - Behavioral
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

entity mux2to1 is
port(a,b : in std_logic_vector(3 downto 0); sel : in std_logic; f: out std_logic_vector(3 downto 0));
end mux2to1;

architecture Behavioral of mux2to1 is
begin
f <=((a(3) and not(sel))or(b(3) and sel))& ((a(2) and not(sel))or(b(2) and sel)) & ((a(1) and not(sel))or(b(1) and sel))&((a(0) and not(sel))or(b(0) and sel));
end Behavioral;
