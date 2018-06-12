// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Jun 12 19:28:47 2018
// Host        : Arthur running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Arthur/Documents/Workspace/Lab_DSD/Project/FPGA-Sequencer-and-Synthesizer/Peripheries/waveform/waveform.sim/sim_1/impl/timing/xsim/sine_pwm_tb_time_impl.v
// Design      : pwm_sine
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module pwm
   (pwm_out_total_OBUF,
    clk_total_IBUF_BUFG,
    D);
  output pwm_out_total_OBUF;
  input clk_total_IBUF_BUFG;
  input [7:0]D;

  wire [7:0]D;
  wire clk_total_IBUF_BUFG;
  wire \counter[9]_i_1_n_0 ;
  wire \counter[9]_i_3_n_0 ;
  wire [9:0]counter_next;
  wire [9:0]counter_reg__0;
  wire pwm_out0_carry_i_1_n_0;
  wire pwm_out0_carry_i_2_n_0;
  wire pwm_out0_carry_i_3_n_0;
  wire pwm_out0_carry_i_4_n_0;
  wire pwm_out0_carry_i_5_n_0;
  wire pwm_out0_carry_i_6_n_0;
  wire pwm_out0_carry_i_7_n_0;
  wire pwm_out0_carry_i_8_n_0;
  wire pwm_out0_carry_n_0;
  wire pwm_out_total_OBUF;
  wire \threshold[9]_i_1_n_0 ;
  wire \threshold[9]_i_2_n_0 ;
  wire \threshold_reg_n_0_[2] ;
  wire \threshold_reg_n_0_[3] ;
  wire \threshold_reg_n_0_[4] ;
  wire \threshold_reg_n_0_[5] ;
  wire \threshold_reg_n_0_[6] ;
  wire \threshold_reg_n_0_[7] ;
  wire \threshold_reg_n_0_[8] ;
  wire \threshold_reg_n_0_[9] ;
  wire [2:0]NLW_pwm_out0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_out0_carry_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg__0[0]),
        .O(counter_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(counter_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .O(counter_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[3]),
        .O(counter_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter_reg__0[3]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[0]),
        .I3(counter_reg__0[2]),
        .I4(counter_reg__0[4]),
        .O(counter_next[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter[5]_i_1 
       (.I0(counter_reg__0[4]),
        .I1(counter_reg__0[2]),
        .I2(counter_reg__0[0]),
        .I3(counter_reg__0[1]),
        .I4(counter_reg__0[3]),
        .I5(counter_reg__0[5]),
        .O(counter_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter[6]_i_1 
       (.I0(\counter[9]_i_3_n_0 ),
        .I1(counter_reg__0[6]),
        .O(counter_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \counter[7]_i_1 
       (.I0(counter_reg__0[6]),
        .I1(\counter[9]_i_3_n_0 ),
        .I2(counter_reg__0[7]),
        .O(counter_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \counter[8]_i_1 
       (.I0(counter_reg__0[7]),
        .I1(\counter[9]_i_3_n_0 ),
        .I2(counter_reg__0[6]),
        .I3(counter_reg__0[8]),
        .O(counter_next[8]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \counter[9]_i_1 
       (.I0(counter_reg__0[9]),
        .I1(counter_reg__0[8]),
        .I2(counter_reg__0[6]),
        .I3(\counter[9]_i_3_n_0 ),
        .I4(counter_reg__0[7]),
        .O(\counter[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \counter[9]_i_2 
       (.I0(counter_reg__0[8]),
        .I1(counter_reg__0[6]),
        .I2(\counter[9]_i_3_n_0 ),
        .I3(counter_reg__0[7]),
        .I4(counter_reg__0[9]),
        .O(counter_next[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[9]_i_3 
       (.I0(counter_reg__0[4]),
        .I1(counter_reg__0[2]),
        .I2(counter_reg__0[0]),
        .I3(counter_reg__0[1]),
        .I4(counter_reg__0[3]),
        .I5(counter_reg__0[5]),
        .O(\counter[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_next[0]),
        .Q(counter_reg__0[0]),
        .R(\counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_next[1]),
        .Q(counter_reg__0[1]),
        .R(\counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_next[2]),
        .Q(counter_reg__0[2]),
        .R(\counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_next[3]),
        .Q(counter_reg__0[3]),
        .R(\counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_next[4]),
        .Q(counter_reg__0[4]),
        .R(\counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_next[5]),
        .Q(counter_reg__0[5]),
        .R(\counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_next[6]),
        .Q(counter_reg__0[6]),
        .R(\counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_next[7]),
        .Q(counter_reg__0[7]),
        .R(\counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_next[8]),
        .Q(counter_reg__0[8]),
        .R(\counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_next[9]),
        .Q(counter_reg__0[9]),
        .R(\counter[9]_i_1_n_0 ));
  CARRY4 pwm_out0_carry
       (.CI(1'b0),
        .CO({pwm_out0_carry_n_0,NLW_pwm_out0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({pwm_out0_carry_i_1_n_0,pwm_out0_carry_i_2_n_0,pwm_out0_carry_i_3_n_0,pwm_out0_carry_i_4_n_0}),
        .O(NLW_pwm_out0_carry_O_UNCONNECTED[3:0]),
        .S({pwm_out0_carry_i_5_n_0,pwm_out0_carry_i_6_n_0,pwm_out0_carry_i_7_n_0,pwm_out0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_out0_carry_i_1
       (.I0(\threshold_reg_n_0_[9] ),
        .I1(counter_reg__0[9]),
        .I2(\threshold_reg_n_0_[8] ),
        .I3(counter_reg__0[8]),
        .O(pwm_out0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_out0_carry_i_2
       (.I0(\threshold_reg_n_0_[7] ),
        .I1(counter_reg__0[7]),
        .I2(\threshold_reg_n_0_[6] ),
        .I3(counter_reg__0[6]),
        .O(pwm_out0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_out0_carry_i_3
       (.I0(\threshold_reg_n_0_[5] ),
        .I1(counter_reg__0[5]),
        .I2(\threshold_reg_n_0_[4] ),
        .I3(counter_reg__0[4]),
        .O(pwm_out0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_out0_carry_i_4
       (.I0(\threshold_reg_n_0_[3] ),
        .I1(counter_reg__0[3]),
        .I2(\threshold_reg_n_0_[2] ),
        .I3(counter_reg__0[2]),
        .O(pwm_out0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_5
       (.I0(\threshold_reg_n_0_[9] ),
        .I1(counter_reg__0[9]),
        .I2(\threshold_reg_n_0_[8] ),
        .I3(counter_reg__0[8]),
        .O(pwm_out0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_6
       (.I0(\threshold_reg_n_0_[7] ),
        .I1(counter_reg__0[7]),
        .I2(\threshold_reg_n_0_[6] ),
        .I3(counter_reg__0[6]),
        .O(pwm_out0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_7
       (.I0(\threshold_reg_n_0_[5] ),
        .I1(counter_reg__0[5]),
        .I2(\threshold_reg_n_0_[4] ),
        .I3(counter_reg__0[4]),
        .O(pwm_out0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_8
       (.I0(\threshold_reg_n_0_[3] ),
        .I1(counter_reg__0[3]),
        .I2(\threshold_reg_n_0_[2] ),
        .I3(counter_reg__0[2]),
        .O(pwm_out0_carry_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pwm_out_reg
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(pwm_out0_carry_n_0),
        .Q(pwm_out_total_OBUF),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00010000)) 
    \threshold[9]_i_1 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[3]),
        .I2(counter_reg__0[0]),
        .I3(counter_reg__0[1]),
        .I4(\threshold[9]_i_2_n_0 ),
        .O(\threshold[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \threshold[9]_i_2 
       (.I0(counter_reg__0[6]),
        .I1(counter_reg__0[7]),
        .I2(counter_reg__0[4]),
        .I3(counter_reg__0[5]),
        .I4(counter_reg__0[9]),
        .I5(counter_reg__0[8]),
        .O(\threshold[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[2] 
       (.C(clk_total_IBUF_BUFG),
        .CE(\threshold[9]_i_1_n_0 ),
        .D(D[0]),
        .Q(\threshold_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[3] 
       (.C(clk_total_IBUF_BUFG),
        .CE(\threshold[9]_i_1_n_0 ),
        .D(D[1]),
        .Q(\threshold_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[4] 
       (.C(clk_total_IBUF_BUFG),
        .CE(\threshold[9]_i_1_n_0 ),
        .D(D[2]),
        .Q(\threshold_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[5] 
       (.C(clk_total_IBUF_BUFG),
        .CE(\threshold[9]_i_1_n_0 ),
        .D(D[3]),
        .Q(\threshold_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[6] 
       (.C(clk_total_IBUF_BUFG),
        .CE(\threshold[9]_i_1_n_0 ),
        .D(D[4]),
        .Q(\threshold_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[7] 
       (.C(clk_total_IBUF_BUFG),
        .CE(\threshold[9]_i_1_n_0 ),
        .D(D[5]),
        .Q(\threshold_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[8] 
       (.C(clk_total_IBUF_BUFG),
        .CE(\threshold[9]_i_1_n_0 ),
        .D(D[6]),
        .Q(\threshold_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_reg[9] 
       (.C(clk_total_IBUF_BUFG),
        .CE(\threshold[9]_i_1_n_0 ),
        .D(D[7]),
        .Q(\threshold_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "57b99215" *) 
(* NotValidForBitStream *)
module pwm_sine
   (clk_total,
    analog_out_total,
    pwm_out_total);
  input clk_total;
  output [7:0]analog_out_total;
  output pwm_out_total;

  wire [7:0]analog_out_total;
  wire [7:0]analog_out_total_OBUF;
  wire clk_sine;
  wire clk_sine_BUFG;
  wire clk_total;
  wire clk_total_IBUF;
  wire clk_total_IBUF_BUFG;
  wire \counter_sine[7]_i_2_n_0 ;
  wire \counter_sine_reg_n_0_[0] ;
  wire \counter_sine_reg_n_0_[1] ;
  wire \counter_sine_reg_n_0_[2] ;
  wire \counter_sine_reg_n_0_[3] ;
  wire \counter_sine_reg_n_0_[4] ;
  wire \counter_sine_reg_n_0_[5] ;
  wire \counter_sine_reg_n_0_[6] ;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire p_0_in;
  wire [7:0]plusOp;
  wire pwm_out_total;
  wire pwm_out_total_OBUF;

initial begin
 $sdf_annotate("sine_pwm_tb_time_impl.sdf",,,,"tool_control");
end
  sine_wave UUT1
       (.Q(analog_out_total_OBUF),
        .clk_sine(clk_sine_BUFG),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7));
  pwm UUT2
       (.D(analog_out_total_OBUF),
        .clk_total_IBUF_BUFG(clk_total_IBUF_BUFG),
        .pwm_out_total_OBUF(pwm_out_total_OBUF));
  OBUF \analog_out_total_OBUF[0]_inst 
       (.I(lopt),
        .O(analog_out_total[0]));
  OBUF \analog_out_total_OBUF[1]_inst 
       (.I(lopt_1),
        .O(analog_out_total[1]));
  OBUF \analog_out_total_OBUF[2]_inst 
       (.I(lopt_2),
        .O(analog_out_total[2]));
  OBUF \analog_out_total_OBUF[3]_inst 
       (.I(lopt_3),
        .O(analog_out_total[3]));
  OBUF \analog_out_total_OBUF[4]_inst 
       (.I(lopt_4),
        .O(analog_out_total[4]));
  OBUF \analog_out_total_OBUF[5]_inst 
       (.I(lopt_5),
        .O(analog_out_total[5]));
  OBUF \analog_out_total_OBUF[6]_inst 
       (.I(lopt_6),
        .O(analog_out_total[6]));
  OBUF \analog_out_total_OBUF[7]_inst 
       (.I(lopt_7),
        .O(analog_out_total[7]));
  (* TOOL_INSERTED_CLOCKBUFG *) 
  BUFG clk_sine_BUFG_inst
       (.I(clk_sine),
        .O(clk_sine_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    clk_sine_reg
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in),
        .Q(clk_sine),
        .R(1'b0));
  BUFG clk_total_IBUF_BUFG_inst
       (.I(clk_total_IBUF),
        .O(clk_total_IBUF_BUFG));
  IBUF clk_total_IBUF_inst
       (.I(clk_total),
        .O(clk_total_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_sine[0]_i_1 
       (.I0(\counter_sine_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_sine[1]_i_1 
       (.I0(\counter_sine_reg_n_0_[0] ),
        .I1(\counter_sine_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_sine[2]_i_1 
       (.I0(\counter_sine_reg_n_0_[1] ),
        .I1(\counter_sine_reg_n_0_[0] ),
        .I2(\counter_sine_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_sine[3]_i_1 
       (.I0(\counter_sine_reg_n_0_[2] ),
        .I1(\counter_sine_reg_n_0_[0] ),
        .I2(\counter_sine_reg_n_0_[1] ),
        .I3(\counter_sine_reg_n_0_[3] ),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_sine[4]_i_1 
       (.I0(\counter_sine_reg_n_0_[3] ),
        .I1(\counter_sine_reg_n_0_[1] ),
        .I2(\counter_sine_reg_n_0_[0] ),
        .I3(\counter_sine_reg_n_0_[2] ),
        .I4(\counter_sine_reg_n_0_[4] ),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_sine[5]_i_1 
       (.I0(\counter_sine_reg_n_0_[4] ),
        .I1(\counter_sine_reg_n_0_[2] ),
        .I2(\counter_sine_reg_n_0_[0] ),
        .I3(\counter_sine_reg_n_0_[1] ),
        .I4(\counter_sine_reg_n_0_[3] ),
        .I5(\counter_sine_reg_n_0_[5] ),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter_sine[6]_i_1 
       (.I0(\counter_sine[7]_i_2_n_0 ),
        .I1(\counter_sine_reg_n_0_[6] ),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \counter_sine[7]_i_1 
       (.I0(\counter_sine_reg_n_0_[6] ),
        .I1(\counter_sine[7]_i_2_n_0 ),
        .I2(p_0_in),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter_sine[7]_i_2 
       (.I0(\counter_sine_reg_n_0_[4] ),
        .I1(\counter_sine_reg_n_0_[2] ),
        .I2(\counter_sine_reg_n_0_[0] ),
        .I3(\counter_sine_reg_n_0_[1] ),
        .I4(\counter_sine_reg_n_0_[3] ),
        .I5(\counter_sine_reg_n_0_[5] ),
        .O(\counter_sine[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_sine_reg[0] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\counter_sine_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_sine_reg[1] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\counter_sine_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_sine_reg[2] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\counter_sine_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_sine_reg[3] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\counter_sine_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_sine_reg[4] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\counter_sine_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_sine_reg[5] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\counter_sine_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_sine_reg[6] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(\counter_sine_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_sine_reg[7] 
       (.C(clk_total_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(p_0_in),
        .R(1'b0));
  OBUF pwm_out_total_OBUF_inst
       (.I(pwm_out_total_OBUF),
        .O(pwm_out_total));
endmodule

module sine_wave
   (Q,
    clk_sine,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7);
  output [7:0]Q;
  input clk_sine;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;

  wire [7:0]Q;
  wire clk_sine;
  wire [9:1]data0;
  wire \dataout[0]_i_14_n_0 ;
  wire \dataout[0]_i_15_n_0 ;
  wire \dataout[0]_i_16_n_0 ;
  wire \dataout[0]_i_17_n_0 ;
  wire \dataout[0]_i_18_n_0 ;
  wire \dataout[0]_i_19_n_0 ;
  wire \dataout[0]_i_1_n_0 ;
  wire \dataout[0]_i_20_n_0 ;
  wire \dataout[0]_i_21_n_0 ;
  wire \dataout[0]_i_22_n_0 ;
  wire \dataout[0]_i_23_n_0 ;
  wire \dataout[0]_i_24_n_0 ;
  wire \dataout[0]_i_25_n_0 ;
  wire \dataout[0]_i_26_n_0 ;
  wire \dataout[0]_i_27_n_0 ;
  wire \dataout[0]_i_28_n_0 ;
  wire \dataout[0]_i_29_n_0 ;
  wire \dataout[1]_i_14_n_0 ;
  wire \dataout[1]_i_15_n_0 ;
  wire \dataout[1]_i_16_n_0 ;
  wire \dataout[1]_i_17_n_0 ;
  wire \dataout[1]_i_18_n_0 ;
  wire \dataout[1]_i_19_n_0 ;
  wire \dataout[1]_i_1_n_0 ;
  wire \dataout[1]_i_20_n_0 ;
  wire \dataout[1]_i_21_n_0 ;
  wire \dataout[1]_i_22_n_0 ;
  wire \dataout[1]_i_23_n_0 ;
  wire \dataout[1]_i_24_n_0 ;
  wire \dataout[1]_i_25_n_0 ;
  wire \dataout[1]_i_26_n_0 ;
  wire \dataout[1]_i_27_n_0 ;
  wire \dataout[1]_i_28_n_0 ;
  wire \dataout[1]_i_29_n_0 ;
  wire \dataout[2]_i_14_n_0 ;
  wire \dataout[2]_i_15_n_0 ;
  wire \dataout[2]_i_16_n_0 ;
  wire \dataout[2]_i_17_n_0 ;
  wire \dataout[2]_i_18_n_0 ;
  wire \dataout[2]_i_19_n_0 ;
  wire \dataout[2]_i_1_n_0 ;
  wire \dataout[2]_i_20_n_0 ;
  wire \dataout[2]_i_21_n_0 ;
  wire \dataout[2]_i_22_n_0 ;
  wire \dataout[2]_i_23_n_0 ;
  wire \dataout[2]_i_24_n_0 ;
  wire \dataout[2]_i_25_n_0 ;
  wire \dataout[2]_i_26_n_0 ;
  wire \dataout[2]_i_27_n_0 ;
  wire \dataout[2]_i_28_n_0 ;
  wire \dataout[2]_i_29_n_0 ;
  wire \dataout[3]_i_10_n_0 ;
  wire \dataout[3]_i_11_n_0 ;
  wire \dataout[3]_i_12_n_0 ;
  wire \dataout[3]_i_13_n_0 ;
  wire \dataout[3]_i_14_n_0 ;
  wire \dataout[3]_i_15_n_0 ;
  wire \dataout[3]_i_16_n_0 ;
  wire \dataout[3]_i_17_n_0 ;
  wire \dataout[3]_i_18_n_0 ;
  wire \dataout[3]_i_19_n_0 ;
  wire \dataout[3]_i_20_n_0 ;
  wire \dataout[3]_i_21_n_0 ;
  wire \dataout[3]_i_4_n_0 ;
  wire \dataout[3]_i_5_n_0 ;
  wire \dataout[3]_i_6_n_0 ;
  wire \dataout[3]_i_7_n_0 ;
  wire \dataout[3]_i_8_n_0 ;
  wire \dataout[3]_i_9_n_0 ;
  wire \dataout[4]_i_10_n_0 ;
  wire \dataout[4]_i_11_n_0 ;
  wire \dataout[4]_i_12_n_0 ;
  wire \dataout[4]_i_13_n_0 ;
  wire \dataout[4]_i_14_n_0 ;
  wire \dataout[4]_i_15_n_0 ;
  wire \dataout[4]_i_16_n_0 ;
  wire \dataout[4]_i_17_n_0 ;
  wire \dataout[4]_i_18_n_0 ;
  wire \dataout[4]_i_19_n_0 ;
  wire \dataout[4]_i_20_n_0 ;
  wire \dataout[4]_i_4_n_0 ;
  wire \dataout[4]_i_5_n_0 ;
  wire \dataout[4]_i_6_n_0 ;
  wire \dataout[4]_i_7_n_0 ;
  wire \dataout[4]_i_8_n_0 ;
  wire \dataout[4]_i_9_n_0 ;
  wire \dataout[5]_i_10_n_0 ;
  wire \dataout[5]_i_11_n_0 ;
  wire \dataout[5]_i_12_n_0 ;
  wire \dataout[5]_i_13_n_0 ;
  wire \dataout[5]_i_14_n_0 ;
  wire \dataout[5]_i_15_n_0 ;
  wire \dataout[5]_i_16_n_0 ;
  wire \dataout[5]_i_17_n_0 ;
  wire \dataout[5]_i_4_n_0 ;
  wire \dataout[5]_i_5_n_0 ;
  wire \dataout[5]_i_6_n_0 ;
  wire \dataout[5]_i_7_n_0 ;
  wire \dataout[5]_i_8_n_0 ;
  wire \dataout[5]_i_9_n_0 ;
  wire \dataout[6]_i_10_n_0 ;
  wire \dataout[6]_i_1_n_0 ;
  wire \dataout[6]_i_2_n_0 ;
  wire \dataout[6]_i_3_n_0 ;
  wire \dataout[6]_i_4_n_0 ;
  wire \dataout[6]_i_5_n_0 ;
  wire \dataout[6]_i_6_n_0 ;
  wire \dataout[6]_i_7_n_0 ;
  wire \dataout[6]_i_8_n_0 ;
  wire \dataout[6]_i_9_n_0 ;
  wire \dataout[7]_i_1_n_0 ;
  wire \dataout[7]_i_2_n_0 ;
  wire \dataout[7]_i_3_n_0 ;
  wire \dataout[7]_i_4_n_0 ;
  wire \dataout[7]_i_5_n_0 ;
  wire \dataout[7]_i_6_n_0 ;
  wire \dataout[7]_i_7_n_0 ;
  wire \dataout_reg[0]_i_10_n_0 ;
  wire \dataout_reg[0]_i_11_n_0 ;
  wire \dataout_reg[0]_i_12_n_0 ;
  wire \dataout_reg[0]_i_13_n_0 ;
  wire \dataout_reg[0]_i_2_n_0 ;
  wire \dataout_reg[0]_i_3_n_0 ;
  wire \dataout_reg[0]_i_4_n_0 ;
  wire \dataout_reg[0]_i_5_n_0 ;
  wire \dataout_reg[0]_i_6_n_0 ;
  wire \dataout_reg[0]_i_7_n_0 ;
  wire \dataout_reg[0]_i_8_n_0 ;
  wire \dataout_reg[0]_i_9_n_0 ;
  wire \dataout_reg[0]_lopt_replica_1 ;
  wire \dataout_reg[1]_i_10_n_0 ;
  wire \dataout_reg[1]_i_11_n_0 ;
  wire \dataout_reg[1]_i_12_n_0 ;
  wire \dataout_reg[1]_i_13_n_0 ;
  wire \dataout_reg[1]_i_2_n_0 ;
  wire \dataout_reg[1]_i_3_n_0 ;
  wire \dataout_reg[1]_i_4_n_0 ;
  wire \dataout_reg[1]_i_5_n_0 ;
  wire \dataout_reg[1]_i_6_n_0 ;
  wire \dataout_reg[1]_i_7_n_0 ;
  wire \dataout_reg[1]_i_8_n_0 ;
  wire \dataout_reg[1]_i_9_n_0 ;
  wire \dataout_reg[1]_lopt_replica_1 ;
  wire \dataout_reg[2]_i_10_n_0 ;
  wire \dataout_reg[2]_i_11_n_0 ;
  wire \dataout_reg[2]_i_12_n_0 ;
  wire \dataout_reg[2]_i_13_n_0 ;
  wire \dataout_reg[2]_i_2_n_0 ;
  wire \dataout_reg[2]_i_3_n_0 ;
  wire \dataout_reg[2]_i_4_n_0 ;
  wire \dataout_reg[2]_i_5_n_0 ;
  wire \dataout_reg[2]_i_6_n_0 ;
  wire \dataout_reg[2]_i_7_n_0 ;
  wire \dataout_reg[2]_i_8_n_0 ;
  wire \dataout_reg[2]_i_9_n_0 ;
  wire \dataout_reg[2]_lopt_replica_1 ;
  wire \dataout_reg[3]_i_1_n_0 ;
  wire \dataout_reg[3]_i_2_n_0 ;
  wire \dataout_reg[3]_i_3_n_0 ;
  wire \dataout_reg[3]_lopt_replica_1 ;
  wire \dataout_reg[4]_i_1_n_0 ;
  wire \dataout_reg[4]_i_2_n_0 ;
  wire \dataout_reg[4]_i_3_n_0 ;
  wire \dataout_reg[4]_lopt_replica_1 ;
  wire \dataout_reg[5]_i_1_n_0 ;
  wire \dataout_reg[5]_i_2_n_0 ;
  wire \dataout_reg[5]_i_3_n_0 ;
  wire \dataout_reg[5]_lopt_replica_1 ;
  wire \dataout_reg[6]_lopt_replica_1 ;
  wire \dataout_reg[7]_lopt_replica_1 ;
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

  assign lopt = \dataout_reg[0]_lopt_replica_1 ;
  assign lopt_1 = \dataout_reg[1]_lopt_replica_1 ;
  assign lopt_2 = \dataout_reg[2]_lopt_replica_1 ;
  assign lopt_3 = \dataout_reg[3]_lopt_replica_1 ;
  assign lopt_4 = \dataout_reg[4]_lopt_replica_1 ;
  assign lopt_5 = \dataout_reg[5]_lopt_replica_1 ;
  assign lopt_6 = \dataout_reg[6]_lopt_replica_1 ;
  assign lopt_7 = \dataout_reg[7]_lopt_replica_1 ;
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[0]_i_1 
       (.I0(\dataout_reg[0]_i_2_n_0 ),
        .I1(\dataout_reg[0]_i_3_n_0 ),
        .I2(\index_reg_rep_n_0_[0] ),
        .I3(\dataout_reg[0]_i_4_n_0 ),
        .I4(\index_reg_rep_n_0_[2] ),
        .I5(\dataout_reg[0]_i_5_n_0 ),
        .O(\dataout[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000C3E92B82D4)) 
    \dataout[0]_i_14 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000087A60018D5CF)) 
    \dataout[0]_i_15 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0032001222BD0D5F)) 
    \dataout[0]_i_16 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[7] ),
        .I2(\index_reg_rep_n_0_[3] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[6] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000200A000DD592F)) 
    \dataout[0]_i_17 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[9] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00007D5100338FDB)) 
    \dataout[0]_i_18 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000004582F91F58)) 
    \dataout[0]_i_19 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000506777BD7A8)) 
    \dataout[0]_i_20 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[7] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h000000082DFF07E8)) 
    \dataout[0]_i_21 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0E04020A0D04B8DF)) 
    \dataout[0]_i_22 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[9] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[7] ),
        .O(\dataout[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h00A8001000F757B5)) 
    \dataout[0]_i_23 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[9] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000EE77001CD42A)) 
    \dataout[0]_i_24 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[7] ),
        .O(\dataout[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h00000006825B2D50)) 
    \dataout[0]_i_25 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000520F0044BA20)) 
    \dataout[0]_i_26 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[7] ),
        .O(\dataout[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000010A885D0EE2)) 
    \dataout[0]_i_27 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[8] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000788E0E0870B7)) 
    \dataout[0]_i_28 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[7] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h002F000000EF7707)) 
    \dataout[0]_i_29 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[9] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[1]_i_1 
       (.I0(\dataout_reg[1]_i_2_n_0 ),
        .I1(\dataout_reg[1]_i_3_n_0 ),
        .I2(\index_reg_rep_n_0_[0] ),
        .I3(\dataout_reg[1]_i_4_n_0 ),
        .I4(\index_reg_rep_n_0_[2] ),
        .I5(\dataout_reg[1]_i_5_n_0 ),
        .O(\dataout[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00009C5E00D4B203)) 
    \dataout[1]_i_14 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[7] ),
        .O(\dataout[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0004000426163D31)) 
    \dataout[1]_i_15 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[8] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[6] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000002F3BCDAEFC)) 
    \dataout[1]_i_16 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000010AA935EBCE)) 
    \dataout[1]_i_17 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[8] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000929800E10BA8)) 
    \dataout[1]_i_18 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000481F495D1)) 
    \dataout[1]_i_19 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[7] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[6] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000030A945DF7E4)) 
    \dataout[1]_i_20 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[7] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h000004EC003B1D1E)) 
    \dataout[1]_i_21 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000006089959D0EC)) 
    \dataout[1]_i_22 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[7] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h000004FC0013ED54)) 
    \dataout[1]_i_23 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00009A2E003766D6)) 
    \dataout[1]_i_24 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[7] ),
        .O(\dataout[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000010C24354E8E)) 
    \dataout[1]_i_25 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[8] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000000259FCD8B8C)) 
    \dataout[1]_i_26 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000030E8EBFEEC6)) 
    \dataout[1]_i_27 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[8] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h000093260D0277F3)) 
    \dataout[1]_i_28 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[7] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[1]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000007010350725)) 
    \dataout[1]_i_29 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[6] ),
        .I2(\index_reg_rep_n_0_[3] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[1]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[2]_i_1 
       (.I0(\dataout_reg[2]_i_2_n_0 ),
        .I1(\dataout_reg[2]_i_3_n_0 ),
        .I2(\index_reg_rep_n_0_[0] ),
        .I3(\dataout_reg[2]_i_4_n_0 ),
        .I4(\index_reg_rep_n_0_[2] ),
        .I5(\dataout_reg[2]_i_5_n_0 ),
        .O(\dataout[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001FFB23)) 
    \dataout[2]_i_14 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[9] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000323A775758)) 
    \dataout[2]_i_15 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[6] ),
        .I2(\index_reg_rep_n_0_[3] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000002B83CDBF20)) 
    \dataout[2]_i_16 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000004A2EC7B325)) 
    \dataout[2]_i_17 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000002000DDDEDE4)) 
    \dataout[2]_i_18 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[7] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00A900A200B7713B)) 
    \dataout[2]_i_19 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[9] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000800B2001FC15F)) 
    \dataout[2]_i_20 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[9] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00002D4C0035B77A)) 
    \dataout[2]_i_21 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00080022001FD32F)) 
    \dataout[2]_i_22 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[9] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h00002D5C001D5770)) 
    \dataout[2]_i_23 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00000250002F3F0A)) 
    \dataout[2]_i_24 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[6] ),
        .I2(\index_reg_rep_n_0_[3] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000004E2E571765)) 
    \dataout[2]_i_25 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[2]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000002040CDDEDE0)) 
    \dataout[2]_i_26 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[7] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000A9B3004BA79D)) 
    \dataout[2]_i_27 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h000000010DFB9E5C)) 
    \dataout[2]_i_28 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[2]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h002D00A000B7717B)) 
    \dataout[2]_i_29 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[9] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h000006060C7F6166)) 
    \dataout[3]_i_10 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[8] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000954004D9FB6)) 
    \dataout[3]_i_11 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00008139001D9F89)) 
    \dataout[3]_i_12 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000A0A260009BF2B)) 
    \dataout[3]_i_13 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[8] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[6] ),
        .O(\dataout[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000833A000C9F99)) 
    \dataout[3]_i_14 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00080666009F0966)) 
    \dataout[3]_i_15 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[8] ),
        .I3(\index_reg_rep_n_0_[9] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[6] ),
        .O(\dataout[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000832A002CDF93)) 
    \dataout[3]_i_16 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000060C0D7F6962)) 
    \dataout[3]_i_17 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[8] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000094400499FB6)) 
    \dataout[3]_i_18 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000819900191FC9)) 
    \dataout[3]_i_19 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000AAB00B92F69)) 
    \dataout[3]_i_20 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00080666009F096A)) 
    \dataout[3]_i_21 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[8] ),
        .I3(\index_reg_rep_n_0_[9] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[6] ),
        .O(\dataout[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[3]_i_4 
       (.I0(\dataout[3]_i_8_n_0 ),
        .I1(\dataout[3]_i_9_n_0 ),
        .I2(\index_reg_rep_n_0_[1] ),
        .I3(\dataout[3]_i_10_n_0 ),
        .I4(\index_reg_rep_n_0_[4] ),
        .I5(\dataout[3]_i_11_n_0 ),
        .O(\dataout[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[3]_i_5 
       (.I0(\dataout[3]_i_12_n_0 ),
        .I1(\dataout[3]_i_13_n_0 ),
        .I2(\index_reg_rep_n_0_[1] ),
        .I3(\dataout[3]_i_14_n_0 ),
        .I4(\index_reg_rep_n_0_[4] ),
        .I5(\dataout[3]_i_15_n_0 ),
        .O(\dataout[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[3]_i_6 
       (.I0(\dataout[3]_i_16_n_0 ),
        .I1(\dataout[3]_i_9_n_0 ),
        .I2(\index_reg_rep_n_0_[1] ),
        .I3(\dataout[3]_i_17_n_0 ),
        .I4(\index_reg_rep_n_0_[4] ),
        .I5(\dataout[3]_i_18_n_0 ),
        .O(\dataout[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[3]_i_7 
       (.I0(\dataout[3]_i_19_n_0 ),
        .I1(\dataout[3]_i_20_n_0 ),
        .I2(\index_reg_rep_n_0_[1] ),
        .I3(\dataout[3]_i_12_n_0 ),
        .I4(\index_reg_rep_n_0_[4] ),
        .I5(\dataout[3]_i_21_n_0 ),
        .O(\dataout[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000060C8D3F6962)) 
    \dataout[3]_i_8 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[8] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000096600698F36)) 
    \dataout[3]_i_9 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000005E1007D3FB7)) 
    \dataout[4]_i_10 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000002DF00803C48)) 
    \dataout[4]_i_11 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[7] ),
        .O(\dataout[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000500F8002F1FA1)) 
    \dataout[4]_i_12 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[9] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF00C41EDC)) 
    \dataout[4]_i_13 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[7] ),
        .O(\dataout[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000005F9001F2FB1)) 
    \dataout[4]_i_14 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000002DF00841ED8)) 
    \dataout[4]_i_15 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[7] ),
        .O(\dataout[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000005E9003F2FB3)) 
    \dataout[4]_i_16 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000002DF00843C48)) 
    \dataout[4]_i_17 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[7] ),
        .O(\dataout[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00050078002F1BA1)) 
    \dataout[4]_i_18 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[9] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000C40097FFDE)) 
    \dataout[4]_i_19 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000002DF00841EDC)) 
    \dataout[4]_i_20 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[7] ),
        .O(\dataout[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[4]_i_4 
       (.I0(\dataout[4]_i_8_n_0 ),
        .I1(\dataout[4]_i_9_n_0 ),
        .I2(\index_reg_rep_n_0_[1] ),
        .I3(\dataout[4]_i_10_n_0 ),
        .I4(\index_reg_rep_n_0_[4] ),
        .I5(\dataout[4]_i_11_n_0 ),
        .O(\dataout[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[4]_i_5 
       (.I0(\dataout[4]_i_12_n_0 ),
        .I1(\dataout[4]_i_13_n_0 ),
        .I2(\index_reg_rep_n_0_[1] ),
        .I3(\dataout[4]_i_14_n_0 ),
        .I4(\index_reg_rep_n_0_[4] ),
        .I5(\dataout[4]_i_15_n_0 ),
        .O(\dataout[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[4]_i_6 
       (.I0(\dataout[4]_i_16_n_0 ),
        .I1(\dataout[4]_i_9_n_0 ),
        .I2(\index_reg_rep_n_0_[1] ),
        .I3(\dataout[4]_i_8_n_0 ),
        .I4(\index_reg_rep_n_0_[4] ),
        .I5(\dataout[4]_i_17_n_0 ),
        .O(\dataout[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[4]_i_7 
       (.I0(\dataout[4]_i_18_n_0 ),
        .I1(\dataout[4]_i_19_n_0 ),
        .I2(\index_reg_rep_n_0_[1] ),
        .I3(\dataout[4]_i_12_n_0 ),
        .I4(\index_reg_rep_n_0_[4] ),
        .I5(\dataout[4]_i_20_n_0 ),
        .O(\dataout[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000005E1007F2FB3)) 
    \dataout[4]_i_8 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[8] ),
        .O(\dataout[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000002DF00841EC8)) 
    \dataout[4]_i_9 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[7] ),
        .O(\dataout[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000002A009D77CA)) 
    \dataout[5]_i_10 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[6] ),
        .I2(\index_reg_rep_n_0_[3] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000A0A075F5A6A)) 
    \dataout[5]_i_11 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[8] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000004A00AD5FF4)) 
    \dataout[5]_i_12 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000A0A055F5A4A)) 
    \dataout[5]_i_13 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[8] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000004A00AD5FE4)) 
    \dataout[5]_i_14 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000006A00BD77DA)) 
    \dataout[5]_i_15 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[6] ),
        .I2(\index_reg_rep_n_0_[3] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000004E00AD5FF4)) 
    \dataout[5]_i_16 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000CC03B33FCC)) 
    \dataout[5]_i_17 
       (.I0(\index_reg_rep_n_0_[3] ),
        .I1(\index_reg_rep_n_0_[5] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[5]_i_4 
       (.I0(\dataout[5]_i_8_n_0 ),
        .I1(\dataout[5]_i_9_n_0 ),
        .I2(\index_reg_rep_n_0_[1] ),
        .I3(\dataout[5]_i_10_n_0 ),
        .I4(\index_reg_rep_n_0_[4] ),
        .I5(\dataout[5]_i_11_n_0 ),
        .O(\dataout[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[5]_i_5 
       (.I0(\dataout[5]_i_12_n_0 ),
        .I1(\dataout[5]_i_13_n_0 ),
        .I2(\index_reg_rep_n_0_[1] ),
        .I3(\dataout[5]_i_14_n_0 ),
        .I4(\index_reg_rep_n_0_[4] ),
        .I5(\dataout[5]_i_9_n_0 ),
        .O(\dataout[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[5]_i_6 
       (.I0(\dataout[5]_i_15_n_0 ),
        .I1(\dataout[5]_i_9_n_0 ),
        .I2(\index_reg_rep_n_0_[1] ),
        .I3(\dataout[5]_i_8_n_0 ),
        .I4(\index_reg_rep_n_0_[4] ),
        .I5(\dataout[5]_i_11_n_0 ),
        .O(\dataout[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[5]_i_7 
       (.I0(\dataout[5]_i_16_n_0 ),
        .I1(\dataout[5]_i_17_n_0 ),
        .I2(\index_reg_rep_n_0_[1] ),
        .I3(\dataout[5]_i_12_n_0 ),
        .I4(\index_reg_rep_n_0_[4] ),
        .I5(\dataout[5]_i_9_n_0 ),
        .O(\dataout[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000002A009D77DA)) 
    \dataout[5]_i_8 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[6] ),
        .I2(\index_reg_rep_n_0_[3] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000A0A075F5A4A)) 
    \dataout[5]_i_9 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[8] ),
        .I3(\index_reg_rep_n_0_[6] ),
        .I4(\index_reg_rep_n_0_[7] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dataout[6]_i_1 
       (.I0(\dataout[6]_i_2_n_0 ),
        .I1(\dataout[6]_i_3_n_0 ),
        .I2(\index_reg_rep_n_0_[0] ),
        .I3(\dataout[6]_i_4_n_0 ),
        .I4(\index_reg_rep_n_0_[2] ),
        .I5(\dataout[6]_i_5_n_0 ),
        .O(\dataout[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF007030F8)) 
    \dataout[6]_i_10 
       (.I0(\index_reg_rep_n_0_[3] ),
        .I1(\index_reg_rep_n_0_[5] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[7] ),
        .O(\dataout[6]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \dataout[6]_i_2 
       (.I0(\dataout[6]_i_6_n_0 ),
        .I1(\index_reg_rep_n_0_[1] ),
        .I2(\dataout[6]_i_7_n_0 ),
        .I3(\index_reg_rep_n_0_[4] ),
        .I4(\dataout[6]_i_8_n_0 ),
        .O(\dataout[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dataout[6]_i_3 
       (.I0(\dataout[6]_i_9_n_0 ),
        .I1(\index_reg_rep_n_0_[1] ),
        .I2(\dataout[6]_i_10_n_0 ),
        .I3(\index_reg_rep_n_0_[4] ),
        .I4(\dataout[6]_i_8_n_0 ),
        .O(\dataout[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataout[6]_i_4 
       (.I0(\dataout[6]_i_7_n_0 ),
        .I1(\index_reg_rep_n_0_[4] ),
        .I2(\dataout[6]_i_8_n_0 ),
        .O(\dataout[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataout[6]_i_5 
       (.I0(\dataout[6]_i_10_n_0 ),
        .I1(\index_reg_rep_n_0_[4] ),
        .I2(\dataout[6]_i_8_n_0 ),
        .O(\dataout[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF00F070F0)) 
    \dataout[6]_i_6 
       (.I0(\index_reg_rep_n_0_[3] ),
        .I1(\index_reg_rep_n_0_[5] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[7] ),
        .O(\dataout[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF003038FC)) 
    \dataout[6]_i_7 
       (.I0(\index_reg_rep_n_0_[3] ),
        .I1(\index_reg_rep_n_0_[5] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[7] ),
        .O(\dataout[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000F000F1FFF0)) 
    \dataout[6]_i_8 
       (.I0(\index_reg_rep_n_0_[5] ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[7] ),
        .I4(\index_reg_rep_n_0_[8] ),
        .I5(\index_reg_rep_n_0_[9] ),
        .O(\dataout[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF007038F8)) 
    \dataout[6]_i_9 
       (.I0(\index_reg_rep_n_0_[3] ),
        .I1(\index_reg_rep_n_0_[5] ),
        .I2(\index_reg_rep_n_0_[6] ),
        .I3(\index_reg_rep_n_0_[8] ),
        .I4(\index_reg_rep_n_0_[9] ),
        .I5(\index_reg_rep_n_0_[7] ),
        .O(\dataout[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8DFDFCDC88080)) 
    \dataout[7]_i_1 
       (.I0(\index_reg_rep_n_0_[0] ),
        .I1(\dataout[7]_i_2_n_0 ),
        .I2(\index_reg_rep_n_0_[1] ),
        .I3(\dataout[7]_i_3_n_0 ),
        .I4(\index_reg_rep_n_0_[2] ),
        .I5(\dataout[7]_i_4_n_0 ),
        .O(\dataout[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF7FFF008000)) 
    \dataout[7]_i_2 
       (.I0(\index_reg_rep_n_0_[3] ),
        .I1(\index_reg_rep_n_0_[5] ),
        .I2(\index_reg_rep_n_0_[4] ),
        .I3(\dataout[7]_i_5_n_0 ),
        .I4(\index_reg_rep_n_0_[6] ),
        .I5(\dataout[7]_i_6_n_0 ),
        .O(\dataout[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \dataout[7]_i_3 
       (.I0(\dataout[7]_i_5_n_0 ),
        .I1(\index_reg_rep_n_0_[3] ),
        .I2(\dataout[7]_i_7_n_0 ),
        .I3(\index_reg_rep_n_0_[5] ),
        .I4(\index_reg_rep_n_0_[4] ),
        .I5(\dataout[7]_i_4_n_0 ),
        .O(\dataout[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0037)) 
    \dataout[7]_i_4 
       (.I0(\index_reg_rep_n_0_[6] ),
        .I1(\index_reg_rep_n_0_[8] ),
        .I2(\index_reg_rep_n_0_[7] ),
        .I3(\index_reg_rep_n_0_[9] ),
        .O(\dataout[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \dataout[7]_i_5 
       (.I0(\index_reg_rep_n_0_[9] ),
        .I1(\index_reg_rep_n_0_[8] ),
        .O(\dataout[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \dataout[7]_i_6 
       (.I0(\index_reg_rep_n_0_[8] ),
        .I1(\index_reg_rep_n_0_[7] ),
        .I2(\index_reg_rep_n_0_[9] ),
        .O(\dataout[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0237)) 
    \dataout[7]_i_7 
       (.I0(\index_reg_rep_n_0_[6] ),
        .I1(\index_reg_rep_n_0_[8] ),
        .I2(\index_reg_rep_n_0_[7] ),
        .I3(\index_reg_rep_n_0_[9] ),
        .O(\dataout[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataout_reg[0] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(\dataout[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  MUXF7 \dataout_reg[0]_i_10 
       (.I0(\dataout[0]_i_22_n_0 ),
        .I1(\dataout[0]_i_23_n_0 ),
        .O(\dataout_reg[0]_i_10_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[0]_i_11 
       (.I0(\dataout[0]_i_24_n_0 ),
        .I1(\dataout[0]_i_25_n_0 ),
        .O(\dataout_reg[0]_i_11_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[0]_i_12 
       (.I0(\dataout[0]_i_26_n_0 ),
        .I1(\dataout[0]_i_27_n_0 ),
        .O(\dataout_reg[0]_i_12_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[0]_i_13 
       (.I0(\dataout[0]_i_28_n_0 ),
        .I1(\dataout[0]_i_29_n_0 ),
        .O(\dataout_reg[0]_i_13_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF8 \dataout_reg[0]_i_2 
       (.I0(\dataout_reg[0]_i_6_n_0 ),
        .I1(\dataout_reg[0]_i_7_n_0 ),
        .O(\dataout_reg[0]_i_2_n_0 ),
        .S(\index_reg_rep_n_0_[1] ));
  MUXF8 \dataout_reg[0]_i_3 
       (.I0(\dataout_reg[0]_i_8_n_0 ),
        .I1(\dataout_reg[0]_i_9_n_0 ),
        .O(\dataout_reg[0]_i_3_n_0 ),
        .S(\index_reg_rep_n_0_[1] ));
  MUXF8 \dataout_reg[0]_i_4 
       (.I0(\dataout_reg[0]_i_10_n_0 ),
        .I1(\dataout_reg[0]_i_11_n_0 ),
        .O(\dataout_reg[0]_i_4_n_0 ),
        .S(\index_reg_rep_n_0_[1] ));
  MUXF8 \dataout_reg[0]_i_5 
       (.I0(\dataout_reg[0]_i_12_n_0 ),
        .I1(\dataout_reg[0]_i_13_n_0 ),
        .O(\dataout_reg[0]_i_5_n_0 ),
        .S(\index_reg_rep_n_0_[1] ));
  MUXF7 \dataout_reg[0]_i_6 
       (.I0(\dataout[0]_i_14_n_0 ),
        .I1(\dataout[0]_i_15_n_0 ),
        .O(\dataout_reg[0]_i_6_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[0]_i_7 
       (.I0(\dataout[0]_i_16_n_0 ),
        .I1(\dataout[0]_i_17_n_0 ),
        .O(\dataout_reg[0]_i_7_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[0]_i_8 
       (.I0(\dataout[0]_i_18_n_0 ),
        .I1(\dataout[0]_i_19_n_0 ),
        .O(\dataout_reg[0]_i_8_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[0]_i_9 
       (.I0(\dataout[0]_i_20_n_0 ),
        .I1(\dataout[0]_i_21_n_0 ),
        .O(\dataout_reg[0]_i_9_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataout_reg[0]_lopt_replica 
       (.C(clk_sine),
        .CE(1'b1),
        .D(\dataout[0]_i_1_n_0 ),
        .Q(\dataout_reg[0]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataout_reg[1] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(\dataout[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  MUXF7 \dataout_reg[1]_i_10 
       (.I0(\dataout[1]_i_22_n_0 ),
        .I1(\dataout[1]_i_23_n_0 ),
        .O(\dataout_reg[1]_i_10_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[1]_i_11 
       (.I0(\dataout[1]_i_24_n_0 ),
        .I1(\dataout[1]_i_25_n_0 ),
        .O(\dataout_reg[1]_i_11_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[1]_i_12 
       (.I0(\dataout[1]_i_26_n_0 ),
        .I1(\dataout[1]_i_27_n_0 ),
        .O(\dataout_reg[1]_i_12_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[1]_i_13 
       (.I0(\dataout[1]_i_28_n_0 ),
        .I1(\dataout[1]_i_29_n_0 ),
        .O(\dataout_reg[1]_i_13_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF8 \dataout_reg[1]_i_2 
       (.I0(\dataout_reg[1]_i_6_n_0 ),
        .I1(\dataout_reg[1]_i_7_n_0 ),
        .O(\dataout_reg[1]_i_2_n_0 ),
        .S(\index_reg_rep_n_0_[1] ));
  MUXF8 \dataout_reg[1]_i_3 
       (.I0(\dataout_reg[1]_i_8_n_0 ),
        .I1(\dataout_reg[1]_i_9_n_0 ),
        .O(\dataout_reg[1]_i_3_n_0 ),
        .S(\index_reg_rep_n_0_[1] ));
  MUXF8 \dataout_reg[1]_i_4 
       (.I0(\dataout_reg[1]_i_10_n_0 ),
        .I1(\dataout_reg[1]_i_11_n_0 ),
        .O(\dataout_reg[1]_i_4_n_0 ),
        .S(\index_reg_rep_n_0_[1] ));
  MUXF8 \dataout_reg[1]_i_5 
       (.I0(\dataout_reg[1]_i_12_n_0 ),
        .I1(\dataout_reg[1]_i_13_n_0 ),
        .O(\dataout_reg[1]_i_5_n_0 ),
        .S(\index_reg_rep_n_0_[1] ));
  MUXF7 \dataout_reg[1]_i_6 
       (.I0(\dataout[1]_i_14_n_0 ),
        .I1(\dataout[1]_i_15_n_0 ),
        .O(\dataout_reg[1]_i_6_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[1]_i_7 
       (.I0(\dataout[1]_i_16_n_0 ),
        .I1(\dataout[1]_i_17_n_0 ),
        .O(\dataout_reg[1]_i_7_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[1]_i_8 
       (.I0(\dataout[1]_i_18_n_0 ),
        .I1(\dataout[1]_i_19_n_0 ),
        .O(\dataout_reg[1]_i_8_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[1]_i_9 
       (.I0(\dataout[1]_i_20_n_0 ),
        .I1(\dataout[1]_i_21_n_0 ),
        .O(\dataout_reg[1]_i_9_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataout_reg[1]_lopt_replica 
       (.C(clk_sine),
        .CE(1'b1),
        .D(\dataout[1]_i_1_n_0 ),
        .Q(\dataout_reg[1]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataout_reg[2] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(\dataout[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  MUXF7 \dataout_reg[2]_i_10 
       (.I0(\dataout[2]_i_22_n_0 ),
        .I1(\dataout[2]_i_23_n_0 ),
        .O(\dataout_reg[2]_i_10_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[2]_i_11 
       (.I0(\dataout[2]_i_24_n_0 ),
        .I1(\dataout[2]_i_25_n_0 ),
        .O(\dataout_reg[2]_i_11_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[2]_i_12 
       (.I0(\dataout[2]_i_26_n_0 ),
        .I1(\dataout[2]_i_27_n_0 ),
        .O(\dataout_reg[2]_i_12_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[2]_i_13 
       (.I0(\dataout[2]_i_28_n_0 ),
        .I1(\dataout[2]_i_29_n_0 ),
        .O(\dataout_reg[2]_i_13_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF8 \dataout_reg[2]_i_2 
       (.I0(\dataout_reg[2]_i_6_n_0 ),
        .I1(\dataout_reg[2]_i_7_n_0 ),
        .O(\dataout_reg[2]_i_2_n_0 ),
        .S(\index_reg_rep_n_0_[1] ));
  MUXF8 \dataout_reg[2]_i_3 
       (.I0(\dataout_reg[2]_i_8_n_0 ),
        .I1(\dataout_reg[2]_i_9_n_0 ),
        .O(\dataout_reg[2]_i_3_n_0 ),
        .S(\index_reg_rep_n_0_[1] ));
  MUXF8 \dataout_reg[2]_i_4 
       (.I0(\dataout_reg[2]_i_10_n_0 ),
        .I1(\dataout_reg[2]_i_11_n_0 ),
        .O(\dataout_reg[2]_i_4_n_0 ),
        .S(\index_reg_rep_n_0_[1] ));
  MUXF8 \dataout_reg[2]_i_5 
       (.I0(\dataout_reg[2]_i_12_n_0 ),
        .I1(\dataout_reg[2]_i_13_n_0 ),
        .O(\dataout_reg[2]_i_5_n_0 ),
        .S(\index_reg_rep_n_0_[1] ));
  MUXF7 \dataout_reg[2]_i_6 
       (.I0(\dataout[2]_i_14_n_0 ),
        .I1(\dataout[2]_i_15_n_0 ),
        .O(\dataout_reg[2]_i_6_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[2]_i_7 
       (.I0(\dataout[2]_i_16_n_0 ),
        .I1(\dataout[2]_i_17_n_0 ),
        .O(\dataout_reg[2]_i_7_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[2]_i_8 
       (.I0(\dataout[2]_i_18_n_0 ),
        .I1(\dataout[2]_i_19_n_0 ),
        .O(\dataout_reg[2]_i_8_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  MUXF7 \dataout_reg[2]_i_9 
       (.I0(\dataout[2]_i_20_n_0 ),
        .I1(\dataout[2]_i_21_n_0 ),
        .O(\dataout_reg[2]_i_9_n_0 ),
        .S(\index_reg_rep_n_0_[4] ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataout_reg[2]_lopt_replica 
       (.C(clk_sine),
        .CE(1'b1),
        .D(\dataout[2]_i_1_n_0 ),
        .Q(\dataout_reg[2]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataout_reg[3] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(\dataout_reg[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  MUXF8 \dataout_reg[3]_i_1 
       (.I0(\dataout_reg[3]_i_2_n_0 ),
        .I1(\dataout_reg[3]_i_3_n_0 ),
        .O(\dataout_reg[3]_i_1_n_0 ),
        .S(\index_reg_rep_n_0_[0] ));
  MUXF7 \dataout_reg[3]_i_2 
       (.I0(\dataout[3]_i_4_n_0 ),
        .I1(\dataout[3]_i_5_n_0 ),
        .O(\dataout_reg[3]_i_2_n_0 ),
        .S(\index_reg_rep_n_0_[2] ));
  MUXF7 \dataout_reg[3]_i_3 
       (.I0(\dataout[3]_i_6_n_0 ),
        .I1(\dataout[3]_i_7_n_0 ),
        .O(\dataout_reg[3]_i_3_n_0 ),
        .S(\index_reg_rep_n_0_[2] ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataout_reg[3]_lopt_replica 
       (.C(clk_sine),
        .CE(1'b1),
        .D(\dataout_reg[3]_i_1_n_0 ),
        .Q(\dataout_reg[3]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataout_reg[4] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(\dataout_reg[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  MUXF8 \dataout_reg[4]_i_1 
       (.I0(\dataout_reg[4]_i_2_n_0 ),
        .I1(\dataout_reg[4]_i_3_n_0 ),
        .O(\dataout_reg[4]_i_1_n_0 ),
        .S(\index_reg_rep_n_0_[0] ));
  MUXF7 \dataout_reg[4]_i_2 
       (.I0(\dataout[4]_i_4_n_0 ),
        .I1(\dataout[4]_i_5_n_0 ),
        .O(\dataout_reg[4]_i_2_n_0 ),
        .S(\index_reg_rep_n_0_[2] ));
  MUXF7 \dataout_reg[4]_i_3 
       (.I0(\dataout[4]_i_6_n_0 ),
        .I1(\dataout[4]_i_7_n_0 ),
        .O(\dataout_reg[4]_i_3_n_0 ),
        .S(\index_reg_rep_n_0_[2] ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataout_reg[4]_lopt_replica 
       (.C(clk_sine),
        .CE(1'b1),
        .D(\dataout_reg[4]_i_1_n_0 ),
        .Q(\dataout_reg[4]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataout_reg[5] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(\dataout_reg[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  MUXF8 \dataout_reg[5]_i_1 
       (.I0(\dataout_reg[5]_i_2_n_0 ),
        .I1(\dataout_reg[5]_i_3_n_0 ),
        .O(\dataout_reg[5]_i_1_n_0 ),
        .S(\index_reg_rep_n_0_[0] ));
  MUXF7 \dataout_reg[5]_i_2 
       (.I0(\dataout[5]_i_4_n_0 ),
        .I1(\dataout[5]_i_5_n_0 ),
        .O(\dataout_reg[5]_i_2_n_0 ),
        .S(\index_reg_rep_n_0_[2] ));
  MUXF7 \dataout_reg[5]_i_3 
       (.I0(\dataout[5]_i_6_n_0 ),
        .I1(\dataout[5]_i_7_n_0 ),
        .O(\dataout_reg[5]_i_3_n_0 ),
        .S(\index_reg_rep_n_0_[2] ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataout_reg[5]_lopt_replica 
       (.C(clk_sine),
        .CE(1'b1),
        .D(\dataout_reg[5]_i_1_n_0 ),
        .Q(\dataout_reg[5]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataout_reg[6] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(\dataout[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataout_reg[6]_lopt_replica 
       (.C(clk_sine),
        .CE(1'b1),
        .D(\dataout[6]_i_1_n_0 ),
        .Q(\dataout_reg[6]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataout_reg[7] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(\dataout[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataout_reg[7]_lopt_replica 
       (.C(clk_sine),
        .CE(1'b1),
        .D(\dataout[7]_i_1_n_0 ),
        .Q(\dataout_reg[7]_lopt_replica_1 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \index[0]_i_1 
       (.I0(\index[0]_i_2_n_0 ),
        .I1(index[0]),
        .O(index_next));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \index[0]_i_2 
       (.I0(index[3]),
        .I1(index[7]),
        .I2(index[9]),
        .I3(index[8]),
        .I4(index[1]),
        .I5(\index[9]_i_3_n_0 ),
        .O(\index[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_i_1 
       (.I0(index[0]),
        .I1(index[1]),
        .O(data0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[2]_i_1 
       (.I0(index[1]),
        .I1(index[0]),
        .I2(index[2]),
        .O(data0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \index[3]_i_1 
       (.I0(index[2]),
        .I1(index[0]),
        .I2(index[1]),
        .I3(index[3]),
        .O(data0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
  LUT2 #(
    .INIT(4'h1)) 
    \index[9]_i_1 
       (.I0(\index[0]_i_2_n_0 ),
        .I1(index[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \index[9]_i_3 
       (.I0(index[5]),
        .I1(index[2]),
        .I2(index[4]),
        .I3(index[6]),
        .O(\index[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
       (.C(clk_sine),
        .CE(1'b1),
        .D(index_next),
        .Q(index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[1] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[1]),
        .Q(index[1]),
        .R(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[2] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[2]),
        .Q(index[2]),
        .R(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[3] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[3]),
        .Q(index[3]),
        .R(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[4] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[4]),
        .Q(index[4]),
        .R(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[5] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[5]),
        .Q(index[5]),
        .R(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[6] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[6]),
        .Q(index[6]),
        .R(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[7] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[7]),
        .Q(index[7]),
        .R(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[8] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[8]),
        .Q(index[8]),
        .R(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[9] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[9]),
        .Q(index[9]),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[0] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(index_next),
        .Q(\index_reg_rep_n_0_[0] ),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[1] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[1]),
        .Q(\index_reg_rep_n_0_[1] ),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[2] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[2]),
        .Q(\index_reg_rep_n_0_[2] ),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[3] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[3]),
        .Q(\index_reg_rep_n_0_[3] ),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[4] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[4]),
        .Q(\index_reg_rep_n_0_[4] ),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[5] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[5]),
        .Q(\index_reg_rep_n_0_[5] ),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[6] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[6]),
        .Q(\index_reg_rep_n_0_[6] ),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[7] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[7]),
        .Q(\index_reg_rep_n_0_[7] ),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[8] 
       (.C(clk_sine),
        .CE(1'b1),
        .D(data0[8]),
        .Q(\index_reg_rep_n_0_[8] ),
        .R(\index[9]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \index_reg_rep[9] 
       (.C(clk_sine),
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
