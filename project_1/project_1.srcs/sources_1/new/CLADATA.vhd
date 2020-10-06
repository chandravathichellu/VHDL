----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/28/2019 06:47:34 PM
-- Design Name: 
-- Module Name: CLADATA - Behavioral
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

entity CLADATA is
   port(A,B : in std_logic_vector(3 downto 0);cin : in std_logic; Sum : out std_logic_vector(3 downto 0); Cout : out std_logic);
end CLADATA;

architecture Behavioral of CLADATA is
signal p,g,c : std_logic_vector(3 downto 0);
begin
    p<= A xor B;
    g<= A and B;
    c(0)<= (p(0) and cin) or g(0);
    c(1)<= (p(1) and p(0) and cin) or (p(1) and g(0)) or g(1);
    c(2)<= (p(2) and  p(1) and p(0) and cin) or (p(2) and p(1) and g(0)) or (p(2) and g(1)) or g(2);
    cout<= (p(3) and  p(2) and p(1) and p(0) and cin) or (p(3) and p(2) and p(1) and g(0)) or (p(3) and p(2) and g(1)) or (p(3) and g(2)) or g(3);
    sum(0)<= p(0) xor cin;
    sum(1)<= p(1) xor c(0);
    sum(2)<= p(2) xor c(1);
    sum(3)<= p(3) xor c(2);
end Behavioral;
