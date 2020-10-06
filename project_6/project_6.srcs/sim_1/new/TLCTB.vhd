----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2019 10:22:50 PM
-- Design Name: 
-- Module Name: TLCTB - Behavioral
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

entity TLCTB is
--  Port ( );
end TLCTB;

ARCHITECTURE behavior OF TLCTB IS 
    -- Component Declaration for the traffic light controller 
    COMPONENT TLC
    PORT(
         sensor : IN  std_logic;
         clk : IN  std_logic;
         rst_n : IN  std_logic;
         light_highway : OUT  std_logic_vector(2 downto 0);
         light_farm : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
   signal sensor : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst_n : std_logic := '0';
  --Outputs
   signal light_highway : std_logic_vector(2 downto 0);
   signal light_farm : std_logic_vector(2 downto 0);
   constant clk_period : time := 10 ns;
BEGIN
 -- Instantiate the traffic light controller 
   trafficlightcontroller : TLC PORT MAP (
          sensor => sensor,
          clk => clk,
          rst_n => rst_n,
          light_highway => light_highway,
          light_farm => light_farm
        );
   -- Clock process definitions
   clk_process :process
   begin
  clk <= '0';
  wait for clk_period/2;
  clk <= '1';
  wait for clk_period/2;
   end process;
   stim_proc: process
   begin    
  rst_n <= '0';
  sensor <= '0';
      wait for clk_period*10;
  rst_n <= '1';
  wait for clk_period*20;
  sensor <= '1';
  wait for clk_period*100;
  sensor <= '0';
      wait;
   end process;

END;