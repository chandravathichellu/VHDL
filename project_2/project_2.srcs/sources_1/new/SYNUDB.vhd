----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2019 07:40:15 PM
-- Design Name: 
-- Module Name: SYNUDB - Behavioral
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
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SYNUDB is
port(clk,clr,preset,x : in std_logic; q,qbar : inout std_logic_vector(3 downto 0));
end SYNUDB;

architecture Behavioral of SYNUDB is
begin
qbar <=not q;
process(clk,clr,preset,x)
begin
   if(clr='1' and preset='0') then
       q<="1111";
    elsif(clr='0' and preset='1') then
       q<="0000";
    elsif(clr='0' and preset='0') then
      q<="UUUU";
    else 
      if(rising_edge(clk)) then  
         if(x='0') then 
           q<=q+1;
         else 
           q<=q-1;
      end if;
    end if;
  end if;
end process;
end Behavioral;
