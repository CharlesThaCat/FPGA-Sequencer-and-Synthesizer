----------------------------------------------------------------------------------
-- Design Name: SquareWaveGenerator
-- Description: Generates square wave based on input tone
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SquareWaveGenerator is
    Port ( clk : in  STD_LOGIC;
			  note : in STD_LOGIC_VECTOR(3 downto 0);	-- 16 frequencies
			  en : in STD_LOGIC;	-- enable signal
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
			when "0000" => max_count := 0; --when input is 000, no square wave should be outputted
			when "0001" => max_count := 227272;	-- a
			when "0010" => max_count := 191114;	-- c1
			when "0011" => max_count := 170262;	-- d1
			when "0100" => max_Count := 150372;	-- e1
			when "0101" => max_count := 127552;	-- g1
			when "0110" => max_count := 113636;	-- a1
			when "0111" => max_count := 95556;	-- c2
			when "1000" => max_count := 85131;	-- d2
			when "1001" => max_count := 75843;	-- e2
			when "1010" => max_count := 63776;	-- g2
			when "1011" => max_count := 56818;	-- a2
			when "1100" => max_count := 47778;	-- c3
			when "1101" => max_count := 42566;	-- d3
			when "1110" => max_count := 37922;	-- e3
			when "1111" => max_count := 31888;	-- g3
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
			speaker <= tmp_clk;	-- use divided clock signal as output
		else
			speaker <= '0';
		end if;
   end process my_div; 

end Behavioral;
