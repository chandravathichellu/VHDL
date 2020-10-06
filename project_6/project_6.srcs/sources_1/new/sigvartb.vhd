----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2019 10:27:01 AM
-- Design Name: 
-- Module Name: sigvartb - Behavioral
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

entity sigvartb is
--  Port ( );
end sigvartb;

architecture behave of sigvartb is
 
  constant c_CLK_PERIOD : time := 10 ns;
 
  signal r_Clock    : std_logic := '0';
  signal w_Var_Done : std_logic;
  signal w_Sig_Done : std_logic;
  signal  o_sig_check : natural range 0 to 6;
  
  component sigvar is
    port (
      i_clk      : in  std_logic;
      o_var_done : out std_logic;
      o_sig_done : out std_logic;
      o_sig_check : out natural range 0 to 6
      );
  end component sigvar;
   
begin
 
  r_Clock <= not r_Clock after c_CLK_PERIOD/2;
   
  variable_vs_signal_inst : sigvar
    port map (
      i_clk      => r_Clock,
      o_var_done => w_Var_Done,
      o_sig_done => w_Sig_Done,
      o_sig_check => o_sig_check
      );
   
end behave;
