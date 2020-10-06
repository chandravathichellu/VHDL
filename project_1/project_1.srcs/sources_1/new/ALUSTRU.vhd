----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/28/2019 07:25:54 PM
-- Design Name: 
-- Module Name: ALUSTRU - Behavioral
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
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALUSTRU is
 port(A,B : in std_logic_vector(3 downto 0); Sel : in std_logic_vector(2 downto 0); x: in std_logic; C: out std_logic_vector(3 downto 0));
end ALUSTRU;

architecture Behavioral of ALUSTRU is
signal k1,k2,k3,k4,k5,k6,k7,k8 : std_logic_vector(3 downto 0);
component xor_gate_array port(A,B : in std_logic_vector(3 downto 0) ; C : out std_logic_vector(3 downto 0));
end component;
component and_gate_array port(A,B : in std_logic_vector(3 downto 0) ; C : out std_logic_vector(3 downto 0));
end component;
component or_gate_array port(A,B : in std_logic_vector(3 downto 0) ; C : out std_logic_vector(3 downto 0));
end component;
component RCAST port(A,B : in std_logic_vector(3 downto 0);cin : in std_logic; Sum : out std_logic_vector(3 downto 0); Cout : out std_logic);
end component;
component SUB port(A,B : in std_logic_vector(3 downto 0); Bi : in std_logic; Dif : out std_logic_vector(3 downto 0); Bout : out std_logic);
end component;
component Inv_array port(A: in std_logic_vector(3 downto 0) ; C : out std_logic_vector(3 downto 0));
end component;
signal y,z : std_logic_vector(3 downto 0);
begin 
 with sel select
   y <= K1 when "000", 
        K2 when "001",
        K3 when "010",
        K4 when "011",
        K5 when "100",
        K6 when "101",
        K7 when "110",
        K8 when "111";

end Behavioral;
