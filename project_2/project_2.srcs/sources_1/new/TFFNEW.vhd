----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/13/2019 12:32:13 AM
-- Design Name: 
-- Module Name: TFFNEW - Behavioral
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

entity TFFNEW is
 port(T,clk,clr,preset : in std_logic; q,qbar : inout std_logic);
end TFFNEW;

architecture Behavioral of TFFNEW is
begin
process(T,clk,clr,preset)
begin
    if(clr='1' and preset='0') then
       q<='1';
    elsif(clr='0' and preset='1') then
       q<='0';
    elsif(clr='0' and preset='0') then
      q<='U';
    else 
      if(rising_edge(clk)) then  
          if(T='0') then
             q<=q;
          else
             q<=not q;
          end if;
      end if;
    end if;
end process;
qbar<= not q;
end Behavioral;
