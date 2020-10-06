----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/01/2019 07:24:36 PM
-- Design Name: 
-- Module Name: SUB - Behavioral
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

entity SUB is
port(A,B : in std_logic_vector(3 downto 0); Bi : in std_logic; Dif : out std_logic_vector(3 downto 0); Bout : out std_logic);
end SUB;

architecture Behavioral of SUB is
component FASUB port(A,B : in std_logic; Bi : in std_logic; Dif : out std_logic; Bout : out std_logic);
end component;
signal k,l,m : std_logic;
begin
FASUB1 : FASUB port map(A(0),B(0),Bi,Dif(0),k);
FASUB2 : FASUB port map(A(1),B(1),k,Dif(1),l);
FASUB3 : FASUB port map(A(2),B(2),l,Dif(2),m);
FASUB4 : FASUB port map(A(3),B(3),m,Dif(3),Bout);
end Behavioral;
