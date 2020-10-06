----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/02/2019 12:44:54 AM
-- Design Name: 
-- Module Name: BS - Behavioral
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

entity BS is
 port(Sel : in std_logic_vector(2 downto 0); B : in std_logic ; P :out std_logic );
end BS;

architecture Behavioral of BS is
component and_gate port(A,B : in std_logic; C : out std_logic);
end component;
component or_gate port(A,B : in std_logic; C : out std_logic);
end component;
signal k,l,m : std_logic;
begin
m <= not B;
AND1 : and_gate port map(Sel(0),B,k);
AND2 : and_gate port map(Sel(1),m,l);
OR1 : or_gate port map(k,l,P);
end Behavioral;
