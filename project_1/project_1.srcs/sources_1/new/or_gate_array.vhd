----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/01/2019 07:01:07 PM
-- Design Name: 
-- Module Name: or_gate_array - Behavioral
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

entity or_gate_array is
      Port ( A : in STD_LOGIC_vector(3 downto 0);
           B : in STD_LOGIC_vector(3 downto 0);
           C : out STD_LOGIC_vector(3 downto 0));
end or_gate_array;

architecture Behavioral of or_gate_array is

begin

C <= A or B;

end Behavioral;
