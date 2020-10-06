----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/02/2019 01:53:23 AM
-- Design Name: 
-- Module Name: Mux21 - Behavioral
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

entity Mux21 is
  port(I1,I2: in std_logic_vector(3 downto 0); Sel: in std_logic; K1 : out std_logic_vector(3 downto 0));
end Mux21;

architecture Behavioral of Mux21 is
signal A1,A2,A3,A4 : std_logic;
begin
 
A1 <= (I1(0) and (not Sel)) or (I2(0) and Sel);
A2 <= (I1(1) and (not Sel)) or (I2(1) and Sel);
A3 <= (I1(2) and (not Sel)) or (I2(2) and Sel);
A4 <= (I1(3) and (not Sel)) or (I2(3) and Sel);

K1 <= A4 & A3 & A2 & A1;

end Behavioral;
