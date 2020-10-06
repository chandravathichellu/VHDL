----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/28/2019 06:02:33 PM
-- Design Name: 
-- Module Name: RCADATA - Behavioral
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

entity RCADATA is
  port(A,B : in std_logic_vector(3 downto 0);cin : in std_logic; Sum : out std_logic_vector(3 downto 0); Cout : out std_logic);
end RCADATA;

architecture Behavioral of RCADATA is
signal p,g,c : std_logic_vector(3 downto 0);
begin
    p<= A xor B;
    g<= A and B;
    c(0)<= (p(0) and cin) or g(0);
    c(1)<= (p(1) and c(0)) or g(1);
    c(2)<= (p(2) and c(1)) or g(2);
    cout<= (p(3) and c(2)) or g(3);
    sum(0)<= p(0) xor cin;
    sum(1)<= p(1) xor c(0);
    sum(2)<= p(2) xor c(1);
    sum(3)<= p(3) xor c(2);
end Behavioral;
