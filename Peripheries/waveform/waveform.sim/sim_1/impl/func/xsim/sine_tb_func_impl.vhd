-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jun 11 21:34:07 2018
-- Host        : Arthur running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Arthur/Documents/Workspace/Lab_DSD/Project/FPGA-Sequencer-and-Synthesizer/Peripheries/waveform/waveform.sim/sim_1/impl/func/xsim/sine_tb_func_impl.vhd
-- Design      : sine_wave
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sine_wave is
  port (
    clk : in STD_LOGIC;
    dataout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of sine_wave : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of sine_wave : entity is "91c22c93";
  attribute POWER_OPT_BRAM_CDC : integer;
  attribute POWER_OPT_BRAM_CDC of sine_wave : entity is 0;
  attribute POWER_OPT_BRAM_SR_ADDR : integer;
  attribute POWER_OPT_BRAM_SR_ADDR of sine_wave : entity is 0;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE : integer;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE of sine_wave : entity is 0;
end sine_wave;

architecture STRUCTURE of sine_wave is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal dataout_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \i[0]_i_2_n_0\ : STD_LOGIC;
  signal \i[9]_i_1_n_0\ : STD_LOGIC;
  signal \i[9]_i_3_n_0\ : STD_LOGIC;
  signal \i[9]_i_4_n_0\ : STD_LOGIC;
  signal \i_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_reg_n_0_[3]\ : STD_LOGIC;
  signal \i_reg_n_0_[4]\ : STD_LOGIC;
  signal \i_reg_n_0_[5]\ : STD_LOGIC;
  signal \i_reg_n_0_[6]\ : STD_LOGIC;
  signal \i_reg_n_0_[7]\ : STD_LOGIC;
  signal \i_reg_n_0_[8]\ : STD_LOGIC;
  signal \i_reg_n_0_[9]\ : STD_LOGIC;
  signal \i_reg_rep_n_0_[0]\ : STD_LOGIC;
  signal \i_reg_rep_n_0_[1]\ : STD_LOGIC;
  signal \i_reg_rep_n_0_[2]\ : STD_LOGIC;
  signal \i_reg_rep_n_0_[3]\ : STD_LOGIC;
  signal \i_reg_rep_n_0_[4]\ : STD_LOGIC;
  signal \i_reg_rep_n_0_[5]\ : STD_LOGIC;
  signal \i_reg_rep_n_0_[6]\ : STD_LOGIC;
  signal \i_reg_rep_n_0_[7]\ : STD_LOGIC;
  signal \i_reg_rep_n_0_[8]\ : STD_LOGIC;
  signal \i_reg_rep_n_0_[9]\ : STD_LOGIC;
  signal NLW_dataout_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_dataout_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_dataout_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_dataout_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of dataout_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dataout_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of dataout_reg : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of dataout_reg : label is "dataout";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of dataout_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of dataout_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of dataout_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of dataout_reg : label is 7;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i[9]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i[9]_i_4\ : label is "soft_lutpair2";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \i_reg_rep[0]\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[1]\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[2]\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[3]\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[4]\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[5]\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[6]\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[7]\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[8]\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[9]\ : label is "no";
begin
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\dataout_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataout_OBUF(0),
      O => dataout(0)
    );
\dataout_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataout_OBUF(1),
      O => dataout(1)
    );
\dataout_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataout_OBUF(2),
      O => dataout(2)
    );
\dataout_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataout_OBUF(3),
      O => dataout(3)
    );
\dataout_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataout_OBUF(4),
      O => dataout(4)
    );
\dataout_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataout_OBUF(5),
      O => dataout(5)
    );
\dataout_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataout_OBUF(6),
      O => dataout(6)
    );
\dataout_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataout_OBUF(7),
      O => dataout(7)
    );
dataout_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"009300920091008F008E008D008C008A00890088008600850084008300810080",
      INIT_01 => X"00A700A600A500A300A200A100A0009E009D009C009B00990098009700960094",
      INIT_02 => X"00BA00B900B800B700B500B400B300B200B100AF00AE00AD00AC00AB00A900A8",
      INIT_03 => X"00CB00CA00C900C800C700C600C500C400C300C200C100C000BE00BD00BC00BB",
      INIT_04 => X"00DB00DA00D900D800D700D600D500D400D300D200D100D000CF00CE00CD00CC",
      INIT_05 => X"00E800E700E700E600E500E400E300E300E200E100E000DF00DE00DE00DD00DC",
      INIT_06 => X"00F300F200F100F100F000F000EF00EE00EE00ED00EC00EC00EB00EA00EA00E9",
      INIT_07 => X"00FA00FA00F900F900F900F800F800F700F700F600F600F500F500F400F400F3",
      INIT_08 => X"00FF00FF00FE00FE00FE00FE00FD00FD00FD00FD00FC00FC00FC00FB00FB00FB",
      INIT_09 => X"00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF",
      INIT_0A => X"00FE00FE00FE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF",
      INIT_0B => X"00F900F900FA00FA00FA00FB00FB00FB00FC00FC00FC00FD00FD00FD00FD00FE",
      INIT_0C => X"00F000F100F200F200F300F300F400F400F500F500F600F600F700F700F800F8",
      INIT_0D => X"00E500E600E700E700E800E900EA00EA00EB00EC00ED00ED00EE00EE00EF00F0",
      INIT_0E => X"00D700D800D900DA00DB00DC00DD00DE00DF00DF00E000E100E200E300E400E4",
      INIT_0F => X"00C700C800C900CB00CC00CD00CE00CF00D000D100D200D300D400D500D600D6",
      INIT_10 => X"00B600B700B800B900BA00BB00BC00BE00BF00C000C100C200C300C400C500C6",
      INIT_11 => X"00A200A400A500A600A700A800AA00AB00AC00AD00AE00B000B100B200B300B4",
      INIT_12 => X"008E00900091009200930095009600970098009A009B009C009D009F00A000A1",
      INIT_13 => X"007A007B007C007E007F00800081008300840085008700880089008A008C008D",
      INIT_14 => X"0066006700680069006B006C006D006E00700071007200730075007600770079",
      INIT_15 => X"0052005300540056005700580059005A005C005D005E005F0061006200630064",
      INIT_16 => X"003F00410042004300440045004600470049004A004B004C004D004E00500051",
      INIT_17 => X"002F0030003100320033003400350036003700380039003A003B003C003D003E",
      INIT_18 => X"00200021002200230023002400250026002700280029002A002B002C002D002E",
      INIT_19 => X"00140014001500160017001700180019001A001A001B001C001D001D001E001F",
      INIT_1A => X"000A000B000B000C000C000D000D000E000F000F001000100011001200120013",
      INIT_1B => X"000400040004000500050005000600060007000700070008000800090009000A",
      INIT_1C => X"0000000100010001000100010001000100020002000200020003000300030003",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0004000300030003000200020002000200020001000100010001000100010000",
      INIT_1F => X"000A000900090009000800080007000700060006000600050005000500040004",
      INIT_20 => X"0013001300120011001100100010000F000E000E000D000D000C000C000B000A",
      INIT_21 => X"0020001F001E001D001C001B001B001A00190018001800170016001500150014",
      INIT_22 => X"002E002D002C002B002A00290028002800270026002500240023002200210020",
      INIT_23 => X"003F003E003D003C003B003A003800370036003500340033003200310030002F",
      INIT_24 => X"00510050004F004E004D004B004A004900480047004600450043004200410040",
      INIT_25 => X"00650064006200610060005F005D005C005B005A005900570056005500540053",
      INIT_26 => X"00790078007700750074007300720070006F006E006C006B006A006900670066",
      INIT_27 => X"000000000000000000000000000000000000000000000080007E007D007C007A",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13) => \i_reg_rep_n_0_[9]\,
      ADDRARDADDR(12) => \i_reg_rep_n_0_[8]\,
      ADDRARDADDR(11) => \i_reg_rep_n_0_[7]\,
      ADDRARDADDR(10) => \i_reg_rep_n_0_[6]\,
      ADDRARDADDR(9) => \i_reg_rep_n_0_[5]\,
      ADDRARDADDR(8) => \i_reg_rep_n_0_[4]\,
      ADDRARDADDR(7) => \i_reg_rep_n_0_[3]\,
      ADDRARDADDR(6) => \i_reg_rep_n_0_[2]\,
      ADDRARDADDR(5) => \i_reg_rep_n_0_[1]\,
      ADDRARDADDR(4) => \i_reg_rep_n_0_[0]\,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"0000000011111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 8) => NLW_dataout_reg_DOADO_UNCONNECTED(15 downto 8),
      DOADO(7 downto 0) => dataout_OBUF(7 downto 0),
      DOBDO(15 downto 0) => NLW_dataout_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_dataout_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_dataout_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF7FFF"
    )
        port map (
      I0 => \i_reg_n_0_[5]\,
      I1 => \i_reg_n_0_[2]\,
      I2 => \i_reg_n_0_[4]\,
      I3 => \i_reg_n_0_[6]\,
      I4 => \i[0]_i_2_n_0\,
      I5 => \i_reg_n_0_[0]\,
      O => i(0)
    );
\i[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \i_reg_n_0_[1]\,
      I1 => \i_reg_n_0_[8]\,
      I2 => \i_reg_n_0_[9]\,
      I3 => \i_reg_n_0_[7]\,
      I4 => \i_reg_n_0_[3]\,
      O => \i[0]_i_2_n_0\
    );
\i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i_reg_n_0_[0]\,
      I1 => \i_reg_n_0_[1]\,
      O => data0(1)
    );
\i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \i_reg_n_0_[1]\,
      I1 => \i_reg_n_0_[0]\,
      I2 => \i_reg_n_0_[2]\,
      O => data0(2)
    );
\i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \i_reg_n_0_[2]\,
      I1 => \i_reg_n_0_[0]\,
      I2 => \i_reg_n_0_[1]\,
      I3 => \i_reg_n_0_[3]\,
      O => data0(3)
    );
\i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \i_reg_n_0_[2]\,
      I1 => \i_reg_n_0_[1]\,
      I2 => \i_reg_n_0_[0]\,
      I3 => \i_reg_n_0_[3]\,
      I4 => \i_reg_n_0_[4]\,
      O => data0(4)
    );
\i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \i_reg_n_0_[2]\,
      I1 => \i_reg_n_0_[4]\,
      I2 => \i_reg_n_0_[1]\,
      I3 => \i_reg_n_0_[0]\,
      I4 => \i_reg_n_0_[3]\,
      I5 => \i_reg_n_0_[5]\,
      O => data0(5)
    );
\i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \i_reg_n_0_[4]\,
      I1 => \i_reg_n_0_[2]\,
      I2 => \i_reg_n_0_[5]\,
      I3 => \i[9]_i_4_n_0\,
      I4 => \i_reg_n_0_[6]\,
      O => data0(6)
    );
\i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \i_reg_n_0_[5]\,
      I1 => \i_reg_n_0_[2]\,
      I2 => \i_reg_n_0_[4]\,
      I3 => \i_reg_n_0_[6]\,
      I4 => \i[9]_i_4_n_0\,
      I5 => \i_reg_n_0_[7]\,
      O => data0(7)
    );
\i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \i[9]_i_3_n_0\,
      I1 => \i_reg_n_0_[3]\,
      I2 => \i_reg_n_0_[0]\,
      I3 => \i_reg_n_0_[1]\,
      I4 => \i_reg_n_0_[7]\,
      I5 => \i_reg_n_0_[8]\,
      O => data0(8)
    );
\i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \i_reg_n_0_[5]\,
      I1 => \i_reg_n_0_[2]\,
      I2 => \i_reg_n_0_[4]\,
      I3 => \i_reg_n_0_[6]\,
      I4 => \i[0]_i_2_n_0\,
      I5 => \i_reg_n_0_[0]\,
      O => \i[9]_i_1_n_0\
    );
\i[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \i[9]_i_3_n_0\,
      I1 => \i_reg_n_0_[8]\,
      I2 => \i_reg_n_0_[7]\,
      I3 => \i[9]_i_4_n_0\,
      I4 => \i_reg_n_0_[9]\,
      O => data0(9)
    );
\i[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \i_reg_n_0_[5]\,
      I1 => \i_reg_n_0_[2]\,
      I2 => \i_reg_n_0_[4]\,
      I3 => \i_reg_n_0_[6]\,
      O => \i[9]_i_3_n_0\
    );
\i[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \i_reg_n_0_[1]\,
      I1 => \i_reg_n_0_[0]\,
      I2 => \i_reg_n_0_[3]\,
      O => \i[9]_i_4_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => i(0),
      Q => \i_reg_n_0_[0]\,
      R => '0'
    );
\i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(1),
      Q => \i_reg_n_0_[1]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(2),
      Q => \i_reg_n_0_[2]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(3),
      Q => \i_reg_n_0_[3]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(4),
      Q => \i_reg_n_0_[4]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(5),
      Q => \i_reg_n_0_[5]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(6),
      Q => \i_reg_n_0_[6]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(7),
      Q => \i_reg_n_0_[7]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(8),
      Q => \i_reg_n_0_[8]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(9),
      Q => \i_reg_n_0_[9]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg_rep[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => i(0),
      Q => \i_reg_rep_n_0_[0]\,
      R => '0'
    );
\i_reg_rep[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(1),
      Q => \i_reg_rep_n_0_[1]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg_rep[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(2),
      Q => \i_reg_rep_n_0_[2]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg_rep[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(3),
      Q => \i_reg_rep_n_0_[3]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg_rep[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(4),
      Q => \i_reg_rep_n_0_[4]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg_rep[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(5),
      Q => \i_reg_rep_n_0_[5]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg_rep[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(6),
      Q => \i_reg_rep_n_0_[6]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg_rep[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(7),
      Q => \i_reg_rep_n_0_[7]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg_rep[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(8),
      Q => \i_reg_rep_n_0_[8]\,
      R => \i[9]_i_1_n_0\
    );
\i_reg_rep[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(9),
      Q => \i_reg_rep_n_0_[9]\,
      R => \i[9]_i_1_n_0\
    );
end STRUCTURE;
