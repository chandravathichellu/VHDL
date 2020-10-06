----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2019 08:52:13 PM
-- Design Name: 
-- Module Name: DFF - Behavioral
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

entity DFF is
 port(D,clk,clr,preset : in std_logic; q,qbar : inout std_logic);
end DFF;

architecture Behavioral of DFF is
begin
qbar <= not q;
process(D,clk,clr,preset)
begin
   if (clr='0' and preset='1') then
      q <= '0';
  elsif (clr='1' and preset='0') then
            q <= '1';         
  elsif (clr='0' and preset='0') then
                  q <= 'U';
  else
      if(rising_edge(clk)) then
          q <= D ;    
       end if;
   end if;
end process;
end Behavioral;
