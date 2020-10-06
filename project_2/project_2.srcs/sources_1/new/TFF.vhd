----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2019 05:50:00 PM
-- Design Name: 
-- Module Name: TFF - Behavioral
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

entity TFF is
 port(T,clk,reset : in std_logic; q,qbar : out std_logic);
end TFF;

architecture Behavioral of TFF is
signal tem :std_logic;
begin
q <= tem;
qbar <= not tem;
process(T,clk,reset)
begin
     if (reset='1') then
        tem <= '0';
     elsif (rising_edge(clk)) then
          if(T='0') then
             tem <=tem;
          elsif(T='1') then
              tem <= not tem;
           end if;
     end if;
end process;
end Behavioral;
