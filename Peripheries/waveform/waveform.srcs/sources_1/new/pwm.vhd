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
signal counter : UNSIGNED (9 downto 0) := (others=>'0');
signal threshold : UNSIGNED (9 downto 0) := (others=>'0');

begin

process(clk_pwm)
begin
    if rising_edge(clk_pwm) then
        if counter = 1000 then
            counter <= (others=>'0');
        elsif counter = 0 then
            threshold <= UNSIGNED(pwm_in) * 1000 / 255;
            counter <= counter + 1;
        else
            if counter < threshold then
                pwm_out <= '1';
            else
                pwm_out <= '0';
            end if;
        end if;
    end if;
end process;

            

end Behavioral;
