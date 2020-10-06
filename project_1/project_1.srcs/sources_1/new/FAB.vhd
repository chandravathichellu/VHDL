----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/27/2019 10:11:34 PM
-- Design Name: 
-- Module Name: FAB - Behavioral
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

entity FAB is
    port(A,B,C : in std_logic; Carry,Sum: out std_logic);
end FAB;

architecture Behavioral of FAB is
begin
process(A,B,C)
 begin
    if (A ='0' and B='0') then
     Sum <= C;
     Carry <='0';
    elsif( A='0' and B='1') then
     Sum <= not C;
     Carry <= C;
    elsif (A='1' and B= '0') then
     Sum <= not C;
     Carry <= C;
    else
      Sum <= C;
      Carry <= '1';
     end if;
end process;
end Behavioral;


