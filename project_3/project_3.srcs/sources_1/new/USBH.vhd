----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/02/2019 11:41:06 PM
-- Design Name: 
-- Module Name: USBH - Behavioral
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

entity USBH is
port(clk,clear,SIL,SIR : in std_logic; PI : in std_logic_vector(3 downto 0); q,qbar : inout std_logic_vector(3 downto 0); Sel : in std_logic_vector(1 downto 0));
end USBH;

architecture Behavioral of USBH is
begin
qbar <= not q;
process(clk,clear,SIL,SIR,PI,Sel)
begin
  if(clear = '1') then
     q <="0000";
  elsif(rising_edge(clk)) then
    if(Sel = "00") then
          q <= q ;
     elsif(Sel = "01") then
         q <= q(2) & q(1) & q(0) & SIL ;
     elsif(Sel = "10") then
         q <= SIR & q(3) & q(2) & q(1) ;
      else
         q <= PI ;
     end if;
 end if;
end process;
end Behavioral;
