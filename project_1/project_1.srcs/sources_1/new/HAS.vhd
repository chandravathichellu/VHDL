----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/27/2019 05:52:38 PM
-- Design Name: 
-- Module Name: HAS - Behavioral
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

entity HAS is
  port(A, B : in std_logic; Sum,Carry : out std_logic);
end HAS;

architecture Behavioral of HAS is
component xor_gate
    port(X,Y : in std_logic; Z:out std_logic);
end component;
component and_gate
   port(U,V : in std_logic ; W : out std_logic);
end component;
begin 

   Gate1 : xor_gate port map(A,B,Sum);
   Gate2 : and_gate port map(A,B,Carry);
   
end Behavioral;

