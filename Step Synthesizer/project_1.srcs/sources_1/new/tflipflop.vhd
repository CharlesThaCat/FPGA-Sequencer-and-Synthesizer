----------------------------------------------------------------------------------
-- Design Name: tflipflop
-- Description: T flip-flop with reset and enable inputs
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tflipflop is
    Port ( EN : in  STD_LOGIC;
			  RST : in STD_LOGIC;
           T : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end tflipflop;

architecture Behavioral of tflipflop is
	signal temp: std_logic := '0';

-- the truth table of T flip-flop can be seen in Table 5.6.3 in P238 of <Digital Circuit>
begin process (clk, EN, T, RST)
	begin
		if (EN = '1') then
			if (rising_edge(clk)) then
			temp <= T xor temp;	-- next state is the xor of T and current state 
			end if;
		end if;
		if (RST = '1') then
			temp <= '0';
		end if;
end process; 
	Q <= temp;
end Behavioral;
