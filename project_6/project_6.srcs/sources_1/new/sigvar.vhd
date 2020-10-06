----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2019 10:25:21 AM
-- Design Name: 
-- Module Name: sigvar - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sigvar is
port (
    i_clk   : in std_logic;
    o_var_done : out std_logic;
    o_sig_done : out std_logic;
    o_var_check : out std_logic;
    o_sig_check : out natural range 0 to 6
    );
end sigvar;


architecture rtl of sigvar is
 
  signal r_Var_Done : std_logic            := '0';
  signal r_Count    : natural range 0 to 6 := 0;
  signal r_Sig_Done : std_logic            := '0';
   
begin
 
  VAR_VS_SIG : process (i_clk)
    variable v_Count : natural range 0 to 5 := 0;
  begin
    if rising_edge(i_clk) then
      v_Count := v_Count + 1;           -- Variable
      r_Count <= r_Count + 1;           -- Signal
 
      -- Variable Checking
      if v_Count = 5 then
        r_Var_Done <= '1';
        v_Count := 0;
      else
        r_Var_Done <= '0';
      end if;
 
      -- Signal Checking
      if r_Count = 5 then
        r_Sig_Done <= '1';
        r_Count    <= 0;
      else
        r_Sig_Done <= '0';
      end if;
 
    end if;
  end process VAR_VS_SIG;
 
  o_var_done <= r_Var_Done;
  o_sig_done <= r_Sig_Done;
  o_sig_check <= r_count;
  
   
end rtl;

