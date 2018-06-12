----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2018/06/11 22:47:28
-- Design Name: 
-- Module Name: sine_pwm_tb - Behavioral
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

entity sine_pwm_tb is
--  Port ( );
end sine_pwm_tb;

architecture Behavioral of sine_pwm_tb is
    component pwm_sine is
        Port ( clk_total : in STD_LOGIC;
               analog_out_total : out STD_LOGIC_vector (7 downto 0);
               pwm_out_total : out STD_LOGIC);
    end component;

signal clk_tb,pwm_out_tb: STD_LOGIC;
signal analog_out_tb: STD_LOGIC_VECTOR(7 downto 0);
begin

UUT: pwm_sine port map(clk_total=>clk_tb,analog_out_total=>analog_out_tb, pwm_out_total=>pwm_out_tb);

clock_gen: process
    constant period : time := 100 ns;
    begin
    clk_tb <= '1';
    wait for period/2;
    clk_tb <= '0';
    wait for period/2;
    end process;

end Behavioral;
