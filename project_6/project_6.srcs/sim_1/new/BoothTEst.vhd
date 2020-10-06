----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2019 04:08:51 PM
-- Design Name: 
-- Module Name: BoothTEst - Behavioral
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

entity BoothTEst is
--  Port ( );
end BoothTEst;

architecture Behavioral of BoothTEst is
component BoothSt port(A,B : in std_logic_vector(3 downto 0); Z : out std_logic_vector(7 downto 0));
end component;
signal A,B : std_logic_vector(3 downto 0);
signal Z : std_logic_vector(7 downto 0);
begin
call: BoothSt port map(A,B,Z);
process
begin
A<= "0111";
B<= "0011";
wait for 50ns;
A<= "1011";
B<= "1000";
wait for 50ns;
A<= "0011";
B<= "1100";
wait for 50ns;
A<= "1001";
B<= "0101";
wait for 50ns;
A<= "0110";
B<= "1101";
wait for 50ns;
end process;
end Behavioral;
