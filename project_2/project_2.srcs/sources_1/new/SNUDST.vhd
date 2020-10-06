----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2019 06:54:14 PM
-- Design Name: 
-- Module Name: SNUDST - Behavioral
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

entity SNUDST is
 port(clk,clr,preset,x : in std_logic; q,qbar : inout std_logic_vector(3 downto 0)); --x=0 up counter, x=1 down counter
end SNUDST;

architecture Behavioral of SNUDST is
component TFFNEW port(T,clk,clr,preset : in std_logic; q,qbar : inout std_logic);
end component;
signal T : std_logic_vector(3 downto 0);
begin
T(3) <= ((not q(2)) and (not q(1)) and (not q(0)) and x ) or (q(2) and q(1)and q(0) and (not x));
T(2) <= ((not q(1)) and (not q(0)) and x ) or (q(1)and q(0) and (not x));
T(1) <= ((not q(0)) and x) or(q(0) and (not x));
T(0) <= '1';
FF1 : TFFNEW port map(T(0),clk,clr,preset,q(0),qbar(0));
FF2 : TFFNEW port map(T(1),clk,clr,preset,q(1),qbar(1));
FF3 : TFFNEW port map(T(2),clk,clr,preset,q(2),qbar(2));
FF4: TFFNEW port map(T(3),clk,clr,preset,q(3),qbar(3));
end Behavioral;
