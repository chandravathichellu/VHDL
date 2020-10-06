----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/27/2019 11:37:32 PM
-- Design Name: 
-- Module Name: FABYHA - Behavioral
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

entity FABYHA is
   port(X,Y,C:in std_logic; S,Ca: out std_logic);
end FABYHA;

architecture Behavioral of FABYHA is

component HAS port(A,B : in std_logic ; Sum,Carry : out std_logic);
end component;
component or_gate port(A,B : in std_logic ; C : out std_logic);
end component;
signal k,l,m : std_logic;
begin
  XOR1: HAS port map(A=>x,B=>y,Sum=>k,Carry=>l);
  XOR2: HAS port map(A=>k,B=>c,Sum=>s,Carry=>m); 
  OR1 : or_gate port map(A=>l,B=>m,C=>Ca);
  
end Behavioral;
