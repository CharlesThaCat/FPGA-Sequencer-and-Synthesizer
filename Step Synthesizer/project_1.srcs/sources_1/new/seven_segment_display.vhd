
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity seven_segment_display is
    Port ( CLOCK_100MHz : in STD_LOGIC;
           RESET : in STD_LOGIC;
           Four_bit: in STD_LOGIC_VECTOR (15 downto 0);
           Anode_Activate :out  STD_LOGIC_VECTOR (7 downto 0);
           LED : out STD_LOGIC_VECTOR (6 downto 0));
end seven_segment_display;

architecture Behavioral of seven_segment_display is

signal LED_BIN: STD_LOGIC_VECTOR (3 downto 0);  -- x in the truth table
signal refresh_counter: STD_LOGIC_VECTOR (19 downto 0);    -- 10.5 ms refresh period 1.3125 ms digit period
signal LED_activating_counter: STD_LOGIC_VECTOR (2 downto 0);   -- to decide set LOW to which anode
begin

-- Hex-to-7-Segment Decoder
process (LED_BIN)
begin
    case LED_BIN is
    when "0000" => LED <= "0000001";       when "1000" => LED <= "0000000";
    when "0001" => LED <= "1001111";       when "1001" => LED <= "0000100";
    when "0010" => LED <= "0010010";       when "1010" => LED <= "0001000"; 
    when "0011" => LED <= "0000110";       when "1011" => LED <= "1100000"; 
    when "0100" => LED <= "1001100";       when "1100" => LED <= "0110001"; 
    when "0101" => LED <= "0100100";       when "1101" => LED <= "1000010"; 
    when "0110" => LED <= "0100000";       when "1110" => LED <= "0110000"; 
    when "0111" => LED <= "0001111";       when "1111" => LED <= "0111000";
    when others => LED <= "1111111";
    end case;
end process;

-- display controller, refresh period of 10.5 ms and 1.3125 ms digit period
process (CLOCK_100MHz,RESET)
begin
    if (RESET = '1') then
        refresh_counter <= (others => '0');
    elsif (CLOCK_100MHz'event and CLOCK_100MHz = '1') then
        if refresh_counter > x"FFFFF" then
            refresh_counter <= (others => '0');
        else
            refresh_counter <= refresh_counter + 1;
        end if;  
    end if;
end process;
LED_activating_counter <= refresh_counter(19 downto 17);   

-- Anode driver unit (3-to-8 decoder) and 8x1 MUX
process (LED_activating_counter,Four_bit)
begin
    case LED_activating_counter is
        when "000" => Anode_Activate <= "01111111"; -- activate LED 1 and deactivate the others
                       LED_BIN <= Four_bit(15 downto 12);
        when "001" => Anode_Activate <= "10111111"; -- activate LED 2 and deactivate the others
                       LED_BIN <= Four_bit(11 downto 8);
        when "010" => Anode_Activate <= "11011111"; -- activate LED 3 and deactivate the others
                       LED_BIN <= Four_bit(7 downto 4);
        when "011" => Anode_Activate <= "11101111"; -- activate LED 4 and deactivate the others
                       LED_BIN <= Four_bit(3 downto 0); 
        when "100" => Anode_Activate <= "11110111"; -- activate LED 5 and deactivate the others
                       LED_BIN <= STD_LOGIC_VECTOR(unsigned(Four_bit(15 downto 12)) + unsigned(Four_bit(11 downto 8)));
        when "101" => Anode_Activate <= "11111011"; -- activate LED 6 and deactivate the others
                       LED_BIN <= STD_LOGIC_VECTOR(unsigned(Four_bit(15 downto 12)) - unsigned(Four_bit(11 downto 8)));
        when "110" => Anode_Activate <= "11111101"; -- activate LED 7 and deactivate the others
                       LED_BIN <= STD_LOGIC_VECTOR(unsigned(Four_bit(7 downto 4)) + unsigned(Four_bit(3 downto 0)));
        when "111" => Anode_Activate <= "11111110"; -- activate LED 8 and deactivate the others
                       LED_BIN <= STD_LOGIC_VECTOR(unsigned(Four_bit(7 downto 4)) - unsigned(Four_bit(3 downto 0)));
        when others => Anode_Activate <= "11111111";
    end case;
end process;

end Behavioral;
