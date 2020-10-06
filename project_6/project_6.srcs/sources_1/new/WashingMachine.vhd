----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2019 10:50:14 PM
-- Design Name: 
-- Module Name: WashingMachine - Behavioral
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

entity WashingMachine is
port(
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

end WashingMachine;

architecture Behavioral of WashingMachine is
TYPE state_type IS (zero,one,two,three,four,five,six,seven);
SIGNAL state: state_type;

begin
next_state_logic: process(clk)
begin
if(clk'event and clk='1') then
case state is

when zero =>
if (door_open = '1' or start_wash = '0') then
      state <= zero;
elsif (door_open = '0' and start_wash='1')  then
      state <= one;
end if;

when one =>
    state <= two;
when two =>
    state <= three;
when three =>
    state <= four;
when four =>
    state <= five;
when five =>
    state <= six;
when six =>
    if (spin_dry='0')then
        state <= zero;
    elsif (spin_dry='1') then
        state <= seven;
   end if;

when seven =>
    state <= zero;
end case;
end if;
end process;

output_logic:process(reset,state,clk)
begin

if reset = '0' then
case state is

when zero =>
door_lock <='0';
water_pump<='0';
soap<='0';
rotate_drum<='0';
drain<='0';

when one =>
door_lock <='1';
water_pump<='1';
soap<='1';
rotate_drum<='0';
drain<='0';

when two =>
door_lock <='1';
water_pump<='0';
soap<='0';
rotate_drum<='1';
drain<='0';

when three =>
door_lock <='1';
water_pump<='0';
soap<='0';
rotate_drum<='0';
drain<='1';

when four =>
door_lock <='1';
water_pump<='1';
soap<='0';
rotate_drum<='0';
drain<='0';

when five =>
door_lock <='1';
water_pump<='0';
soap<='0';
rotate_drum<='1';
drain<='0';

when six =>

door_lock <='1';
water_pump<='0';
soap<='0';
rotate_drum<='0';
drain<='1';

when seven =>
door_lock <='1';
water_pump<='0';
soap<='0';
rotate_drum<='1';
drain<='1';


end case;
elsif reset='1' then
door_lock <='0';
water_pump<='0';
soap<='0';
rotate_drum<='0';
drain<='0';
end if;
end process;

end Behavioral;