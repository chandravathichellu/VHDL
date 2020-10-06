----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/29/2019 11:32:26 PM
-- Design Name: 
-- Module Name: ASYNUDB - Behavioral
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

entity ASYNUDB is
port(clk,clr,preset,x: in std_logic; q,qbar : inout std_logic_vector(3 downto 0)); --x=1 down counter, x=0 up counter
end ASYNUDB;

architecture Behavioral of ASYNUDB is
begin
qbar <= not q;
process(clk,clr,preset,x)
begin
  if (clr = '0' and preset='1') then
      q(0) <= '0';
  elsif (clr = '1' and preset='0') then
      q(0) <= '1';
  elsif (clr = '0' and preset='0') then
      q(0) <= 'U';
  else
     if(x='1') then 
          if(rising_edge(clk)) then
              q(0) <= not q(0);
           end if;
     else
          if(falling_edge(clk)) then
               q(0) <= not q(0);
          end if;
     end if;
  end if;
end process ;
process(q(0),clr,preset,x)
begin
  if (clr = '0' and preset='1') then
      q(1) <= '0';
  elsif (clr = '1' and preset='0') then
      q(1) <= '1';
  elsif (clr = '0' and preset='0') then
      q(1) <= 'U';
  else
      if(x='1') then 
            if(rising_edge(q(0))) then
                q(1) <= not q(1);
             end if;
       else
            if(falling_edge(q(0))) then
                 q(1) <= not q(1);
            end if;
       end if;
  end if;
end process ;
process(q(1),clr,preset,x)
begin
  if (clr = '0' and preset='1') then
      q(2) <= '0';
  elsif (clr = '1' and preset='0') then
      q(2) <= '1';
  elsif (clr = '0' and preset='0') then
      q(2) <= 'U';
  else
      if(x='1') then 
            if(rising_edge(q(1))) then
                q(2) <= not q(2);
             end if;
       else
            if(falling_edge(q(1))) then
                 q(2) <= not q(2);
            end if;
       end if;
  end if;
end process ;
process(q(2),clr,preset,x)
begin
  if (clr = '0' and preset='1') then
      q(3) <= '0';
  elsif (clr = '1' and preset='0') then
      q(3) <= '1';
  elsif (clr = '0' and preset='0') then
      q(3) <= 'U';
  else
      if(x='1') then 
            if(rising_edge(q(2))) then
                q(3) <= not q(3);
             end if;
       else
            if(falling_edge(q(2))) then
                 q(3) <= not q(3);
            end if;
       end if;
  end if;
end process ;
end Behavioral;
