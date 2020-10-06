----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2019 04:30:42 PM
-- Design Name: 
-- Module Name: Vendingmachine - Behavioral
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


entity Vendingmachine is
port (clock : in std_logic; --Clock, active high
rst : in std_logic; --Async. Reset, active low
CoinIn : in std_logic_vector (1 downto 0); --Which coin was inserted
product : out std_logic; --Is product dispensed ?
CoinOut : out std_logic_vector (1 downto 0) --Which coin is dispensed?
 );

end entity;
architecture behavior of Vendingmachine is
-- add your code here
type state_type is (idle, --start state/reset
put_money, --waiting to enter money
 in_5,in_10,in_15,in_20, --represent the current sum of money after returning change
 change_1, --should return change of 1$
product_out --dispence product can.
 ); --type of state machine.
signal current_s,next_s: state_type; --current and next state declaration.

begin

process(clock,rst)
begin

if(rst = '0') then
current_s<= idle; --defualt state is on RESET
elsif(rising_edge(clock) and clock = '1') then
current_s<= next_s;
 end if;
end process;
--------------------
--vending_machine process:
process(current_s,CoinIn)
begin
case current_s is
 when idle => --state reset or idle
 product <= '0';
CoinOut<= "00";
next_s<= put_money;
 ------------------------------------------------------
 when put_money => --wait for money to be entered
if(CoinIn = "00")then
 product <= '0';
CoinOut<= "00";
next_s<= put_money;
elsif(CoinIn = "01")then --insert 5rs
 product <= '0';
CoinOut<= "00";
next_s<= in_5;
elsif(CoinIn = "10")then --insert 10rs
 product <= '0';
CoinOut<= "00";
next_s<= in_10;
elsif(CoinIn = "11")then --insert 20rs
 product <= '0';
CoinOut<= "00";
next_s<= product_out;
 end if;
 ------------------------------------------------------
 when in_5 =>
if(CoinIn = "00") then--stay on the same state
 product <= '0';
CoinOut<= "00";
next_s<= in_5;
elsif(CoinIn = "01") then--inserted another 5rs
 product <= '0';
CoinOut<= "00";
next_s<= in_10;
elsif(CoinIn = "10") then--inserted another 10rs
 product <= '0';
CoinOut<= "00";
next_s<= in_15;
elsif(CoinIn = "11") then
 product <= '0';
CoinOut<= "01";
next_s<= product_out;
 end if;
 ------------------------------------------------------
when in_10 =>
if(CoinIn = "00") then--stay on the same state
  product <= '0';
CoinOut<= "00";
next_s<= in_10;
elsif(CoinIn = "01") then--inserted another 5rs
  product <= '0';
CoinOut<= "00";
next_s<= in_15;
elsif(CoinIn = "10") then--inserted another 10rs
  product <= '0';
CoinOut<= "00";
next_s<= product_out;
elsif(CoinIn = "11") then
  product <= '0';
CoinOut<= "10";
next_s<= product_out;
  end if;

 ------------------------------------------------------
when in_15 =>
if(CoinIn = "00") then--stay on the same state
   product <= '0';
CoinOut<= "00";
next_s<= in_15;
elsif(CoinIn = "01") then--inserted another 5rs
   product <= '0';
CoinOut<= "00";
next_s<= product_out;
elsif(CoinIn = "10") then--inserted another 10rs
   product <= '0';
CoinOut<= "01";
next_s<= product_out;
elsif(CoinIn = "11") then
   product <= '0';
CoinOut<= "11";
next_s<= product_out;
   end if;
 ------------------------------------------------------
 when in_20 => -- input = 5 coin
 product <= '0';
CoinOut<= "00";
next_s<= product_out;
 ------------------------------------------------------
 when product_out =>
 product <= '1';
CoinOut<= "00";
next_s<= put_money; 

when others=>
product<='0';
CoinOut<= "00";
next_s<= put_money; 
end case;
end process;

end behavior;
