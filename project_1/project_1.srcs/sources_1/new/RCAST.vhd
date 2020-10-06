----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/28/2019 09:03:24 AM
-- Design Name: 
-- Module Name: RCAST - Behavioral
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

entity RCAST is
   port(A,B : in std_logic_vector(3 downto 0);cin : in std_logic; Sum : out std_logic_vector(3 downto 0); Cout : out std_logic);
end RCAST;

architecture Behavioral of RCAST is
component FABYHA port(X,Y,C:in std_logic; S,Ca: out std_logic);
end component;
signal k,l,m : std_logic;
begin
F1 : FABYHA port map(X=>A(0),Y=>B(0),C=>cin,S=>sum(0),Ca=>k);
F2 : FABYHA port map(X=>A(1),Y=>B(1),C=>k,S=>sum(1),Ca=>l);
F3 : FABYHA port map(X=>A(2),Y=>B(2),C=>l,S=>sum(2),Ca=>m);
F4 : FABYHA port map(X=>A(3),Y=>B(3),C=>m,S=>sum(3),Ca=>Cout);
end Behavioral;
