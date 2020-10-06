----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/29/2019 11:19:49 PM
-- Design Name: 
-- Module Name: ASYUPB - Behavioral
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
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ASYUPB is
port(clk,clr,preset: in std_logic; q,qbar : inout std_logic_vector(3 downto 0));
end ASYUPB;

architecture Behavioral of ASYUPB is
begin
qbar <= not q;
process(clk,clr,preset)
begin
  if (clr = '0' and preset='1') then
      q(0) <= '0';
  elsif (clr = '1' and preset='0') then
      q(0) <= '1';
  elsif (clr = '0' and preset='0') then
      q(0) <= 'U';
  else
      if(rising_edge(clk)) then
          q(0) <= not q(0);
      end if;
  end if;
end process ;
process(qbar(0),clr,preset)
begin
  if (clr = '0' and preset='1') then
      q(1) <= '0';
  elsif (clr = '1' and preset='0') then
      q(1) <= '1';
  elsif (clr = '0' and preset='0') then
      q(1) <= 'U';
  else
      if(rising_edge(qbar(0))) then
          q(1) <= not q(1);
      end if;
  end if;
end process ;
process(qbar(1),clr,preset)
begin
  if (clr = '0' and preset='1') then
      q(2) <= '0';
  elsif (clr = '1' and preset='0') then
      q(2) <= '1';
  elsif (clr = '0' and preset='0') then
      q(2) <= 'U';
  else
      if(rising_edge(qbar(1))) then
          q(2) <= not q(2);
      end if;
  end if;
end process ;
process(qbar(2),clr,preset)
begin
  if (clr = '0' and preset='1') then
      q(3) <= '0';
  elsif (clr = '1' and preset='0') then
      q(3) <= '1';
  elsif (clr = '0' and preset='0') then
      q(3) <= 'U';
  else
      if(rising_edge(qbar(2))) then
          q(3) <= not q(3);
      end if;
  end if;
end process ;
end Behavioral;
