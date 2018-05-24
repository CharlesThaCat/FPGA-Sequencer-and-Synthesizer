----------------------------------------------------------------------------------
-- Create Date: 11/14/2014 
-- Design Name: SquareWaveGenerator
-- Description: Generates square wave based on input tone
-- Authors: Joseph Coplon, Lincoln Tran
--
--This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
--You can view a copy of this license here: http://creativecommons.org/licenses/by-nc-sa/4.0/
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SquareWaveGenerator is
    Port ( clk : in  STD_LOGIC;
			  note : in STD_LOGIC_VECTOR(2 downto 0);
			  en : in STD_LOGIC;
           speaker : out  STD_LOGIC);
end SquareWaveGenerator;

architecture Behavioral of SquareWaveGenerator is
   signal tmp_clk : std_logic := '0'; 
begin

   my_div: process (clk,tmp_clk,note,en)              
      variable div_cnt : integer := 0;
		variable max_count : integer := 0;
   begin
		--select correct frequency based on input note
		case note is
			when "000" => max_count := 0; --when input is 000, no square wave should be outputted
			when "001" => max_count := 113636;
			when "010" => max_count := 95557;
			when "011" => max_count := 85131;
			when "100" => max_Count := 75186;
			when "101" => max_count := 63776;
			when "110" => max_count := 56818;
			when "111" => max_count := 47778;
			when others =>
		end case;	
      if (rising_edge(clk)) then   
         if (div_cnt >= max_count) then 
            tmp_clk <= not tmp_clk; 
            div_cnt := 0; 
         else
            div_cnt := div_cnt + 1; 
         end if; 
      end if; 
      if (en = '1') then 
			speaker <= tmp_clk; 
		else
			speaker <= '0';
		end if;
   end process my_div; 

end Behavioral;
