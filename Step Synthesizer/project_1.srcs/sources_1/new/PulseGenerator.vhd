----------------------------------------------------------------------------------
-- Design Name: PulseGenerator
-- Description: Outputs a one clock cycle pulse when its input goes from low to high
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PulseGenerator is
    Port ( clk : in  STD_LOGIC;
           incr : in  STD_LOGIC;
           q : out  STD_LOGIC);
end PulseGenerator;

architecture Behavioral of PulseGenerator is

begin
Incrementer : process (clk) 
	variable incr_prev : std_logic := '0'; --previous state of input
begin
	if rising_edge(clk) then
		q <= '0'; --by default output is low
		if incr_prev ='0' and incr = '1' then --if input goes from low to high
			q <= '1'; --set output as high
		end if;
		incr_prev := incr;
	end if;
end process;


end Behavioral;
