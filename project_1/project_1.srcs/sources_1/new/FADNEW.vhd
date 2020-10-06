----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/28/2019 12:09:39 AM
-- Design Name: 
-- Module Name: FADNEW - Behavioral
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

entity FADNEW is
    port(A,B,C : in std_logic; Carry,Sum: out std_logic);
end FADNEW;

architecture Behavioral of FADNEW is
begin
process(A,B)
 begin
    if (A ='0' and B='0' and C='0') then
     Sum <= '0';
     Carry <='0';
    elsif (A ='0' and B='0' and C='1') then
         Sum <= '1';
         Carry <='0';
    elsif (A ='0' and B='1' and C='0') then
         Sum <='1';
         Carry <='0';
    elsif (A ='0' and B='1' and C='1') then
         Sum <= '0';
         Carry <='1';
    elsif (A ='1' and B='0' and C='0') then
         Sum <= '0';
         Carry <='1';
    elsif (A ='1' and B='0' and C='1') then
          Sum <= '0';
          Carry <='1'; 
    elsif (A ='1' and B='1' and C='0') then
          Sum <= '0';
          Carry <='1';                                  
    else 
      Sum <= '1';
      Carry <= '1';
     end if;
end process;
end Behavioral;
