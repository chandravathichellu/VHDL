----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2019 04:52:38 PM
-- Design Name: 
-- Module Name: tlcnew - Behavioral
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
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity tlcnew is
 port ( sensor  : in STD_LOGIC; -- Sensor 
        clk  : in STD_LOGIC; -- clock 
        rst_n: in STD_LOGIC; -- reset active low 
        light_highway  : out STD_LOGIC_VECTOR(2 downto 0); -- light outputs of high way
     light_farm:    out STD_LOGIC_VECTOR(2 downto 0);
     check : out std_logic_vector(3 downto 0)
   -- light outputs of farm way
     --RED_YELLOW_GREEN 
   );
end tlcnew;
architecture Behavioral of tlcnew is
signal delay_count:std_logic_vector(3 downto 0) := "0000";
type FSM_States is (HGRE_FRED, HYEL_FRED, HRED_FGRE, HRED_FYEL);
-- HGRE_FRED : Highway green and farm red
-- HYEL_FRED : Highway yellow and farm red
-- HRED_FGRE : Highway red and farm green
-- HRED_FYEL : Highway red and farm yellow
signal current_state, next_state: FSM_States;
begin
-- next state FSM sequential logic 
process(clk,rst_n) 
begin
if(rst_n='0') then
 current_state <= HGRE_FRED;
 delay_count <= "0000";
elsif(rising_edge(clk)) then 
 current_state <= next_state; 
end if; 
end process;
-- FSM combinational logic 
process(current_state,sensor)
begin
case current_state is 
when HGRE_FRED => -- When Green light on Highway and Red light on Farm way
 light_highway <= "001"; -- Green light on Highway
 light_farm <= "100"; -- Red light on Farm way 
 if(sensor = '1') then -- if vehicle is detected on farm way by sensors
  next_state <= HYEL_FRED; 
  -- High way turns to Yellow light 
 else 
  next_state <= HGRE_FRED; 
  -- Otherwise, remains GREEN ON highway and RED on Farm way
 end if;
when HYEL_FRED => -- When Yellow light on Highway and Red light on Farm way
 light_highway <= "010";-- Yellow light on Highway
 light_farm <= "100";
 -- Red light on Farm way 
 if(delay_count="0011") then 
 -- if Yellow light delay counts to 3s, 
 -- turn Highway to RED, 
 -- Farm way to green light 
  next_state <= HRED_FGRE; 
  delay_count <= "0000";
 else 
  next_state <= HYEL_FRED; 
    delay_count <= delay_count+1;
  -- Remains Yellow on highway and Red on Farm way 
  -- if Yellow light not yet in 3s 
 end if;
when HRED_FGRE => 
 light_highway <= "100";-- RED light on Highway 
 light_farm <= "001";-- GREEN light on Farm way
 if(delay_count="1010") then
 -- if RED light on highway is 10s, Farm way turns to Yellow
  next_state <= HRED_FYEL;
  delay_count <= "0000";
 else 
  next_state <= HRED_FGRE; 
  delay_count <= delay_count+1;
  -- Remains if delay counts for RED light on highway not enough 10s 
 end if;
when HRED_FYEL =>
 light_highway <= "100";-- RED light on Highway 
 light_farm <= "010";-- Yellow light on Farm way 
 if(delay_count="0011") then 
 -- if delay for Yellow light is 3s,
 -- turn highway to GREEN light
 -- Farm way to RED Light
 next_state <= HGRE_FRED;
 delay_count <= "0000";
 else 
 next_state <= HRED_FYEL;
 delay_count <= delay_count+1;
 -- if not enough 3s, remain the same state 
 end if;
when others => next_state <= HGRE_FRED; -- Green on highway, red on farm way 
end case;
end process;
check <= delay_count;
end Behavioral;
