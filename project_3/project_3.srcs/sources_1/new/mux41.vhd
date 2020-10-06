----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/02/2019 10:11:23 PM
-- Design Name: 
-- Module Name: mux41 - Behavioral
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

entity mux41 is
port(q,qn,qp,pi : in std_logic; F :out std_logic; Sel : in std_logic_vector(1 downto 0));
end mux41;

architecture Behavioral of mux41 is
begin
 F <= (Sel(1) and Sel(0) and pi) or (Sel(1) and (not Sel(0)) and qp) or ((not Sel(1)) and Sel(0) and qn) or ( (not Sel(1)) and (not Sel(0)) and q);
end Behavioral;
