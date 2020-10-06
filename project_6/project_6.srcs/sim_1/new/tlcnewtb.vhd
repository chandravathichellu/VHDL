----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2019 10:45:51 PM
-- Design Name: 
-- Module Name: tlcnewtb - Behavioral
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

entity tlcnewtb is
--  Port ( );
end tlcnewtb;

architecture Behavioral of tlcnewtb is
component tlcnew port ( sensor  : in STD_LOGIC; -- Sensor 
        clk  : in STD_LOGIC; -- clock 
        rst_n: in STD_LOGIC; -- reset active low 
        light_highway  : out STD_LOGIC_VECTOR(2 downto 0); -- light outputs of high way
     light_farm:    out STD_LOGIC_VECTOR(2 downto 0);
     check : out std_logic_vector(3 downto 0)
   -- light outputs of farm way
     --RED_YELLOW_GREEN 
   );
end component;
signal sensor,clk,rst_n : std_logic := '0';
signal light_highway, light_farm : std_logic_vector(2 downto 0);
signal check : std_logic_vector(3 downto 0);
begin
call : tlcnew port map(sensor,clk,rst_n,light_highway,light_farm,check);
clk_process :process
begin
clk <= '0';
wait for 10ns;
clk <= '1';
wait for 10ns;
end process;
stim_proc: process
   begin    
  rst_n <= '0';
  sensor <= '0';
      wait for 50ns;
  rst_n <= '1';
  wait for 100ns;
  sensor <= '1';
  wait for 200ns;
  sensor <= '0';
      wait;
   end process;
end Behavioral;
