----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/02/2019 01:08:13 AM
-- Design Name: 
-- Module Name: Mux41 - Behavioral
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

entity Mux41 is
  port(I1,I2,I3,I4 : in std_logic_vector(3 downto 0); Sel : in std_logic_vector(2 downto 0); C : out std_logic_vector(3 downto 0));
end Mux41;

architecture Behavioral of Mux41 is
component Mux21 port(I1,I2: in std_logic_vector(3 downto 0); Sel: in std_logic; K1 : out std_logic_vector(3 downto 0));
end component;
signal K1,K2 : std_logic_vector(3 downto 0);
begin
Mux1 : Mux21 port map(I1,I2,Sel(0),K1);
Mux2 : Mux21 port map(I3,I4,Sel(0),K2);
Mux3 : Mux21 port map(K1,K2,Sel(1),C);
end Behavioral;
