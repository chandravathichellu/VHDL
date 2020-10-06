----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/03/2019 10:11:49 PM
-- Design Name: 
-- Module Name: MONIKA - Behavioral
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

entity MONIKA is
    Port (clk,clear,SL,SR : in std_logic;
          PI : in std_logic_vector(3 downto 0); 
          q,qbar : inout std_logic_vector(3 downto 0); 
          S : in std_logic_vector(1 downto 0));
end MONIKA;

architecture Behavioral of MONIKA is
component DFF port(D,clk,clear : in std_logic; q,qbar : inout std_logic);
end component;
component mux41 port(q,qn,qp,pi : in std_logic; F :out std_logic; Sel : in std_logic_vector(1 downto 0));
end component;
signal F : std_logic_vector(3 downto 0);
begin

DF1 : DFF port map(F(0),clk,clear,q(0),qbar(0));
DF2 : DFF port map(F(1),clk,clear,q(1),qbar(1));
DF3 : DFF port map(F(2),clk,clear,q(2),qbar(2));
DF4 : DFF port map(F(3),clk,clear,q(3),qbar(3));

MUX1 : mux41 port map(q(0),SL,q(1),PI(0),F(0),S);
MUX2 : mux41 port map(q(1),q(0),q(2),PI(1),F(1),S);
MUX3 : mux41 port map(q(2),q(1),q(3),PI(2),F(2),S);
MUX4 : mux41 port map(q(3),q(2),SR,PI(3),F(3),S);


end Behavioral;
