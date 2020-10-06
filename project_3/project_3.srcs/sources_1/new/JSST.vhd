----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2019 08:51:57 PM
-- Design Name: 
-- Module Name: JSST - Behavioral
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

entity JSST is
 port(clk,clr,preset : in std_logic ; q,qbar : inout std_logic_vector(3 downto 0));
end JSST;

architecture Behavioral of JSST is
component DFF  port(D,clk,clr,preset : in std_logic; q,qbar : inout std_logic);
end component;
begin
FF1 : DFF port map(q(1),clk,clr,preset,q(0),qbar(0));
FF2 : DFF port map(q(2),clk,clr,preset,q(1),qbar(1));
FF3 : DFF port map(q(3),clk,clr,preset,q(2),qbar(2));
FF4 : DFF port map(qbar(0),clk,clr,preset,q(3),qbar(3));
end Behavioral;
