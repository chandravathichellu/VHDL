----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2019 04:44:02 PM
-- Design Name: 
-- Module Name: mux16to1 - Behavioral
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

entity mux16to1 is
port(I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,sel : in std_logic_vector(3 downto 0);  f : out std_logic_vector(3 downto 0));
end mux16to1;

architecture Behavioral of mux16to1 is
signal s1,s2,s3,s4 : std_logic_vector(3 downto 0);
component mux4to1 port (a,b,c,d: in std_logic_vector(3 downto 0); sel : in std_logic_vector(1 downto 0); f: out std_logic_vector(3 downto 0));
end component;
begin
mux1 : mux4to1 port map(I0,I1,I2,I3,sel(1 downto 0),s1);
mux2 : mux4to1 port map(I4,I5,I6,I7,sel(1 downto 0),s2);
mux3 : mux4to1 port map(I8,I9,I10,I11,sel(1 downto 0),s3);
mux4 : mux4to1 port map(I12,I13,I14,I15,sel(1 downto 0),s4);
mux5 : mux4to1 port map(s1,s2,s3,s4,sel(3 downto 2),f);
end Behavioral;
