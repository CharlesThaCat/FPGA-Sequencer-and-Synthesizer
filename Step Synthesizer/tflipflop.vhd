----------------------------------------------------------------------------------
-- Create Date: 10/30/2014 
-- Design Name: tflipflop
-- Description: T flip-flop with reset and enable inputs
-- Authors: Joseph Coplon, Lincoln Tran
--
--This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
--You can view a copy of this license here: http://creativecommons.org/licenses/by-nc-sa/4.0/
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

begin process (clk, EN, T, RST)
	begin
		if (EN = '1') then
			if (rising_edge(clk)) then
			temp <= t xor temp;
			end if;
		end if;
		if (RST = '1') then
			temp <= '0';
		end if;
end process; 
	q <= temp;
end Behavioral;
