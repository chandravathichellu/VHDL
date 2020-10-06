----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2019 06:55:08 PM
-- Design Name: 
-- Module Name: ALUTB - Behavioral
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

entity ALUTB is
end ALUTB;

architecture Behavioral of ALUTB is
signal A,B,Sel,Z : std_logic_vector(3 downto 0);
component ALU port(A,B,Sel : in std_logic_vector(3 downto 0); Z : out std_logic_vector(3 downto 0));
end component;
begin
call : ALU port map(A,B,Sel,Z);
process
begin 
A<="0001";B<="1100";sel<="0000";
wait for 10ns;
A<="1101";B<="0110";sel<="0001";
wait for 10ns;
A<="1110";B<="1001";sel<="0010";
wait for 10ns;
A<="0111";B<="0000";sel<="0011";
wait for 10ns;
A<="1000";B<="0001";sel<="0100";
wait for 10ns;
A<="1100";B<="0100";sel<="0101";
wait for 10ns;
A<="0010";B<="0011";sel<="0110";
wait for 10ns;
A<="0101";B<="1010";sel<="0111";
wait for 10ns;
A<="0110";B<="1011";sel<="1000";
wait for 10ns;
A<="0100";B<="1111";sel<="1001";
wait for 10ns;
A<="0011";B<="0111";sel<="1010";
wait for 10ns;
A<="1010";B<="0111";sel<="1011";
wait for 10ns;
A<="1100";B<="1001";sel<="1100";
wait for 10ns;
A<="0010";B<="1101";sel<="1101";
wait for 10ns;
A<="1110";B<="1000";sel<="1110";
wait for 10ns;
A<="1001";B<="0110";sel<="1111";
wait for 10ns;
end process;
end Behavioral;
