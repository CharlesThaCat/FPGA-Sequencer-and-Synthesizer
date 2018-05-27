----------------------------------------------------------------------------------
-- Design Name: StepSynthesizerMain
-- Description: Main file for step synthesizer project
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity StepSynthesizerMain is
    Port ( 	Clk : in  STD_LOGIC; --clock
			Switch : in  STD_LOGIC_VECTOR (7 downto 0); --represents each switch on the nexys board
           	FreqIncr : in  STD_LOGIC; --button 1, switches between different frequencies/tones
           	Save : in  STD_LOGIC; --button 2, saves current tone to all beats with their switches flipped on
           	PlayPause : in  STD_LOGIC; --button 3, toggles between play and pause
           	Reset : in  STD_LOGIC; --button 4, resets all notes
           	LEDSegment : out  STD_LOGIC_VECTOR (7 downto 0); --led segments on seven segment display (cathode)
           	Display : out  STD_LOGIC_VECTOR (3 downto 0); --determines which of the four seven segment displays to turn on (anode)
			LEDNote : out STD_LOGIC_VECTOR (7 downto 0); --leds above the switches, representing which beat is currently being played
			Speaker : out STD_LOGIC); --output to the speaker
end StepSynthesizerMain;

architecture Structural of StepSynthesizerMain is
	component TFlopCounter is --counter using flip flops, has three bits
    Port ( Enable : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
		     Tnum : out STD_LOGIC_VECTOR (2 downto 0));
	end component;
	component ButtonToggle is --toggles output between high and low each time input goes from low to high
    Port ( clk : in STD_LOGIC;
			  rst : in STD_LOGIC;
			  Btn : in  STD_LOGIC;
           Q : out  STD_LOGIC);
	end component;	
	component SquareWaveGenerator is --generates square wave to be played by speaker
    Port ( clk : in  STD_LOGIC;
			  note : in STD_LOGIC_VECTOR(2 downto 0);
			  en : in STD_LOGIC;
           speaker : out STD_LOGIC);
	end component;	
	component sseg_dec is --displays binary input in decimal form on seven segment display
    Port ( ALU_VAL : in std_logic_vector(7 downto 0); 
			  SIGN : in std_logic;
			  VALID : in std_logic;
			  CLK : in std_logic;
			  DISP_EN : out std_logic_vector(3 downto 0);
			  SEGMENTS : out std_logic_vector(7 downto 0));
	end component;	
	component DFlop3bit is --d flip flop with a 3-bit input
	 Port ( clk : in std_logic;
			  reset : in std_logic;
			  en : in std_logic;
			  d : in std_logic_vector(2 downto 0);
			  q : out std_logic_vector(2 downto 0));
	end component;
	component debounce is --debounces button presses
	 Port ( clk : in std_logic;
			  button : in std_logic;
			  result : out std_logic);
	end component;
	component PulseGenerator is --generates pulse of one clock cycle
	 Port ( clk : in std_logic;
			  incr : in std_logic;
			  q : out std_logic);
	end component;
	component clk_div2 is --divides clock frequency
	 Port (clk : in std_logic;
			 sclk : out std_logic);
	end component;

	signal DEnab : std_logic_vector(7 downto 0); --enable signal to d flip-flops
	subtype note is std_logic_vector(2 downto 0); --three bits which represent a specific tone
	type note_array is array(0 to 7) of note; --array of notes used for output of d flip-flops
	signal DInp : note; --input of d-flip flops resulting from current note selected by user
	signal QOut : note_array; --output of d flip-flops
	signal ALU : std_logic_vector(7 downto 0); --input to sseg_dec
	signal Counter2En : std_logic; --enable for second counter
	signal CurrNote : std_logic_vector(2 downto 0); --represents the current beat
	signal CurrTone : note; --which tone is currently being played
	signal Count1Incr : std_logic; --enable counter1
	signal FreqIncrDebounced : std_logic; --debounced signal from button 1
	signal PlayPauseDebounced : std_logic; --debounced signal from button 3
	signal SClk : std_logic; --divided clock signal
	
begin

--assigns enable signal for flip flops based on switch positions and save button
inEnab : process (Switch, Save)
begin
	for I in 0 to 7 loop
		DEnab(I) <= (Switch(I) and Save);
	end loop;
end process;


--------------------------- Incrementing Frequency ----------------------------------
--debounces button 1
Debounce1 : debounce port map (
	clk => Clk,
	button => FreqIncr,
	result => FreqIncrDebounced);
	
--converts input from button 1 to single clock cycle pulse
CIncr : PulseGenerator port map (
	clk => Clk,
	incr => FreqIncrDebounced,
	q => Count1Incr);

--keeps track of the current frequency to be inputted by the user
Counter1 : TFlopCounter port map (
	Enable => Count1Incr,
	Clk => Clk,
	Rst => Reset,
	Tnum => DInp);	

--converts the output of counter 1 to an 8-bit number so it can be sent to sseg_dec
ALUSet : process (ALU, DInp) 
begin
	ALU <= "00000000";
	ALU(0) <= DInp(0);
	ALU(1) <= DInp(1);
	ALU(2) <= DInp(2);
end process;

--converts the binary number representing the current frequency to a decimal number to
--be displayed on the seven segment display
SSegDisplay : sseg_dec port map (
	ALU_VAL => ALU,
	SIGN => '0',
	VALID => '1',
	CLK => Clk,
	DISP_EN => Display,
	SEGMENTS => LEDSegment);	

--each flip flop represents one of the eight beats stored by the synth
DFlop0 : DFlop3bit port map (
	clk => Clk,
	reset => Reset,
	en => DEnab(0),
	d => DInp,
	q => QOut(0));
DFlop1 : DFlop3bit port map (
	clk => Clk,
	reset => Reset,
	en => DEnab(1),
	d => DInp,
	q => QOut(1));
DFlop2 : DFlop3bit port map (
	clk => Clk,
	reset => Reset,
	en => DEnab(2),
	d => DInp,
	q => QOut(2));
DFlop3 : DFlop3bit port map (
	clk => Clk,
	reset => Reset,
	en => DEnab(3),
	d => DInp,
	q => QOut(3));
DFlop4 : DFlop3bit port map (
	clk => Clk,
	reset => Reset,
	en => DEnab(4),
	d => DInp,
	q => QOut(4));
DFlop5 : DFlop3bit port map (
	clk => Clk,
	reset => Reset,
	en => DEnab(5),
	d => DInp,
	q => QOut(5));
DFlop6 : DFlop3bit port map (
	clk => Clk,
	reset => Reset,
	en => DEnab(6),
	d => DInp,
	q => QOut(6));
DFlop7 : DFlop3bit port map (
	clk => Clk,
	reset => Reset,
	en => DEnab(7),
	d => DInp,
	q => QOut(7));


--------------------------- Toggling PlayPause ----------------------------------
--debounces the input from button 3
Debounce2 : debounce port map (
	clk => Clk,
	button => PlayPause,
	Result => PlayPauseDebounced);

--toggles output between high and low (play and pause) when the input goes from low to high
PlayToggle : ButtonToggle port map (
	clk => Clk,
	rst => Reset,
	Btn => PlayPauseDebounced,
	Q => Counter2En);

--divides clock frequency to get correct BPM
ClockDivider : clk_div2 port map (
	clk => Clk,
	sclk => SClk);

--keeps track of the current beat
Counter2 : TFlopCounter port map (
	Enable => Counter2En,
	Clk => SClk,
	Rst => Reset,
	Tnum => CurrNote);

--multiplexer which selects which note to play based on the current beat
--CurrNote represents which switch to be played
--CurrTone represents which tone to be played on a certain switch
select_note : process (QOut,CurrNote)
begin
	case CurrNote is
		when "000" => CurrTone <= QOut(0);
		when "001" => CurrTone <= QOut(1);
		when "010" => CurrTone <= QOut(2);
		when "011" => CurrTone <= QOut(3);
		when "100" => CurrTone <= QOut(4);
		when "101" => CurrTone <= QOut(5);
		when "110" => CurrTone <= QOut(6);
		when "111" => CurrTone <= QOut(7);
		when others =>
	end case;
end process select_note;

--selects the correct LED to turn on based on which beat is being played
led_note : process (CurrNote, CurrTone)
begin
	if (CurrTone = "000") then
		LEDNote <= "00000000";
	else
		case CurrNote is
			when "000" => LEDNote <= "10000000";
			when "001" => LEDNote <= "01000000";
			when "010" => LEDNote <= "00100000";
			when "011" => LEDNote <= "00010000";
			when "100" => LEDNote <= "00001000";
			when "101" => LEDNote <= "00000100";
			when "110" => LEDNote <= "00000010";
			when "111" => LEDNote <= "00000001";
			when others =>
		end case;
	end if;
end process led_note;

--generates a square wave
SpeakerPlay : SquareWaveGenerator port map (
	clk => Clk,
	note => CurrTone,
	en => Counter2En,
	speaker => Speaker);

end Structural;
