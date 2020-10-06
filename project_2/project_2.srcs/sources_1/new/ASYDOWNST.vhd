----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/29/2019 10:54:51 PM
-- Design Name: 
-- Module Name: ASYDOWNST - Behavioral
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

entity ASYDOWNST is
   port(clk,clr,preset: in std_logic; q,qbar : inout std_logic_vector(3 downto 0));
end ASYDOWNST;

architecture Behavioral of ASYDOWNST is
component JKFFNEW port(J,K,clk,clr,preset : in std_logic; q,qbar : inout std_logic);
end component;
signal J,K : std_logic := '1';
begin
FF1 : JKFFNEW port map(J,K,clk,clr,preset,q(0),qbar(0));    
FF2 : JKFFNEW port map(J,K,q(0),clr,preset,q(1),qbar(1));
FF3 : JKFFNEW port map(J,K,q(1),clr,preset,q(2),qbar(2));
FF4 : JKFFNEW port map(J,K,q(2),clr,preset,q(3),qbar(3));
end Behavioral;
