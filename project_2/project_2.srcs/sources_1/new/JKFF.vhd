----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/28/2019 10:22:26 PM
-- Design Name: 
-- Module Name: JKFF - Behavioral
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

entity JKFF is
   port(J,K,clk,reset : in std_logic; q,qbar : out std_logic);
end JKFF;

architecture Behavioral of JKFF is
signal qtem,qbartem:std_logic;
begin
q <= qtem;
qbar <= qbartem;
process(clk,reset)
begin
   
   if(reset='1') then 
       qtem <= '0'; 
       qbartem <='1';   
   elsif(rising_edge(clk)) then
      if (j='0' and k='0') then
          qtem <=  qtem;
           qbartem <= qbartem;
      elsif (j='0' and k='1') then
           qtem <= '0';
           qbartem <='1';  
      elsif (j='1' and k='0') then
           qtem <= '1';
           qbartem <='0';  
      else 
           qtem <= not qtem;
           qbartem <= not qbartem;
      end if;
   end if;
end process;
end Behavioral;
