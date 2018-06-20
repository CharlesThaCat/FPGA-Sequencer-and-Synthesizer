----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2018/06/11 22:19:46
-- Design Name: 
-- Module Name: pwm - Behavioral
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

entity pwm is
    Port ( clk_pwm : in STD_LOGIC;
           pwm_in : in STD_LOGIC_VECTOR (7 downto 0);
           pwm_out : out STD_LOGIC);
end pwm;

architecture Behavioral of pwm is
signal EN : STD_LOGIC;
signal counter, counter_next : UNSIGNED (10 downto 0) := (others=>'0');
signal threshold : UNSIGNED (10 downto 0) := (others=>'0');

begin



process(clk_pwm, pwm_in)
begin
    if rising_edge(clk_pwm) then
        if counter = 0 then -- calculate duty period, pwm_in (0 to 255), duty (0 to 511)
            threshold <= unsigned(pwm_in) & "000";
        end if;

        if counter < threshold then -- assign the output value due to counter index
            pwm_out <= '1';
        else
            pwm_out <= '0';
        end if;
        counter <= counter_next;
    end if;
end process;
counter_next <= counter +1 ; -- counter from 0 to 511, then 0 again, going into the next duty cycle

end Behavioral;
