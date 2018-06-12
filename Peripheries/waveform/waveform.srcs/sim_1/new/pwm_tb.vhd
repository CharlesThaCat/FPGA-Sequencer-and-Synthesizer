----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2018/06/12 10:46:05
-- Design Name: 
-- Module Name: pwm_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pwm_tb is
--  Port ( );
end pwm_tb;

architecture Behavioral of pwm_tb is
    component pwm is 
        Port ( clk_pwm : in STD_LOGIC;
        pwm_in : in STD_LOGIC_VECTOR (7 downto 0);
        pwm_th : out STD_LOGIC_VECTOR (15 downto 0);
        pwm_out : out STD_LOGIC);
    end component;
signal clk_pwm_tb, pwm_out_tb :STD_LOGIC;
signal pwm_in_tb : STD_LOGIC_VECTOR (7 downto 0) := "01111111";
signal pwm_th_tb: STD_LOGIC_VECTOR (15 downto 0 );
begin

UUT: pwm port map(clk_pwm=>clk_pwm_tb, pwm_in=>pwm_in_tb, pwm_th=>pwm_th_tb, pwm_out=>pwm_out_tb); 

    clock_gen: process
    constant period : time := 100 ns;
    begin
    clk_pwm_tb <= '1';
    wait for period/2;
    clk_pwm_tb <= '0';
    wait for period/2;
    end process;


end Behavioral;
