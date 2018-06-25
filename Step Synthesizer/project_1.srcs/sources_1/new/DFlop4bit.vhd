----------------------------------------------------------------------------------
-- Design Name: DFlop4Bit
-- Description: D flip-flop which stores 4-bits
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity DFlop4bit is
   port
   (
     clk : in std_logic;
	  reset : in std_logic;
     en  : in std_logic;
     d : in std_logic_vector(3 downto 0);
     q : out std_logic_vector(3 downto 0)
   );
end entity DFlop4bit;

architecture Behavioral of DFlop4bit is
begin
   process (clk, reset, en) is
   begin
	 if (reset = '1') then
		 q <= "0000"; --reset output to 0000 on reset
    elsif (rising_edge(clk)) then
		if (en = '1') then
        q <= d; --update output when enable is true
		end if;
    end if;
   end process;
end architecture Behavioral;