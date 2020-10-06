----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2019 05:38:16 PM
-- Design Name: 
-- Module Name: mul - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mul is
port (A,B : in std_logic_vector(3 downto 0);A4 : out std_logic_vector(3 downto 0));
end mul;

architecture Behavioral of mul is
begin
process(A,B) 
variable acc : std_logic_vector(8 downto 0);
variable k : std_logic_vector(3 downto 0);
variable i:integer;
begin
acc := "000000000";
acc(4 downto 1):=B;
for i in 0 to 3 loop
    k := acc(8 downto 5);
    if(acc(1)='0' and acc(0)='1') then
        acc(8 downto 5):= k+A;
    elsif(acc(1)='1' and acc(0)='0') then
        acc(8 downto 5):= k-A;
    end if;
    acc(7 downto 0):=acc(8 downto 1);
end loop;
a4(7 downto 0)<= acc(8 downto 1);
end process;
end Behavioral;
