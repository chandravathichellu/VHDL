----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2019 06:01:50 PM
-- Design Name: 
-- Module Name: left - Behavioral
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

entity left is
port (A : in std_logic_vector(3 downto 0);A9 : out std_logic_vector(3 downto 0));
end left;

architecture Behavioral of left is
begin
A9(3 downto 1) <= A(2 downto 0) ;
A9(0)<=A(3);
end Behavioral;
