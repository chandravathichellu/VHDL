----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/01/2019 07:31:43 PM
-- Design Name: 
-- Module Name: FASUB - Behavioral
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

entity FASUB is
port(A,B : in std_logic; Bi : in std_logic; Dif : out std_logic; Bout : out std_logic);
end FASUB;

architecture Behavioral of FASUB is
begin
 Dif <= A xor B xor Bi;
 Bout <= ((A xnor B) and bi) or ((not A) and B);
end Behavioral;
