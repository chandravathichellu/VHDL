----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2019 03:48:41 PM
-- Design Name: 
-- Module Name: demux14 - Behavioral
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity demux14 is
 port(inp : in std_logic_vector(8 downto 0); k: in std_logic_vector(3 downto 0); output : out std_logic_vector(8 downto 0));
end demux14;

architecture Behavioral of demux14 is
begin
process(inp,k)
variable p : std_logic_vector(8 downto 0);
begin
p := inp;
if(p(1 downto 0)="01") then
    p(8 downto 5):= p(8 downto 5)+k; 
elsif(p(1 downto 0)="10") then
    p(8 downto 5):= p(8 downto 5)-k;   
end if;
output <= p;
end process;
end Behavioral;
