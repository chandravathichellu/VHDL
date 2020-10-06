----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/01/2019 06:53:30 PM
-- Design Name: 
-- Module Name: and_gate_array - Behavioral
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

entity and_gate_array is
Port ( A : in STD_LOGIC_vector(3 downto 0);
           B : in STD_LOGIC_vector(3 downto 0);
           C : out STD_LOGIC_vector(3 downto 0));
end and_gate_array;

architecture Behavioral of and_gate_array is

begin

C <= A and B;

end Behavioral;
