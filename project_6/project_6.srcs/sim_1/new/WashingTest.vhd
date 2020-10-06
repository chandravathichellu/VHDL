----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2019 11:00:26 PM
-- Design Name: 
-- Module Name: WashingTest - Behavioral
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

entity WashingTest is
--  Port ( );
end WashingTest;

architecture Behavioral of WashingTest is

component WashingMachine port(
--inputs
clk: in std_logic;
spin_dry: std_logic;
start_wash: std_logic;
Door_open: in std_logic;
reset: in std_logic;
--outputs
door_lock: out std_logic;
water_pump: out std_logic;
soap: out std_logic;
rotate_drum: out std_logic;
drain: out std_logic
);
end component;
signal clk,dry,start_wash,lid_open,reset,lid_lock,pump_in,detergent,drum_rotate,drain: std_logic; 

begin
call : WashingMachine port map(clk,dry,start_wash,lid_open,reset,lid_lock,pump_in,detergent,drum_rotate,drain);
process
begin
clk <= '0';
wait for 10ns;
clk <= '1';
wait for 10ns;
end process;

process
begin
reset <= '0';
start_wash <= '1';
dry <= '0';
lid_open <= '0';
wait for 150ns;
dry <= '1';
wait for 150ns;
reset <= '1';
end process;

end Behavioral;
