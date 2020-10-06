----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/27/2019 09:48:28 PM
-- Design Name: 
-- Module Name: FAS - Behavioral
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

entity FAS is
 port(A,B,C : in std_logic; Carry,Sum : out std_logic);
end FAS;
architecture Behavioral of FAS is
 component xor_gate port(X,Y : in std_logic; Z:out std_logic);
 end component;
 component and_gate port(U,V : in std_logic; W:out std_logic);
 end component;
 component or_gate port(A,B : in std_logic; orout : out std_logic);
 end component;
 signal k,l,m : std_logic;
 begin
    xor1 : xor_gate port map(X=>A,Y=>B,Z=>k);
    xor2 : xor_gate port map(X=>k,Y=>C,Z=>Sum);
    and1 : and_gate port map(U=>A,V=>B,W=>l);
    and2 : and_gate port map(U=>k,V=>c,W=>m);
    or1 : or_gate port map(A=>l,B=>m,orout=>Carry);
end Behavioral;
