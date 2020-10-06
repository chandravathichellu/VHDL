----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2019 07:23:55 PM
-- Design Name: 
-- Module Name: SYNUPB - Behavioral
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
use IEEE.STD_LOGIC_arith.all;
use IEEE.STD_LOGIC_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SYNUPB is
   port(clk,clr,preset: in std_logic; q,qbar : inout std_logic_vector(3 downto 0));
end SYNUPB;

architecture Behavioral of SYNUPB is
begin
qbar <=not q;
process(clk,clr,preset)
begin
   if(clr='1' and preset='0') then
       q<="1111";
    elsif(clr='0' and preset='1') then
       q<="0000";
    elsif(clr='0' and preset='0') then
      q<="UUUU";
    else 
      if(rising_edge(clk)) then  
          q<=q+1;
      end if;
    end if;
end process;
end Behavioral;
