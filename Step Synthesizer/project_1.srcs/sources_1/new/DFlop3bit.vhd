----------------------------------------------------------------------------------
-- Create Date: 11/14/2014 
-- Design Name: DFlop3Bit
-- Description: D flip-flop which stores 3-bits
-- Authors: Joseph Coplon, Lincoln Tran
--
--This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
--You can view a copy of this license here: http://creativecommons.org/licenses/by-nc-sa/4.0/
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity DFlop3bit is
   port
   (
     clk : in std_logic;
	  reset : in std_logic;
     en  : in std_logic;
     d : in std_logic_vector(2 downto 0);
     q : out std_logic_vector(2 downto 0)
   );
end entity DFlop3bit;

architecture Behavioral of DFlop3bit is
begin
   process (clk, reset, en) is
   begin
	 if (reset = '1') then
		 q <= "000"; --reset output to 000 on reset
    elsif (rising_edge(clk)) then
		if (en = '1') then
        q <= d; --update output when enable is true
		end if;
    end if;
   end process;
end architecture Behavioral;