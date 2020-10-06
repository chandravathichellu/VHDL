----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/01/2019 07:12:30 PM
-- Design Name: 
-- Module Name: ALUSTR - Behavioral
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

entity ALUSTR is
 port(A,B : in std_logic_vector(3 downto 0); Sel : in std_logic_vector(2 downto 0); Cin: in std_logic; FO : out std_logic_vector(3 downto 0); y : out std_logic);
end ALUSTR;

architecture Behavioral of ALUSTR is
component and_gate_array port(A,B : in std_logic_vector(3 downto 0); C : out std_logic_vector(3 downto 0));
end component;
component xor_gate_array port(A,B : in std_logic_vector(3 downto 0); C: out std_logic_vector(3 downto 0 ));
end component;
component or_gate_array port(A,B : in std_logic_vector(3 downto 0); C: out std_logic_vector(3 downto 0 ));
end component; 
component Inv_array port(A : in std_logic_vector(3 downto 0); C: out std_logic_vector(3 downto 0 ));
end component;
component FABYHA port(X,Y,C:in std_logic; S,Ca: out std_logic);
end component;
component BS port(Sel : in std_logic_vector(2 downto 0); B : in std_logic ; P :out std_logic );
end component;
component MUX41 port(I1,I2,I3,I4 : in std_logic_vector(3 downto 0); Sel : in std_logic_vector(2 downto 0); C : out std_logic_vector(3 downto 0));
end component;
component MUX21 port(I1,I2: in std_logic_vector(3 downto 0); Sel: in std_logic; K1 : out std_logic_vector(3 downto 0));
end component;
signal P,Ci,I1,I2,I3,I4,Bi,C : std_logic_vector(3 downto 0);
begin
-- arithmetic

Level1 : BS port map(sel,B(0),p(0));
Level2 : BS port map(sel,B(1),p(1));
Level3 : BS port map(sel,B(2),p(2));
Level4 : BS port map(sel,B(3),p(3));
FA1 : FABYHA port map(A(0),p(0),cin,C(0),Ci(0));
FA2 : FABYHA port map(A(1),p(1),ci(0),C(1),Ci(1));
FA3 : FABYHA port map(A(2),p(2),ci(1),C(2),Ci(2));
FA4 : FABYHA port map(A(3),p(3),Ci(2),C(3),y);

--logical

AND1 : and_gate_array port map(A,B,I1);
OR1 : or_gate_array port map(A,B,I2);
XOR1 : xor_gate_array port map(A,B,I3);
INV1 : Inv_array port map(A,I4);

--Mux4:1

Mux1 : MUX41 port map(I1,I2,I3,I4,Sel,Bi);
Mux2 : MUX21 port map(C,Bi,Sel(2),FO);

end Behavioral;
