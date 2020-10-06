----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2019 04:51:13 PM
-- Design Name: 
-- Module Name: mux4to1 - Behavioral
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

entity mux4to1 is
port(a,b,c,d: in std_logic_vector(3 downto 0); sel : in std_logic_vector(1 downto 0); f: out std_logic_vector(3 downto 0));
end mux4to1;

architecture Behavioral of mux4to1 is
signal s1,s2 : std_logic_vector(3 downto 0);
component mux2to1 port(a,b : in std_logic_vector(3 downto 0); sel : in std_logic; f: out std_logic_vector(3 downto 0));
end component;
begin
mux1: mux2to1 port map(a,b,sel(0),s1);
mux2: mux2to1 port map(c,d,sel(0),s2);
mux3: mux2to1 port map(s1,s2,sel(1),f);
end Behavioral;
