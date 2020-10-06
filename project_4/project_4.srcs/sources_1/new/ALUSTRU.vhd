----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/01/2019 08:52:28 PM
-- Design Name: 
-- Module Name: ALUSTRU - Behavioral
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
use IEEE.STD_LOGIC_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALUSTRU is
 port(A,B : in std_logic_vector(3 downto 0); Sel : in std_logic_vector(3 downto 0); x: in std_logic; C: out std_logic_vector(3 downto 0));
end ALUSTRU;

architecture Behavioral of ALUSTRU is
signal m : std_logic;
begin
  with sel select 
    C <= A+B when "0000",
         A-B when "0001",
         A+1 when "0010",
         B+1 when "0011",
         A and B when "0100",
         A or B when "0101",
         A xor B when "0110",
         not A when "0111",
         not B when "1000",
         A nand B when "1001",
         A nor B when "1010",
         A xnor B when "1011",
         A+B+x when "1100",
         A-B-x when "1101",
         "1111" when "1110",
         "0000" when others;     
end Behavioral;
