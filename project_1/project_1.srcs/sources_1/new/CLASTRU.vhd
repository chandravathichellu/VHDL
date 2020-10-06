----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/28/2019 07:02:42 PM
-- Design Name: 
-- Module Name: CLASTRU - Behavioral
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

entity CLASTRU is
 port(A,B : in std_logic_vector(3 downto 0);cin : in std_logic; Sum : out std_logic_vector(3 downto 0); Cout : out std_logic);
end CLASTRU;

architecture Behavioral of CLASTRU is
component xor_gate port(X,Y : in std_logic; Z:out std_logic);
end component;
component and_gate port(U,V : in std_logic; W:out std_logic);
end component;
signal ci,p,g: std_logic_vector(3 downto 0);
begin
F1 : xor_gate port map(X=>A(0),y=>B(0),Z=>p(0));
F2 : xor_gate port map(X=>A(1),y=>B(1),Z=>p(1));
F3 : xor_gate port map(X=>A(2),y=>B(2),Z=>p(2));
F4 : xor_gate port map(X=>A(3),y=>B(3),Z=>p(3));
K1 : and_gate port map(U=>A(0),V=>B(0),W=>g(0));
K2 : and_gate port map(U=>A(1),V=>B(1),W=>g(1));
K3 : and_gate port map(U=>A(2),V=>B(2),W=>g(2));
K4 : and_gate port map(U=>A(3),V=>B(3),W=>g(3));
ci(0)<= (p(0) and cin) or g(0);
ci(1)<= (p(1) and p(0) and cin) or (p(1) and g(0)) or g(1);
ci(2)<= (p(2) and  p(1) and p(0) and cin) or (p(2) and p(1) and g(0)) or (p(2) and g(1)) or g(2);
cout<= (p(3) and  p(2) and p(1) and p(0) and cin) or (p(3) and p(2) and p(1) and g(0)) or (p(3) and p(2) and g(1)) or (p(3) and g(2)) or g(3);
S1 : xor_gate port map(X=>p(0),Y=>cin,Z=>Sum(0));
S2 : xor_gate port map(X=>p(1),Y=>ci(0),Z=>Sum(1));
S3 : xor_gate port map(X=>p(2),Y=>ci(1),Z=>Sum(2));
S4 : xor_gate port map(X=>p(3),Y=>ci(2),Z=>Sum(3));
end Behavioral;
