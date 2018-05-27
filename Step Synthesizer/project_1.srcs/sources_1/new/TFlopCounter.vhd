----------------------------------------------------------------------------------
-- Design Name: TFlopCounter
-- Description: 3-bit counter using flip-flops
--				used to keep track of the current tone
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TFlopCounter is
    Port ( Enable : in  STD_LOGIC;
              Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
		     Tnum : out STD_LOGIC_VECTOR (2 downto 0));
end TFlopCounter;

architecture Structural of TFlopCounter is
	component tflipflop is
    Port ( 	EN : in  STD_LOGIC;
			RST : in STD_LOGIC;
            T : in  STD_LOGIC;
          	CLK : in  STD_LOGIC;
            Q : out  STD_LOGIC);
	end component;

signal t0 : std_logic;
signal t1 : std_logic;
signal t2 : std_logic;
signal t01 : std_logic;  

begin
	-- use T flip-flop to store a 3 bit number. Each filp-flop represents 1 bit being stored.
	TFlip0 : tflipflop port map( EN => Enable,
										  RST => Rst,
										  T => '1', --first flip-flop toggles each cycle
										  CLK => Clk,
										  Q => t0);
	TFlip1 : tflipflop port map( EN => Enable,
										  RST => Rst,
										  T => t0, --second flip-flop toggles as long as the first flip-flop is high
										  CLK => Clk,
										  Q => t1);		
	t01 <= t0 and t1;	-- only when t0 and t1 equal to 1 at the same time should the t01 becomes 1
	TFlip2 : tflipflop port map( EN => Enable,
										  RST => Rst,
										  T => t01, --third flip-flop toggles when the two lower flip-flops are high
										  CLK => Clk,
										  Q => t2);	
	tnum(0) <= t0;
	tnum(1) <= t1;
	tnum(2) <= t2;
end Structural;
