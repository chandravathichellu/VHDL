----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/01/2019 12:07:17 AM
-- Design Name: 
-- Module Name: DFFNEW - Behavioral
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

entity DFFNEW is
  port(D,clk,reset,preset : in std_logic; q,qbar : inout std_logic); --reset and preset active low
end DFFNEW;

architecture Behavioral of DFFNEW is
begin
qbar <= not q;
process(D,clk,reset,preset)
begin
   if (reset='0' and preset ='1') then
      q <= '0';
   elsif(reset='1' and preset ='0') then
     q<= '1';
   elsif(rising_edge(clk) and reset ='1' and preset ='1') then
      q <= D ;    
   end if;
end process;
end Behavioral;
