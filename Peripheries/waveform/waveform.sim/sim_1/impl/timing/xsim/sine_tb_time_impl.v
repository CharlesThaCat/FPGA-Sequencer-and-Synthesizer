// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Jun 11 22:29:45 2018
// Host        : Arthur running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Arthur/Documents/Workspace/Lab_DSD/Project/FPGA-Sequencer-and-Synthesizer/Peripheries/waveform/waveform.sim/sim_1/impl/timing/xsim/sine_tb_time_impl.v
// Design      : sine_wave
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "97bf9c6f" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module sine_wave
   (clk,
    dataout);
  input clk;
  output [7:0]dataout;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [9:1]data0;
  wire [7:0]dataout;
  wire [7:0]dataout_OBUF;
  wire [9:0]index;
  wire \index[0]_i_2_n_0 ;
  wire \index[9]_i_1_n_0 ;
  wire \index[9]_i_3_n_0 ;
  wire \index[9]_i_4_n_0 ;
  wire [0:0]index_next;
  wire \index_reg_rep_n_0_[0] ;
  wire \index_reg_rep_n_0_[1] ;
  wire \index_reg_rep_n_0_[2] ;
  wire \index_reg_rep_n_0_[3] ;
  wire \index_reg_rep_n_0_[4] ;
  wire \index_reg_rep_n_0_[5] ;
  wire \index_reg_rep_n_0_[6] ;
  wire \index_reg_rep_n_0_[7] ;
  wire \index_reg_rep_n_0_[8] ;
  wire \index_reg_rep_n_0_[9] ;
  wire [15:8]NLW_dataout_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_dataout_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_dataout_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_dataout_reg_DOPBDOP_UNCONNECTED;

initial begin
 $sdf_annotate("sine_tb_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \dataout_OBUF[0]_inst 
       (.I(dataout_OBUF[0]),
        .O(dataout[0]));
  OBUF \dataout_OBUF[1]_inst 
       (.I(dataout_OBUF[1]),
        .O(dataout[1]));
  OBUF \dataout_OBUF[2]_inst 
       (.I(dataout_OBUF[2]),
        .O(dataout[2]));
  OBUF \dataout_OBUF[3]_inst 
       (.I(dataout_OBUF[3]),
        .O(dataout[3]));
  OBUF \dataout_OBUF[4]_inst 
       (.I(dataout_OBUF[4]),
        .O(dataout[4]));
  OBUF \dataout_OBUF[5]_inst 
       (.I(dataout_OBUF[5]),
        .O(dataout[5]));
  OBUF \dataout_OBUF[6]_inst 
       (.I(dataout_OBUF[6]),
        .O(dataout[6]));
  OBUF \dataout_OBUF[7]_inst 
       (.I(dataout_OBUF[7]),
        .O(dataout[7]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "dataout" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h009300920091008F008E008D008C008A00890088008600850084008300810080),
    .INIT_01(256'h00A700A600A500A300A200A100A0009E009D009C009B00990098009700960094),
    .INIT_02(256'h00BA00B900B800B700B500B400B300B200B100AF00AE00AD00AC00AB00A900A8),
    .INIT_03(256'h00CB00CA00C900C800C700C600C500C400C300C200C100C000BE00BD00BC00BB),
    .INIT_04(256'h00DB00DA00D900D800D700D600D500D400D300D200D100D000CF00CE00CD00CC),
    .INIT_05(256'h00E800E700E700E600E500E400E300E300E200E100E000DF00DE00DE00DD00DC),
    .INIT_06(256'h00F300F200F100F100F000F000EF00EE00EE00ED00EC00EC00EB00EA00EA00E9),
    .INIT_07(256'h00FA00FA00F900F900F900F800F800F700F700F600F600F500F500F400F400F3),
    .INIT_08(256'h00FF00FF00FE00FE00FE00FE00FD00FD00FD00FD00FC00FC00FC00FB00FB00FB),
    .INIT_09(256'h00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_0A(256'h00FE00FE00FE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_0B(256'h00F900F900FA00FA00FA00FB00FB00FB00FC00FC00FC00FD00FD00FD00FD00FE),
    .INIT_0C(256'h00F000F100F200F200F300F300F400F400F500F500F600F600F700F700F800F8),
    .INIT_0D(256'h00E500E600E700E700E800E900EA00EA00EB00EC00ED00ED00EE00EE00EF00F0),
    .INIT_0E(256'h00D700D800D900DA00DB00DC00DD00DE00DF00DF00E000E100E200E300E400E4),
    .INIT_0F(256'h00C700C800C900CB00CC00CD00CE00CF00D000D100D200D300D400D500D600D6),
    .INIT_10(256'h00B600B700B800B900BA00BB00BC00BE00BF00C000C100C200C300C400C500C6),
    .INIT_11(256'h00A200A400A500A600A700A800AA00AB00AC00AD00AE00B000B100B200B300B4),
    .INIT_12(256'h008E00900091009200930095009600970098009A009B009C009D009F00A000A1),
    .INIT_13(256'h007A007B007C007E007F00800081008300840085008700880089008A008C008D),
    .INIT_14(256'h0066006700680069006B006C006D006E00700071007200730075007600770079),
    .INIT_15(256'h0052005300540056005700580059005A005C005D005E005F0061006200630064),
    .INIT_16(256'h003F00410042004300440045004600470049004A004B004C004D004E00500051),
    .INIT_17(256'h002F0030003100320033003400350036003700380039003A003B003C003D003E),
    .INIT_18(256'h00200021002200230023002400250026002700280029002A002B002C002D002E),
    .INIT_19(256'h00140014001500160017001700180019001A001A001B001C001D001D001E001F),
    .INIT_1A(256'h000A000B000B000C000C000D000D000E000F000F001000100011001200120013),
    .INIT_1B(256'h000400040004000500050005000600060007000700070008000800090009000A),
    .INIT_1C(256'h0000000100010001000100010001000100020002000200020003000300030003),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0004000300030003000200020002000200020001000100010001000100010000),
    .INIT_1F(256'h000A000900090009000800080007000700060006000600050005000500040004),
    .INIT_20(256'h0013001300120011001100100010000F000E000E000D000D000C000C000B000A),
    .INIT_21(256'h0020001F001E001D001C001B001B001A00190018001800170016001500150014),
    .INIT_22(256'h002E002D002C002B002A00290028002800270026002500240023002200210020),
    .INIT_23(256'h003F003E003D003C003B003A003800370036003500340033003200310030002F),
    .INIT_24(256'h00510050004F004E004D004B004A004900480047004600450043004200410040),
    .INIT_25(256'h00650064006200610060005F005D005C005B005A005900570056005500540053),
    .INIT_26(256'h00790078007700750074007300720070006F006E006C006B006A006900670066),
    .INIT_27(256'h000000000000000000000000000000000000000000000080007E007D007C007A),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    dataout_reg
       (.ADDRARDADDR({\index_reg_rep_n_0_[9] ,\index_reg_rep_n_0_[8] ,\index_reg_rep_n_0_[7] ,\index_reg_rep_n_0_[6] ,\index_reg_rep_n_0_[5] ,\index_reg_rep_n_0_[4] ,\index_reg_rep_n_0_[3] ,\index_reg_rep_n_0_[2] ,\index_reg_rep_n_0_[1] ,\index_reg_rep_n_0_[0] ,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_dataout_reg_DOADO_UNCONNECTED[15:8],dataout_OBUF}),
        .DOBDO(NLW_dataout_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_dataout_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_dataout_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h00000000FFFF7FFF)) 
    \index[0]_i_1 
       (.I0(index[5]),
        .I1(index[2]),
        .I2(index[4]),
        .I3(index[6]),
        .I4(\index[0]_i_2_n_0 ),
        .I5(index[0]),
        .O(index_next));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \index[0]_i_2 
       (.I0(index[1]),
        .I1(index[8]),
        .I2(index[9]),
        .I3(index[7]),
        .I4(index[3]),
        .O(\index[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_i_1 
       (.I0(index[0]),
        .I1(index[1]),
        .O(data0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[2]_i_1 
       (.I0(index[1]),
        .I1(index[0]),
        .I2(index[2]),
        .O(data0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \index[3]_i_1 
       (.I0(index[2]),
        .I1(index[0]),
        .I2(index[1]),
        .I3(index[3]),
        .O(data0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \index[4]_i_1 
       (.I0(index[2]),
        .I1(index[1]),
        .I2(index[0]),
        .I3(index[3]),
        .I4(index[4]),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \index[5]_i_1 
       (.I0(index[2]),
        .I1(index[4]),
        .I2(index[1]),
        .I3(index[0]),
        .I4(index[3]),
        .I5(index[5]),
        .O(data0[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \index[6]_i_1 
       (.I0(index[4]),
        .I1(index[2]),
        .I2(index[5]),
        .I3(\index[9]_i_4_n_0 ),
        .I4(index[6]),
        .O(data0[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \index[7]_i_1 
       (.I0(index[5]),
        .I1(index[2]),
        .I2(index[4]),
        .I3(index[6]),
        .I4(\index[9]_i_4_n_0 ),
        .I5(index[7]),
        .O(data0[7]));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \index[8]_i_1 
       (.I0(\index[9]_i_3_n_0 ),
        .I1(index[3]),
        .I2(index[0]),
        .I3(index[1]),
        .I4(index[7]),
        .I5(index[8]),
        .O(data0[8]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \index[9]_i_1 
       (.I0(index[5]),
        .I1(index[2]),
        .I2(index[4]),
        .I3(index[6]),
        .I4(\index[0]_i_2_n_0 ),
        .I5(index[0]),
        .O(\index[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \index[9]_i_2 
       (.I0(\index[9]_i_3_n_0 ),
        .I1(index[8]),
        .I2(index[7]),
        .I3(\index[9]_i_4_n_0 ),
        .I4(index[9]),
        .O(data0[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \index[9]_i_3 
       (.I0(index[5]),
        .I1(index[2]),
        .I2(index[4]),
        .I3(index[6]),
        .O(\index[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \index[9]_i_4 
       (.I0(index[1]),
        .I1(index[0]),
        .I2(index[3]),
        .O(\index[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(index_next),
        .Q(index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(index[1]),
        .R(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(index[2]),
        .R(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(index[3]),
        .R(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(index[4]),
        .R(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(index[5]),
        .R(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(index[6]),
        .R(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(index[7]),
        .R(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[8]),
        .Q(index[8]),
        .R(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[9]),
        .Q(index[9]),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(index_next),
        .Q(\index_reg_rep_n_0_[0] ),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(\index_reg_rep_n_0_[1] ),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(\index_reg_rep_n_0_[2] ),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(\index_reg_rep_n_0_[3] ),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(\index_reg_rep_n_0_[4] ),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(\index_reg_rep_n_0_[5] ),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(\index_reg_rep_n_0_[6] ),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(\index_reg_rep_n_0_[7] ),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[8]),
        .Q(\index_reg_rep_n_0_[8] ),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[9]),
        .Q(\index_reg_rep_n_0_[9] ),
        .R(\index[9]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
