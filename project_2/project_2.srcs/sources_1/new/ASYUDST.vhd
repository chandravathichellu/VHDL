----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/29/2019 11:08:42 PM
-- Design Name: 
-- Module Name: ASYUDST - Behavioral
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

entity ASYUDST is
   port(clk,clr,preset,x: in std_logic; q,qbar : inout std_logic_vector(3 downto 0)); -- x=0 up counter, x=1 down counter
end ASYUDST;

architecture Behavioral of ASYUDST is
component JKFFNEW port(J,K,clk,clr,preset : in std_logic; q,qbar : inout std_logic);
end component;
component UD port(q,qbar,x : in std_logic ; m : out std_logic);
end component;
signal J,K : std_logic := '1';
signal m : std_logic_vector(2 downto 0);
begin
UPDN1 : UD port map(q(0),qbar(0),x,m(0));
UPDN2 : UD port map(q(1),qbar(1),x,m(1));
UPDN3 : UD port map(q(2),qbar(2),x,m(2));
FF1 : JKFFNEW port map(J,K,clk,clr,preset,q(0),qbar(0));
FF2 : JKFFNEW port map(J,K,m(0),clr,preset,q(1),qbar(1));
FF3 : JKFFNEW port map(J,K,m(1),clr,preset,q(2),qbar(2));
FF4 : JKFFNEW port map(J,K,m(2),clr,preset,q(3),qbar(3));
end Behavioral;
