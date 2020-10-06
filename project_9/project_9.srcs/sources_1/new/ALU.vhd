----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2019 04:40:50 PM
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
port(A,B,Sel : in std_logic_vector(3 downto 0); Z : out std_logic_vector(3 downto 0));
end ALU;

architecture Behavioral of ALU is
signal I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15 : std_logic_vector(3 downto 0);
component mux16to1 port(I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,sel : in std_logic_vector(3 downto 0);  f : out std_logic_vector(3 downto 0));
end component;
component sum port(A,B : in std_logic_vector(3 downto 0);A1 : out std_logic_vector(3 downto 0));
end component;
component dif port(A,B : in std_logic_vector(3 downto 0);A2 : out std_logic_vector(3 downto 0));
end component;
component inc port(A: in std_logic_vector(3 downto 0);A3 : out std_logic_vector(3 downto 0));
end component;
component dec port(A: in std_logic_vector(3 downto 0);A4 : out std_logic_vector(3 downto 0));
end component;
component buf port(A: in std_logic_vector(3 downto 0);A5 : out std_logic_vector(3 downto 0));
end component;
component andg port(A,B : in std_logic_vector(3 downto 0);A6 : out std_logic_vector(3 downto 0));
end component;
component org  port(A,B : in std_logic_vector(3 downto 0);A7 : out std_logic_vector(3 downto 0));
end component;
component xorga port(A,B : in std_logic_vector(3 downto 0);A8 : out std_logic_vector(3 downto 0));
end component;
component left port(A: in std_logic_vector(3 downto 0);A9: out std_logic_vector(3 downto 0));
end component;
component right port(A : in std_logic_vector(3 downto 0);A10 : out std_logic_vector(3 downto 0));
end component;
component nandg port(A,B : in std_logic_vector(3 downto 0); A11 : out std_logic_vector(3 downto 0));
end component;
component norg port(A,B : in std_logic_vector(3 downto 0);A12 : out std_logic_vector(3 downto 0));
end component;
component xnorg port(A,B : in std_logic_vector(3 downto 0);A13 : out std_logic_vector(3 downto 0));
end component;
begin
gate1 : sum port map(A,B,I0);
gate2 : dif port map(A,B,I1);
gate3 : inc port map(A,I2);
gate4 : inc port map(B,I3);                                           
gate5 : dec port map(A,I4);
gate6 : dec port map(B,I5);
gate7 : buf port map(A,I6);
gate8 : buf port map(B,I7);
gate9 : andg port map(A,B,I8);
gate10 : org port map(A,B,I9);
gate11 : xorga port map(A,B,I10);
gate12 : left port map(A,I11);
gate13 : right port map(B,I12);
gate14 : nandg port map(A,B,I13);
gate15 : norg port map(A,B,I14);
gate16 : xnorg port map(A,B,I15);
call : mux16to1 port map(I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,Sel,Z);
end Behavioral;
