----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2019 03:55:05 PM
-- Design Name: 
-- Module Name: shfn - Behavioral
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

entity shfn is
    port(m : in std_logic_vector(8 downto 0); n: out std_logic_vector(8 downto 0));
end shfn;

architecture Behavioral of shfn is
begin
 n(7 downto 0)<=m(8 downto 1);
 n(8)<=m(8);
end Behavioral;
