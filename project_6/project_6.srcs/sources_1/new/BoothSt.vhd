----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2019 10:22:53 AM
-- Design Name: 
-- Module Name: BoothSt - Behavioral
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

entity BoothSt is
 port(A,B : in std_logic_vector(3 downto 0); Z : out std_logic_vector(7 downto 0));
end BoothSt;

architecture Behavioral of BoothSt is
component demux14 port(inp : in std_logic_vector(8 downto 0); k: in std_logic_vector(3 downto 0); output : out std_logic_vector(8 downto 0));
end component;
component shfn port(m : in std_logic_vector(8 downto 0); n: out std_logic_vector(8 downto 0));
end component;
signal acc : std_logic_vector(8 downto 0);
signal t0,t1,t2,t3,a1,a2,a3,a4 : std_logic_vector(8 downto 0);
begin
    acc(8 downto 5)<="0000";
    acc(0)<='0';
    acc(4 downto 1)<= B;
    De0 : demux14 port map(acc,A,t0);
    sf0 : shfn port map(t0,a1);
    De1 : demux14 port map(a1,A,t1);
    sf1 : shfn port map(t1,a2);
    De2 : demux14 port map(a2,A,t2);
    sf2 : shfn port map(t2,a3);
    De3 : demux14 port map(a3,A,t3);
    sf3 : shfn port map(t3,a4);
    Z(7 downto 0)<=a4(8 downto 1);
end Behavioral;
