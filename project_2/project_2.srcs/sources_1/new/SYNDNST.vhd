----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/31/2019 06:50:52 PM
-- Design Name: 
-- Module Name: SYNDNST - Behavioral
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

entity SYNDNST is
port(clk,clr,preset : in std_logic; q,qbar : inout std_logic_vector(3 downto 0));
end SYNDNST;

architecture Behavioral of SYNDNST is
component TFFNEW port(T,clk,clr,preset : in std_logic; q,qbar : inout std_logic);
end component;
component and_gate port(U,V : in std_logic; W : out std_logic);
end component;
signal T : std_logic_vector(3 downto 0);
begin
Gate1 : and_gate port map(qbar(0),qbar(1),T(2));
Gate2 : and_gate port map(T(2),qbar(2),T(3));
FF1 : TFFNEW port map('1',clk,clr,preset,q(0),qbar(0));
FF2 : TFFNEW port map(qbar(0),clk,clr,preset,q(1),qbar(1));
FF3 : TFFNEW port map(T(2),clk,clr,preset,q(2),qbar(2));
FF4 : TFFNEW port map(T(3),clk,clr,preset,q(3),qbar(3));
end Behavioral;
