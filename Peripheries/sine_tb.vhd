----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2018/06/11 18:26:13
-- Design Name: 
-- Module Name: sine_tb - Behavioral
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

entity sine_tb is
--  Port ( );
end sine_tb;

architecture Behavioral of sine_tb is
    component sine_wave is
    Port ( clk_sw_in : in STD_LOGIC;
           tone : in std_logic_vector (3 downto 0);
           clk_div_out : out STD_LOGIC;
           dataout : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

signal clk_tb, clk_div_tb: STD_LOGIC;
signal tone_tb : STD_LOGIC_VECTOR (3 downto 0):= "1011";
signal dataout_tb: STD_LOGIC_VECTOR(7 downto 0);
begin

UUT: sine_wave port map(clk_sw_in=>clk_tb, tone=>tone_tb, clk_div_out=> clk_div_tb, dataout=>dataout_tb);

clock_gen: process
    constant period : time := 10 ns;
    begin
    clk_tb <= '1';
    wait for period/2;
    clk_tb <= '0';
    wait for period/2;
    end process;

end Behavioral;
