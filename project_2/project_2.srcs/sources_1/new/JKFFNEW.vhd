----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/29/2019 12:35:55 AM
-- Design Name: 
-- Module Name: JKFFNEW - Behavioral
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

entity JKFFNEW is
    port(J,K,clk,clr,preset : in std_logic; q,qbar : inout std_logic);
end JKFFNEW;

architecture Behavioral of JKFFNEW is
begin process(J,K,clk,clr,preset) begin
    if(clr='1' and preset='0') then
       q<='1';
    elsif(clr='0' and preset='1') then
       q<='0';
    elsif(clr='0' and preset='0') then
      q<='U';
    else 
      if(rising_edge(clk)) then  
          if(J='0' and K='1') then
             q<='0';
          elsif(J='1' and K='0') then
             q<='1';
          elsif(J='0' and K='0') then
             q<=q;
          else
             q<=not q;
          end if;
      end if;
    end if;
end process;
qbar<= not q;
end Behavioral;
