// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Jul  6 18:59:44 2022
// Host        : Nightingale running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/Dev/FPGAs/baby_step/baby_step.sim/sim_1/impl/func/xsim/testbench_func_impl.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module controller
   (select,
    \FSM_sequential_current_state_reg[1]_0 ,
    Q,
    \FSM_sequential_current_state_reg[2]_0 ,
    E,
    \FSM_sequential_current_state_reg[2]_1 ,
    temp_quotient0_in,
    \FSM_sequential_current_state_reg[2]_2 ,
    \FSM_sequential_current_state_reg[1]_1 ,
    SR,
    temp_quotient,
    \FSM_sequential_current_state_reg[2]_i_13 ,
    \FSM_sequential_current_state_reg[2]_i_13_0 ,
    \FSM_sequential_current_state_reg[2]_i_13_1 ,
    \temp_quotient_reg[0] ,
    shift1,
    write_IBUF,
    clear_IBUF,
    ready,
    \FSM_sequential_current_state[2]_i_6 ,
    \FSM_sequential_current_state[2]_i_6_0 ,
    clk_IBUF_BUFG,
    D);
  output select;
  output \FSM_sequential_current_state_reg[1]_0 ;
  output [2:0]Q;
  output \FSM_sequential_current_state_reg[2]_0 ;
  output [0:0]E;
  output \FSM_sequential_current_state_reg[2]_1 ;
  output [0:0]temp_quotient0_in;
  output \FSM_sequential_current_state_reg[2]_2 ;
  output [0:0]\FSM_sequential_current_state_reg[1]_1 ;
  output [0:0]SR;
  output temp_quotient;
  output \FSM_sequential_current_state_reg[2]_i_13 ;
  output \FSM_sequential_current_state_reg[2]_i_13_0 ;
  output \FSM_sequential_current_state_reg[2]_i_13_1 ;
  input \temp_quotient_reg[0] ;
  input shift1;
  input write_IBUF;
  input clear_IBUF;
  input [2:0]ready;
  input \FSM_sequential_current_state[2]_i_6 ;
  input \FSM_sequential_current_state[2]_i_6_0 ;
  input clk_IBUF_BUFG;
  input [1:0]D;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state[2]_i_1_n_0 ;
  wire \FSM_sequential_current_state[2]_i_3_n_0 ;
  wire \FSM_sequential_current_state[2]_i_6 ;
  wire \FSM_sequential_current_state[2]_i_6_0 ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[1]_1 ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_current_state_reg[2]_1 ;
  wire \FSM_sequential_current_state_reg[2]_2 ;
  wire \FSM_sequential_current_state_reg[2]_i_13 ;
  wire \FSM_sequential_current_state_reg[2]_i_13_0 ;
  wire \FSM_sequential_current_state_reg[2]_i_13_1 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire clear_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:2]next_state;
  wire [2:0]ready;
  wire select;
  wire select_reg_i_1_n_0;
  wire select_reg_i_2_n_0;
  wire shift1;
  wire temp_quotient;
  wire [0:0]temp_quotient0_in;
  wire \temp_quotient_reg[0] ;
  wire write_IBUF;

  LUT3 #(
    .INIT(8'h1F)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\FSM_sequential_current_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_current_state[2]_i_10 
       (.I0(\FSM_sequential_current_state_reg[2]_0 ),
        .I1(\FSM_sequential_current_state[2]_i_6 ),
        .I2(\FSM_sequential_current_state[2]_i_6_0 ),
        .O(\FSM_sequential_current_state_reg[2]_i_13 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_current_state[2]_i_12 
       (.I0(\FSM_sequential_current_state_reg[2]_0 ),
        .I1(\FSM_sequential_current_state[2]_i_6 ),
        .I2(\FSM_sequential_current_state[2]_i_6_0 ),
        .O(\FSM_sequential_current_state_reg[2]_i_13_1 ));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(ready[1]),
        .I3(ready[0]),
        .I4(ready[2]),
        .I5(Q[1]),
        .O(next_state));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_current_state[2]_i_3 
       (.I0(clear_IBUF),
        .O(\FSM_sequential_current_state[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_current_state[2]_i_8 
       (.I0(\FSM_sequential_current_state_reg[2]_0 ),
        .I1(\FSM_sequential_current_state[2]_i_6 ),
        .I2(\FSM_sequential_current_state[2]_i_6_0 ),
        .O(\FSM_sequential_current_state_reg[2]_i_13_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000,SHIFT:010,SUB:011,TOTAL:100,REG:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .D(D[0]),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "IDLE:000,SHIFT:010,SUB:011,TOTAL:100,REG:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .D(D[1]),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "IDLE:000,SHIFT:010,SUB:011,TOTAL:100,REG:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .D(next_state),
        .Q(Q[2]));
  LUT3 #(
    .INIT(8'h02)) 
    \out_dividend_reg[7]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(E));
  LUT4 #(
    .INIT(16'h00FD)) 
    \out_total_quotient[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(clear_IBUF),
        .O(SR));
  LUT3 #(
    .INIT(8'hFB)) 
    \ready_reg[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\FSM_sequential_current_state_reg[2]_2 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \ref_divisor_reg[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(select),
        .O(\FSM_sequential_current_state_reg[1]_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    select_reg
       (.CLR(1'b0),
        .D(select_reg_i_1_n_0),
        .G(select_reg_i_2_n_0),
        .GE(1'b1),
        .Q(select));
  LUT2 #(
    .INIT(4'h2)) 
    select_reg_i_1
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(select_reg_i_1_n_0));
  LUT5 #(
    .INIT(32'h00101110)) 
    select_reg_i_2
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(write_IBUF),
        .I3(Q[1]),
        .I4(select),
        .O(select_reg_i_2_n_0));
  LUT5 #(
    .INIT(32'h0100FDFF)) 
    \shift[2]_i_3 
       (.I0(shift1),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(clear_IBUF),
        .O(\FSM_sequential_current_state_reg[2]_1 ));
  LUT3 #(
    .INIT(8'h02)) 
    \shifted_divisor[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(temp_quotient));
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \temp_quotient[0]_i_1 
       (.I0(\temp_quotient_reg[0] ),
        .I1(shift1),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\FSM_sequential_current_state_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h5551555D)) 
    \temp_quotient[7]_i_1 
       (.I0(clear_IBUF),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(shift1),
        .O(temp_quotient0_in));
  LUT3 #(
    .INIT(8'h40)) 
    \total_quotient_reg[7]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\FSM_sequential_current_state_reg[2]_0 ));
endmodule

module register
   (\FSM_sequential_current_state_reg[2] ,
    \in_divisor[3] ,
    shift1,
    \divisor_len_reg[0]_0 ,
    Q,
    \FSM_sequential_current_state_reg[0] ,
    shift0,
    D,
    \shift_reg[1] ,
    \shift_reg[1]_0 ,
    S,
    \FSM_sequential_current_state_reg[0]_0 ,
    DI,
    \shift_reg[0] ,
    \FSM_sequential_current_state[2]_i_9 ,
    E,
    in_divisor_IBUF,
    \shift_reg[1]_1 ,
    shift,
    shifted_divisor,
    \remainder_reg[7]_i_2 );
  output \FSM_sequential_current_state_reg[2] ;
  output [1:0]\in_divisor[3] ;
  output shift1;
  output \divisor_len_reg[0]_0 ;
  output [1:0]Q;
  output [1:0]\FSM_sequential_current_state_reg[0] ;
  output [0:0]shift0;
  output [1:0]D;
  output \shift_reg[1] ;
  output \shift_reg[1]_0 ;
  output [3:0]S;
  output [7:0]\FSM_sequential_current_state_reg[0]_0 ;
  output [3:0]DI;
  output \shift_reg[0] ;
  input \FSM_sequential_current_state[2]_i_9 ;
  input [0:0]E;
  input [3:0]in_divisor_IBUF;
  input [0:0]\shift_reg[1]_1 ;
  input [2:0]shift;
  input [7:0]shifted_divisor;
  input [7:0]\remainder_reg[7]_i_2 ;

  wire [1:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire \FSM_sequential_current_state[2]_i_9 ;
  wire [1:0]\FSM_sequential_current_state_reg[0] ;
  wire [7:0]\FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire [1:0]Q;
  wire [3:0]S;
  wire [3:2]dividend_len;
  wire \dividend_len_reg[0]_i_1_n_0 ;
  wire \dividend_len_reg[0]_i_2_n_0 ;
  wire \dividend_len_reg[1]_i_1_n_0 ;
  wire \dividend_len_reg[1]_i_2_n_0 ;
  wire \dividend_len_reg[2]_i_1_n_0 ;
  wire \divisor_len_reg[0]_0 ;
  wire \divisor_len_reg[0]_i_1_n_0 ;
  wire \divisor_len_reg[1]_i_1_n_0 ;
  wire [1:0]\in_divisor[3] ;
  wire [3:0]in_divisor_IBUF;
  wire [2:1]ref_divisor;
  wire [7:0]\remainder_reg[7]_i_2 ;
  wire [2:0]shift;
  wire [0:0]shift0;
  wire shift1;
  wire \shift_reg[0] ;
  wire \shift_reg[1] ;
  wire \shift_reg[1]_0 ;
  wire [0:0]\shift_reg[1]_1 ;
  wire [7:0]shifted_divisor;
  wire \shifted_divisor[4]_i_2_n_0 ;
  wire \shifted_divisor[5]_i_2_n_0 ;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dividend_len_reg[0] 
       (.CLR(1'b0),
        .D(\dividend_len_reg[0]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[0] [0]));
  LUT5 #(
    .INIT(32'h0000FFF2)) 
    \dividend_len_reg[0]_i_1 
       (.I0(\FSM_sequential_current_state_reg[0]_0 [4]),
        .I1(\FSM_sequential_current_state_reg[0]_0 [5]),
        .I2(\dividend_len_reg[0]_i_2_n_0 ),
        .I3(\FSM_sequential_current_state_reg[0]_0 [6]),
        .I4(\FSM_sequential_current_state_reg[0]_0 [7]),
        .O(\dividend_len_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000BA)) 
    \dividend_len_reg[0]_i_2 
       (.I0(\FSM_sequential_current_state_reg[0]_0 [2]),
        .I1(\FSM_sequential_current_state_reg[0]_0 [1]),
        .I2(\FSM_sequential_current_state_reg[0]_0 [0]),
        .I3(\FSM_sequential_current_state_reg[0]_0 [5]),
        .I4(\FSM_sequential_current_state_reg[0]_0 [3]),
        .I5(\FSM_sequential_current_state_reg[0]_0 [4]),
        .O(\dividend_len_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dividend_len_reg[1] 
       (.CLR(1'b0),
        .D(\dividend_len_reg[1]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[0] [1]));
  LUT6 #(
    .INIT(64'h00000000FFFFDDD8)) 
    \dividend_len_reg[1]_i_1 
       (.I0(\dividend_len_reg[1]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state_reg[0]_0 [5]),
        .I2(\FSM_sequential_current_state_reg[0]_0 [1]),
        .I3(\FSM_sequential_current_state_reg[0]_0 [2]),
        .I4(\FSM_sequential_current_state_reg[0]_0 [6]),
        .I5(\FSM_sequential_current_state_reg[0]_0 [7]),
        .O(\dividend_len_reg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \dividend_len_reg[1]_i_2 
       (.I0(\FSM_sequential_current_state_reg[0]_0 [4]),
        .I1(\FSM_sequential_current_state_reg[0]_0 [3]),
        .I2(\FSM_sequential_current_state_reg[0]_0 [5]),
        .O(\dividend_len_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dividend_len_reg[2] 
       (.CLR(1'b0),
        .D(\dividend_len_reg[2]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(dividend_len[2]));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \dividend_len_reg[2]_i_1 
       (.I0(\FSM_sequential_current_state_reg[0]_0 [5]),
        .I1(\FSM_sequential_current_state_reg[0]_0 [3]),
        .I2(\FSM_sequential_current_state_reg[0]_0 [4]),
        .I3(\FSM_sequential_current_state_reg[0]_0 [6]),
        .I4(\FSM_sequential_current_state_reg[0]_0 [7]),
        .O(\dividend_len_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dividend_len_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_sequential_current_state_reg[0]_0 [7]),
        .G(E),
        .GE(1'b1),
        .Q(dividend_len[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \divisor_len_reg[0] 
       (.CLR(1'b0),
        .D(\divisor_len_reg[0]_i_1_n_0 ),
        .G(\shift_reg[1]_1 ),
        .GE(1'b1),
        .Q(Q[0]));
  LUT4 #(
    .INIT(16'h00F2)) 
    \divisor_len_reg[0]_i_1 
       (.I0(in_divisor_IBUF[0]),
        .I1(in_divisor_IBUF[1]),
        .I2(in_divisor_IBUF[2]),
        .I3(in_divisor_IBUF[3]),
        .O(\divisor_len_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \divisor_len_reg[1] 
       (.CLR(1'b0),
        .D(\divisor_len_reg[1]_i_1_n_0 ),
        .G(\shift_reg[1]_1 ),
        .GE(1'b1),
        .Q(Q[1]));
  LUT3 #(
    .INIT(8'h0E)) 
    \divisor_len_reg[1]_i_1 
       (.I0(in_divisor_IBUF[1]),
        .I1(in_divisor_IBUF[2]),
        .I2(in_divisor_IBUF[3]),
        .O(\divisor_len_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_dividend_reg[0] 
       (.CLR(1'b0),
        .D(\remainder_reg[7]_i_2 [0]),
        .G(E),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[0]_0 [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_dividend_reg[1] 
       (.CLR(1'b0),
        .D(\remainder_reg[7]_i_2 [1]),
        .G(E),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[0]_0 [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_dividend_reg[2] 
       (.CLR(1'b0),
        .D(\remainder_reg[7]_i_2 [2]),
        .G(E),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[0]_0 [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_dividend_reg[3] 
       (.CLR(1'b0),
        .D(\remainder_reg[7]_i_2 [3]),
        .G(E),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[0]_0 [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_dividend_reg[4] 
       (.CLR(1'b0),
        .D(\remainder_reg[7]_i_2 [4]),
        .G(E),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[0]_0 [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_dividend_reg[5] 
       (.CLR(1'b0),
        .D(\remainder_reg[7]_i_2 [5]),
        .G(E),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[0]_0 [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_dividend_reg[6] 
       (.CLR(1'b0),
        .D(\remainder_reg[7]_i_2 [6]),
        .G(E),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[0]_0 [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \out_dividend_reg[7] 
       (.CLR(1'b0),
        .D(\remainder_reg[7]_i_2 [7]),
        .G(E),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[0]_0 [7]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b1)) 
    \ready_reg[0] 
       (.D(1'b0),
        .G(\FSM_sequential_current_state[2]_i_9 ),
        .GE(1'b1),
        .PRE(E),
        .Q(\FSM_sequential_current_state_reg[2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ref_divisor_reg[0] 
       (.CLR(1'b0),
        .D(in_divisor_IBUF[0]),
        .G(\shift_reg[1]_1 ),
        .GE(1'b1),
        .Q(\in_divisor[3] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ref_divisor_reg[1] 
       (.CLR(1'b0),
        .D(in_divisor_IBUF[1]),
        .G(\shift_reg[1]_1 ),
        .GE(1'b1),
        .Q(ref_divisor[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ref_divisor_reg[2] 
       (.CLR(1'b0),
        .D(in_divisor_IBUF[2]),
        .G(\shift_reg[1]_1 ),
        .GE(1'b1),
        .Q(ref_divisor[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ref_divisor_reg[3] 
       (.CLR(1'b0),
        .D(in_divisor_IBUF[3]),
        .G(\shift_reg[1]_1 ),
        .GE(1'b1),
        .Q(\in_divisor[3] [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \shift[1]_i_2 
       (.I0(\FSM_sequential_current_state_reg[0] [0]),
        .I1(Q[0]),
        .O(\divisor_len_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hD0FD2F022F02D0FD)) 
    \shift[2]_i_2 
       (.I0(\FSM_sequential_current_state_reg[0] [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\FSM_sequential_current_state_reg[0] [1]),
        .I4(\in_divisor[3] [1]),
        .I5(dividend_len[2]),
        .O(shift0));
  LUT4 #(
    .INIT(16'h00E2)) 
    \shifted_divisor[1]_i_1 
       (.I0(ref_divisor[1]),
        .I1(shift[0]),
        .I2(\in_divisor[3] [0]),
        .I3(shift[1]),
        .O(\shift_reg[0] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \shifted_divisor[2]_i_1 
       (.I0(\in_divisor[3] [0]),
        .I1(shift[1]),
        .I2(ref_divisor[1]),
        .I3(shift[0]),
        .I4(ref_divisor[2]),
        .O(\shift_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shifted_divisor[3]_i_2 
       (.I0(\in_divisor[3] [0]),
        .I1(ref_divisor[1]),
        .I2(shift[1]),
        .I3(ref_divisor[2]),
        .I4(shift[0]),
        .I5(\in_divisor[3] [1]),
        .O(\shift_reg[1] ));
  LUT6 #(
    .INIT(64'h3033308830003088)) 
    \shifted_divisor[4]_i_1 
       (.I0(\in_divisor[3] [0]),
        .I1(shift[2]),
        .I2(\shifted_divisor[4]_i_2_n_0 ),
        .I3(shift[1]),
        .I4(shift[0]),
        .I5(\in_divisor[3] [1]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \shifted_divisor[4]_i_2 
       (.I0(ref_divisor[1]),
        .I1(shift[0]),
        .I2(ref_divisor[2]),
        .O(\shifted_divisor[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FFE2000000E200)) 
    \shifted_divisor[5]_i_1 
       (.I0(ref_divisor[1]),
        .I1(shift[0]),
        .I2(\in_divisor[3] [0]),
        .I3(shift[2]),
        .I4(shift[1]),
        .I5(\shifted_divisor[5]_i_2_n_0 ),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \shifted_divisor[5]_i_2 
       (.I0(ref_divisor[2]),
        .I1(shift[0]),
        .I2(\in_divisor[3] [1]),
        .O(\shifted_divisor[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB2FF00B2)) 
    \temp_quotient[7]_i_3 
       (.I0(\divisor_len_reg[0]_0 ),
        .I1(Q[1]),
        .I2(\FSM_sequential_current_state_reg[0] [1]),
        .I3(\in_divisor[3] [1]),
        .I4(dividend_len[2]),
        .I5(dividend_len[3]),
        .O(shift1));
  LUT4 #(
    .INIT(16'h2F02)) 
    total_quotient1_carry_i_1
       (.I0(\FSM_sequential_current_state_reg[0]_0 [6]),
        .I1(shifted_divisor[6]),
        .I2(shifted_divisor[7]),
        .I3(\FSM_sequential_current_state_reg[0]_0 [7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    total_quotient1_carry_i_2
       (.I0(\FSM_sequential_current_state_reg[0]_0 [4]),
        .I1(shifted_divisor[4]),
        .I2(shifted_divisor[5]),
        .I3(\FSM_sequential_current_state_reg[0]_0 [5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    total_quotient1_carry_i_3
       (.I0(\FSM_sequential_current_state_reg[0]_0 [2]),
        .I1(shifted_divisor[2]),
        .I2(shifted_divisor[3]),
        .I3(\FSM_sequential_current_state_reg[0]_0 [3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    total_quotient1_carry_i_4
       (.I0(\FSM_sequential_current_state_reg[0]_0 [0]),
        .I1(shifted_divisor[0]),
        .I2(shifted_divisor[1]),
        .I3(\FSM_sequential_current_state_reg[0]_0 [1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    total_quotient1_carry_i_5
       (.I0(\FSM_sequential_current_state_reg[0]_0 [6]),
        .I1(shifted_divisor[6]),
        .I2(\FSM_sequential_current_state_reg[0]_0 [7]),
        .I3(shifted_divisor[7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    total_quotient1_carry_i_6
       (.I0(\FSM_sequential_current_state_reg[0]_0 [4]),
        .I1(shifted_divisor[4]),
        .I2(\FSM_sequential_current_state_reg[0]_0 [5]),
        .I3(shifted_divisor[5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    total_quotient1_carry_i_7
       (.I0(\FSM_sequential_current_state_reg[0]_0 [2]),
        .I1(shifted_divisor[2]),
        .I2(\FSM_sequential_current_state_reg[0]_0 [3]),
        .I3(shifted_divisor[3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    total_quotient1_carry_i_8
       (.I0(\FSM_sequential_current_state_reg[0]_0 [0]),
        .I1(shifted_divisor[0]),
        .I2(\FSM_sequential_current_state_reg[0]_0 [1]),
        .I3(shifted_divisor[1]),
        .O(S[0]));
endmodule

module shifter
   (\temp_quotient_reg[6]_0 ,
    \ready_tristate_oe_reg[1]_0 ,
    shift,
    D,
    \shift_reg[1]_0 ,
    shifted_divisor,
    temp_quotient0_in,
    temp_quotient,
    clk_IBUF_BUFG,
    Q,
    S,
    \out_total_quotient_reg[7]_0 ,
    \temp_quotient_reg[0]_0 ,
    \shifted_divisor_reg[3]_0 ,
    \shifted_divisor_reg[2]_0 ,
    \shifted_divisor_reg[6]_0 ,
    O,
    SR,
    \shift_reg[2]_0 ,
    shift0,
    \shift_reg[2]_1 ,
    \shift_reg[1]_1 ,
    \shift_reg[1]_2 ,
    \shift_reg[1]_3 ,
    \shifted_divisor_reg[5]_0 ,
    \shifted_divisor_reg[1]_0 );
  output [6:0]\temp_quotient_reg[6]_0 ;
  output \ready_tristate_oe_reg[1]_0 ;
  output [2:0]shift;
  output [7:0]D;
  output \shift_reg[1]_0 ;
  output [7:0]shifted_divisor;
  input [0:0]temp_quotient0_in;
  input temp_quotient;
  input clk_IBUF_BUFG;
  input [7:0]Q;
  input [3:0]S;
  input [2:0]\out_total_quotient_reg[7]_0 ;
  input \temp_quotient_reg[0]_0 ;
  input \shifted_divisor_reg[3]_0 ;
  input \shifted_divisor_reg[2]_0 ;
  input [1:0]\shifted_divisor_reg[6]_0 ;
  input [0:0]O;
  input [0:0]SR;
  input [2:0]\shift_reg[2]_0 ;
  input [0:0]shift0;
  input \shift_reg[2]_1 ;
  input [1:0]\shift_reg[1]_1 ;
  input [1:0]\shift_reg[1]_2 ;
  input \shift_reg[1]_3 ;
  input [1:0]\shifted_divisor_reg[5]_0 ;
  input \shifted_divisor_reg[1]_0 ;

  wire [7:0]D;
  wire [0:0]O;
  wire [7:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire [7:0]out_total_quotient;
  wire out_total_quotient0_carry__0_i_1_n_0;
  wire out_total_quotient0_carry_n_0;
  wire [2:0]\out_total_quotient_reg[7]_0 ;
  wire \out_total_quotient_reg_n_0_[0] ;
  wire \out_total_quotient_reg_n_0_[1] ;
  wire \out_total_quotient_reg_n_0_[2] ;
  wire \out_total_quotient_reg_n_0_[3] ;
  wire \out_total_quotient_reg_n_0_[4] ;
  wire \out_total_quotient_reg_n_0_[5] ;
  wire \out_total_quotient_reg_n_0_[6] ;
  wire \out_total_quotient_reg_n_0_[7] ;
  wire [3:1]p_2_in;
  wire \ready_tristate_oe_reg[1]_0 ;
  wire [2:0]shift;
  wire [0:0]shift0;
  wire \shift[0]_i_1_n_0 ;
  wire \shift[1]_i_1_n_0 ;
  wire \shift[2]_i_1_n_0 ;
  wire \shift_reg[1]_0 ;
  wire [1:0]\shift_reg[1]_1 ;
  wire [1:0]\shift_reg[1]_2 ;
  wire \shift_reg[1]_3 ;
  wire [2:0]\shift_reg[2]_0 ;
  wire \shift_reg[2]_1 ;
  wire [7:0]shifted_divisor;
  wire \shifted_divisor[0]_i_1_n_0 ;
  wire \shifted_divisor[3]_i_1_n_0 ;
  wire \shifted_divisor[6]_i_1_n_0 ;
  wire \shifted_divisor[7]_i_2_n_0 ;
  wire \shifted_divisor_reg[1]_0 ;
  wire \shifted_divisor_reg[2]_0 ;
  wire \shifted_divisor_reg[3]_0 ;
  wire [1:0]\shifted_divisor_reg[5]_0 ;
  wire [1:0]\shifted_divisor_reg[6]_0 ;
  wire temp_quotient;
  wire [0:0]temp_quotient0_in;
  wire \temp_quotient[4]_i_1_n_0 ;
  wire \temp_quotient[5]_i_1_n_0 ;
  wire \temp_quotient[6]_i_1_n_0 ;
  wire \temp_quotient[7]_i_2_n_0 ;
  wire [7:7]temp_quotient__0;
  wire \temp_quotient_reg[0]_0 ;
  wire [6:0]\temp_quotient_reg[6]_0 ;
  wire \total_quotient_reg[7]_i_3_n_0 ;
  wire [2:0]NLW_out_total_quotient0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_out_total_quotient0_carry__0_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 out_total_quotient0_carry
       (.CI(1'b0),
        .CO({out_total_quotient0_carry_n_0,NLW_out_total_quotient0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(out_total_quotient[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 out_total_quotient0_carry__0
       (.CI(out_total_quotient0_carry_n_0),
        .CO(NLW_out_total_quotient0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(out_total_quotient[7:4]),
        .S({out_total_quotient0_carry__0_i_1_n_0,\out_total_quotient_reg[7]_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    out_total_quotient0_carry__0_i_1
       (.I0(temp_quotient__0),
        .I1(Q[7]),
        .O(out_total_quotient0_carry__0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \out_total_quotient_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(out_total_quotient[0]),
        .Q(\out_total_quotient_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_total_quotient_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(out_total_quotient[1]),
        .Q(\out_total_quotient_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_total_quotient_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(out_total_quotient[2]),
        .Q(\out_total_quotient_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_total_quotient_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(out_total_quotient[3]),
        .Q(\out_total_quotient_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_total_quotient_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(out_total_quotient[4]),
        .Q(\out_total_quotient_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_total_quotient_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(out_total_quotient[5]),
        .Q(\out_total_quotient_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_total_quotient_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(out_total_quotient[6]),
        .Q(\out_total_quotient_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_total_quotient_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(out_total_quotient[7]),
        .Q(\out_total_quotient_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ready_tristate_oe_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_quotient),
        .Q(\ready_tristate_oe_reg[1]_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000E22E)) 
    \shift[0]_i_1 
       (.I0(shift[0]),
        .I1(temp_quotient),
        .I2(\shift_reg[1]_2 [0]),
        .I3(\shift_reg[1]_1 [0]),
        .I4(\shift_reg[2]_1 ),
        .O(\shift[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002EE2E22E)) 
    \shift[1]_i_1 
       (.I0(shift[1]),
        .I1(temp_quotient),
        .I2(\shift_reg[1]_1 [1]),
        .I3(\shift_reg[1]_2 [1]),
        .I4(\shift_reg[1]_3 ),
        .I5(\shift_reg[2]_1 ),
        .O(\shift[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000ABAAA8AA)) 
    \shift[2]_i_1 
       (.I0(shift[2]),
        .I1(\shift_reg[2]_0 [0]),
        .I2(\shift_reg[2]_0 [2]),
        .I3(\shift_reg[2]_0 [1]),
        .I4(shift0),
        .I5(\shift_reg[2]_1 ),
        .O(\shift[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\shift[0]_i_1_n_0 ),
        .Q(shift[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\shift[1]_i_1_n_0 ),
        .Q(shift[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\shift[2]_i_1_n_0 ),
        .Q(shift[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \shifted_divisor[0]_i_1 
       (.I0(shift[0]),
        .I1(\shifted_divisor_reg[6]_0 [0]),
        .I2(shift[1]),
        .O(\shifted_divisor[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \shifted_divisor[3]_i_1 
       (.I0(shift[2]),
        .I1(\shift_reg[2]_0 [0]),
        .I2(\shift_reg[2]_0 [2]),
        .I3(\shift_reg[2]_0 [1]),
        .O(\shifted_divisor[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \shifted_divisor[6]_i_1 
       (.I0(\shifted_divisor_reg[2]_0 ),
        .I1(shift[2]),
        .I2(shift[1]),
        .I3(\shifted_divisor_reg[6]_0 [1]),
        .I4(shift[0]),
        .O(\shifted_divisor[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \shifted_divisor[7]_i_2 
       (.I0(shift[2]),
        .I1(\shifted_divisor_reg[3]_0 ),
        .O(\shifted_divisor[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shifted_divisor_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(\shifted_divisor[0]_i_1_n_0 ),
        .Q(shifted_divisor[0]),
        .R(\shifted_divisor[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shifted_divisor_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(\shifted_divisor_reg[1]_0 ),
        .Q(shifted_divisor[1]),
        .R(\shifted_divisor[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shifted_divisor_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(\shifted_divisor_reg[2]_0 ),
        .Q(shifted_divisor[2]),
        .R(\shifted_divisor[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shifted_divisor_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(\shifted_divisor_reg[3]_0 ),
        .Q(shifted_divisor[3]),
        .R(\shifted_divisor[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shifted_divisor_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(\shifted_divisor_reg[5]_0 [0]),
        .Q(shifted_divisor[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shifted_divisor_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(\shifted_divisor_reg[5]_0 [1]),
        .Q(shifted_divisor[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shifted_divisor_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(\shifted_divisor[6]_i_1_n_0 ),
        .Q(shifted_divisor[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shifted_divisor_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(\shifted_divisor[7]_i_2_n_0 ),
        .Q(shifted_divisor[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000001FF00000100)) 
    \temp_quotient[0]_i_2 
       (.I0(shift[1]),
        .I1(shift[0]),
        .I2(shift[2]),
        .I3(temp_quotient),
        .I4(SR),
        .I5(\temp_quotient_reg[6]_0 [0]),
        .O(\shift_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \temp_quotient[1]_i_1 
       (.I0(shift[2]),
        .I1(shift[0]),
        .I2(shift[1]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \temp_quotient[2]_i_1 
       (.I0(shift[2]),
        .I1(shift[1]),
        .I2(shift[0]),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \temp_quotient[3]_i_1 
       (.I0(shift[2]),
        .I1(shift[0]),
        .I2(shift[1]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \temp_quotient[4]_i_1 
       (.I0(shift[2]),
        .I1(shift[0]),
        .I2(shift[1]),
        .O(\temp_quotient[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \temp_quotient[5]_i_1 
       (.I0(shift[2]),
        .I1(shift[0]),
        .I2(shift[1]),
        .O(\temp_quotient[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \temp_quotient[6]_i_1 
       (.I0(shift[2]),
        .I1(shift[1]),
        .I2(shift[0]),
        .O(\temp_quotient[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \temp_quotient[7]_i_2 
       (.I0(shift[2]),
        .I1(shift[0]),
        .I2(shift[1]),
        .O(\temp_quotient[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_quotient_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp_quotient_reg[0]_0 ),
        .Q(\temp_quotient_reg[6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_quotient_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(p_2_in[1]),
        .Q(\temp_quotient_reg[6]_0 [1]),
        .R(temp_quotient0_in));
  FDRE #(
    .INIT(1'b0)) 
    \temp_quotient_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(p_2_in[2]),
        .Q(\temp_quotient_reg[6]_0 [2]),
        .R(temp_quotient0_in));
  FDRE #(
    .INIT(1'b0)) 
    \temp_quotient_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(p_2_in[3]),
        .Q(\temp_quotient_reg[6]_0 [3]),
        .R(temp_quotient0_in));
  FDRE #(
    .INIT(1'b0)) 
    \temp_quotient_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(\temp_quotient[4]_i_1_n_0 ),
        .Q(\temp_quotient_reg[6]_0 [4]),
        .R(temp_quotient0_in));
  FDRE #(
    .INIT(1'b0)) 
    \temp_quotient_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(\temp_quotient[5]_i_1_n_0 ),
        .Q(\temp_quotient_reg[6]_0 [5]),
        .R(temp_quotient0_in));
  FDRE #(
    .INIT(1'b0)) 
    \temp_quotient_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(\temp_quotient[6]_i_1_n_0 ),
        .Q(\temp_quotient_reg[6]_0 [6]),
        .R(temp_quotient0_in));
  FDRE #(
    .INIT(1'b0)) 
    \temp_quotient_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_quotient),
        .D(\temp_quotient[7]_i_2_n_0 ),
        .Q(temp_quotient__0),
        .R(temp_quotient0_in));
  LUT2 #(
    .INIT(4'h6)) 
    \total_quotient_reg[0]_i_1 
       (.I0(\out_total_quotient_reg_n_0_[0] ),
        .I1(O),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hD2)) 
    \total_quotient_reg[1]_i_1 
       (.I0(O),
        .I1(\out_total_quotient_reg_n_0_[0] ),
        .I2(\out_total_quotient_reg_n_0_[1] ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hEF10)) 
    \total_quotient_reg[2]_i_1 
       (.I0(\out_total_quotient_reg_n_0_[1] ),
        .I1(\out_total_quotient_reg_n_0_[0] ),
        .I2(O),
        .I3(\out_total_quotient_reg_n_0_[2] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFFB0004)) 
    \total_quotient_reg[3]_i_1 
       (.I0(\out_total_quotient_reg_n_0_[2] ),
        .I1(O),
        .I2(\out_total_quotient_reg_n_0_[0] ),
        .I3(\out_total_quotient_reg_n_0_[1] ),
        .I4(\out_total_quotient_reg_n_0_[3] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000100)) 
    \total_quotient_reg[4]_i_1 
       (.I0(\out_total_quotient_reg_n_0_[3] ),
        .I1(\out_total_quotient_reg_n_0_[1] ),
        .I2(\out_total_quotient_reg_n_0_[0] ),
        .I3(O),
        .I4(\out_total_quotient_reg_n_0_[2] ),
        .I5(\out_total_quotient_reg_n_0_[4] ),
        .O(D[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \total_quotient_reg[5]_i_1 
       (.I0(\total_quotient_reg[7]_i_3_n_0 ),
        .I1(\out_total_quotient_reg_n_0_[5] ),
        .O(D[5]));
  LUT3 #(
    .INIT(8'hE1)) 
    \total_quotient_reg[6]_i_1 
       (.I0(\out_total_quotient_reg_n_0_[5] ),
        .I1(\total_quotient_reg[7]_i_3_n_0 ),
        .I2(\out_total_quotient_reg_n_0_[6] ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hFE01)) 
    \total_quotient_reg[7]_i_1 
       (.I0(\out_total_quotient_reg_n_0_[6] ),
        .I1(\total_quotient_reg[7]_i_3_n_0 ),
        .I2(\out_total_quotient_reg_n_0_[5] ),
        .I3(\out_total_quotient_reg_n_0_[7] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \total_quotient_reg[7]_i_3 
       (.I0(\out_total_quotient_reg_n_0_[3] ),
        .I1(\out_total_quotient_reg_n_0_[1] ),
        .I2(\out_total_quotient_reg_n_0_[0] ),
        .I3(O),
        .I4(\out_total_quotient_reg_n_0_[2] ),
        .I5(\out_total_quotient_reg_n_0_[4] ),
        .O(\total_quotient_reg[7]_i_3_n_0 ));
endmodule

module subtractor
   (O,
    ready,
    \in_dividend[7] ,
    \FSM_sequential_current_state_reg[2] ,
    \temp_quotient_reg[3] ,
    \out_total_quotient_reg[6] ,
    \temp_quotient_reg[6] ,
    D,
    DI,
    S,
    Q,
    write_IBUF,
    in_dividend_IBUF,
    select,
    \out_total_quotient_reg[7] ,
    \remainder[7] ,
    \FSM_sequential_current_state[2]_i_5_0 ,
    \FSM_sequential_current_state[2]_i_5_1 ,
    \FSM_sequential_current_state[2]_i_4_0 ,
    \FSM_sequential_current_state[2]_i_4_1 ,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[1]_0 ,
    \FSM_sequential_current_state_reg[1]_1 ,
    \total_quotient[7] ,
    \remainder_reg[7]_i_1_0 ,
    shifted_divisor);
  output [0:0]O;
  output [2:0]ready;
  output [7:0]\in_dividend[7] ;
  output [7:0]\FSM_sequential_current_state_reg[2] ;
  output [3:0]\temp_quotient_reg[3] ;
  output [7:0]\out_total_quotient_reg[6] ;
  output [2:0]\temp_quotient_reg[6] ;
  output [1:0]D;
  input [3:0]DI;
  input [3:0]S;
  input [2:0]Q;
  input write_IBUF;
  input [7:0]in_dividend_IBUF;
  input select;
  input [6:0]\out_total_quotient_reg[7] ;
  input \remainder[7] ;
  input \FSM_sequential_current_state[2]_i_5_0 ;
  input \FSM_sequential_current_state[2]_i_5_1 ;
  input \FSM_sequential_current_state[2]_i_4_0 ;
  input \FSM_sequential_current_state[2]_i_4_1 ;
  input \FSM_sequential_current_state_reg[1] ;
  input \FSM_sequential_current_state_reg[1]_0 ;
  input \FSM_sequential_current_state_reg[1]_1 ;
  input [7:0]\total_quotient[7] ;
  input [7:0]\remainder_reg[7]_i_1_0 ;
  input [7:0]shifted_divisor;

  wire [1:0]D;
  wire [3:0]DI;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_11_n_0 ;
  wire \FSM_sequential_current_state[2]_i_4_0 ;
  wire \FSM_sequential_current_state[2]_i_4_1 ;
  wire \FSM_sequential_current_state[2]_i_5_0 ;
  wire \FSM_sequential_current_state[2]_i_5_1 ;
  wire \FSM_sequential_current_state[2]_i_7_n_0 ;
  wire \FSM_sequential_current_state[2]_i_9_n_0 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[1]_1 ;
  wire [7:0]\FSM_sequential_current_state_reg[2] ;
  wire [0:0]O;
  wire [2:0]Q;
  wire [3:0]S;
  wire [7:0]\in_dividend[7] ;
  wire [7:0]in_dividend_IBUF;
  wire [7:0]\out_total_quotient_reg[6] ;
  wire [6:0]\out_total_quotient_reg[7] ;
  wire [2:0]ready;
  wire \remainder[7] ;
  wire \remainder_reg[3]_i_1_n_0 ;
  wire \remainder_reg[3]_i_1_n_4 ;
  wire \remainder_reg[3]_i_1_n_5 ;
  wire \remainder_reg[3]_i_1_n_6 ;
  wire \remainder_reg[3]_i_1_n_7 ;
  wire \remainder_reg[3]_i_2_n_0 ;
  wire \remainder_reg[3]_i_3_n_0 ;
  wire \remainder_reg[3]_i_4_n_0 ;
  wire \remainder_reg[3]_i_5_n_0 ;
  wire \remainder_reg[3]_i_6_n_0 ;
  wire [7:0]\remainder_reg[7]_i_1_0 ;
  wire \remainder_reg[7]_i_1_n_4 ;
  wire \remainder_reg[7]_i_1_n_5 ;
  wire \remainder_reg[7]_i_1_n_6 ;
  wire \remainder_reg[7]_i_1_n_7 ;
  wire \remainder_reg[7]_i_2_n_0 ;
  wire \remainder_reg[7]_i_3_n_0 ;
  wire \remainder_reg[7]_i_4_n_0 ;
  wire \remainder_reg[7]_i_5_n_0 ;
  wire select;
  wire [7:0]shifted_divisor;
  wire [3:0]\temp_quotient_reg[3] ;
  wire [2:0]\temp_quotient_reg[6] ;
  wire total_quotient1_carry_n_0;
  wire [7:0]\total_quotient[7] ;
  wire write_IBUF;
  wire [2:0]\NLW_remainder_reg[3]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_remainder_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_total_quotient1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_total_quotient1_carry_O_UNCONNECTED;
  wire [3:0]NLW_total_quotient1_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_total_quotient1_carry__0_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I1(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFDB5755FFDB0200)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(Q[1]),
        .I1(ready[0]),
        .I2(ready[2]),
        .I3(ready[1]),
        .I4(Q[0]),
        .I5(write_IBUF),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DBFF0200)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(ready[0]),
        .I1(ready[2]),
        .I2(ready[1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_current_state[2]_i_11 
       (.I0(O),
        .I1(\remainder[7] ),
        .O(\FSM_sequential_current_state[2]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_current_state[2]_i_4 
       (.I0(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .O(ready[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_current_state[2]_i_5 
       (.I0(\FSM_sequential_current_state[2]_i_9_n_0 ),
        .I1(\FSM_sequential_current_state_reg[1] ),
        .O(ready[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_current_state[2]_i_6 
       (.I0(\FSM_sequential_current_state[2]_i_11_n_0 ),
        .I1(\FSM_sequential_current_state_reg[1]_1 ),
        .O(ready[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_sequential_current_state[2]_i_7 
       (.I0(total_quotient1_carry_n_0),
        .I1(\remainder[7] ),
        .I2(\FSM_sequential_current_state[2]_i_4_0 ),
        .I3(\FSM_sequential_current_state[2]_i_4_1 ),
        .O(\FSM_sequential_current_state[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_sequential_current_state[2]_i_9 
       (.I0(total_quotient1_carry_n_0),
        .I1(\remainder[7] ),
        .I2(\FSM_sequential_current_state[2]_i_5_0 ),
        .I3(\FSM_sequential_current_state[2]_i_5_1 ),
        .O(\FSM_sequential_current_state[2]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_dividend_reg[0]_i_1 
       (.I0(\FSM_sequential_current_state_reg[2] [0]),
        .I1(in_dividend_IBUF[0]),
        .I2(select),
        .O(\in_dividend[7] [0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_dividend_reg[1]_i_1 
       (.I0(\FSM_sequential_current_state_reg[2] [1]),
        .I1(in_dividend_IBUF[1]),
        .I2(select),
        .O(\in_dividend[7] [1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_dividend_reg[2]_i_1 
       (.I0(\FSM_sequential_current_state_reg[2] [2]),
        .I1(in_dividend_IBUF[2]),
        .I2(select),
        .O(\in_dividend[7] [2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_dividend_reg[3]_i_1 
       (.I0(\FSM_sequential_current_state_reg[2] [3]),
        .I1(in_dividend_IBUF[3]),
        .I2(select),
        .O(\in_dividend[7] [3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_dividend_reg[4]_i_1 
       (.I0(\FSM_sequential_current_state_reg[2] [4]),
        .I1(in_dividend_IBUF[4]),
        .I2(select),
        .O(\in_dividend[7] [4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_dividend_reg[5]_i_1 
       (.I0(\FSM_sequential_current_state_reg[2] [5]),
        .I1(in_dividend_IBUF[5]),
        .I2(select),
        .O(\in_dividend[7] [5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_dividend_reg[6]_i_1 
       (.I0(\FSM_sequential_current_state_reg[2] [6]),
        .I1(in_dividend_IBUF[6]),
        .I2(select),
        .O(\in_dividend[7] [6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_dividend_reg[7]_i_1 
       (.I0(\FSM_sequential_current_state_reg[2] [7]),
        .I1(in_dividend_IBUF[7]),
        .I2(select),
        .O(\in_dividend[7] [7]));
  LUT2 #(
    .INIT(4'h6)) 
    out_total_quotient0_carry__0_i_2
       (.I0(\out_total_quotient_reg[6] [6]),
        .I1(\out_total_quotient_reg[7] [6]),
        .O(\temp_quotient_reg[6] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    out_total_quotient0_carry__0_i_3
       (.I0(\out_total_quotient_reg[6] [5]),
        .I1(\out_total_quotient_reg[7] [5]),
        .O(\temp_quotient_reg[6] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    out_total_quotient0_carry__0_i_4
       (.I0(\out_total_quotient_reg[6] [4]),
        .I1(\out_total_quotient_reg[7] [4]),
        .O(\temp_quotient_reg[6] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    out_total_quotient0_carry_i_1
       (.I0(\out_total_quotient_reg[6] [3]),
        .I1(\out_total_quotient_reg[7] [3]),
        .O(\temp_quotient_reg[3] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    out_total_quotient0_carry_i_2
       (.I0(\out_total_quotient_reg[6] [2]),
        .I1(\out_total_quotient_reg[7] [2]),
        .O(\temp_quotient_reg[3] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    out_total_quotient0_carry_i_3
       (.I0(\out_total_quotient_reg[6] [1]),
        .I1(\out_total_quotient_reg[7] [1]),
        .O(\temp_quotient_reg[3] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    out_total_quotient0_carry_i_4
       (.I0(\out_total_quotient_reg[6] [0]),
        .I1(\out_total_quotient_reg[7] [0]),
        .O(\temp_quotient_reg[3] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \remainder_reg[0] 
       (.CLR(1'b0),
        .D(\remainder_reg[3]_i_1_n_7 ),
        .G(\remainder[7] ),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[2] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \remainder_reg[1] 
       (.CLR(1'b0),
        .D(\remainder_reg[3]_i_1_n_6 ),
        .G(\remainder[7] ),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[2] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \remainder_reg[2] 
       (.CLR(1'b0),
        .D(\remainder_reg[3]_i_1_n_5 ),
        .G(\remainder[7] ),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[2] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \remainder_reg[3] 
       (.CLR(1'b0),
        .D(\remainder_reg[3]_i_1_n_4 ),
        .G(\remainder[7] ),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[2] [3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \remainder_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\remainder_reg[3]_i_1_n_0 ,\NLW_remainder_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\remainder_reg[3]_i_2_n_0 ),
        .DI(\remainder_reg[7]_i_1_0 [3:0]),
        .O({\remainder_reg[3]_i_1_n_4 ,\remainder_reg[3]_i_1_n_5 ,\remainder_reg[3]_i_1_n_6 ,\remainder_reg[3]_i_1_n_7 }),
        .S({\remainder_reg[3]_i_3_n_0 ,\remainder_reg[3]_i_4_n_0 ,\remainder_reg[3]_i_5_n_0 ,\remainder_reg[3]_i_6_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \remainder_reg[3]_i_2 
       (.I0(O),
        .O(\remainder_reg[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \remainder_reg[3]_i_3 
       (.I0(O),
        .I1(shifted_divisor[3]),
        .I2(\remainder_reg[7]_i_1_0 [3]),
        .O(\remainder_reg[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \remainder_reg[3]_i_4 
       (.I0(O),
        .I1(shifted_divisor[2]),
        .I2(\remainder_reg[7]_i_1_0 [2]),
        .O(\remainder_reg[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \remainder_reg[3]_i_5 
       (.I0(O),
        .I1(shifted_divisor[1]),
        .I2(\remainder_reg[7]_i_1_0 [1]),
        .O(\remainder_reg[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \remainder_reg[3]_i_6 
       (.I0(O),
        .I1(shifted_divisor[0]),
        .I2(\remainder_reg[7]_i_1_0 [0]),
        .O(\remainder_reg[3]_i_6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \remainder_reg[4] 
       (.CLR(1'b0),
        .D(\remainder_reg[7]_i_1_n_7 ),
        .G(\remainder[7] ),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[2] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \remainder_reg[5] 
       (.CLR(1'b0),
        .D(\remainder_reg[7]_i_1_n_6 ),
        .G(\remainder[7] ),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[2] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \remainder_reg[6] 
       (.CLR(1'b0),
        .D(\remainder_reg[7]_i_1_n_5 ),
        .G(\remainder[7] ),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[2] [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \remainder_reg[7] 
       (.CLR(1'b0),
        .D(\remainder_reg[7]_i_1_n_4 ),
        .G(\remainder[7] ),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[2] [7]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \remainder_reg[7]_i_1 
       (.CI(\remainder_reg[3]_i_1_n_0 ),
        .CO(\NLW_remainder_reg[7]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\remainder_reg[7]_i_1_0 [6:4]}),
        .O({\remainder_reg[7]_i_1_n_4 ,\remainder_reg[7]_i_1_n_5 ,\remainder_reg[7]_i_1_n_6 ,\remainder_reg[7]_i_1_n_7 }),
        .S({\remainder_reg[7]_i_2_n_0 ,\remainder_reg[7]_i_3_n_0 ,\remainder_reg[7]_i_4_n_0 ,\remainder_reg[7]_i_5_n_0 }));
  LUT3 #(
    .INIT(8'hE1)) 
    \remainder_reg[7]_i_2 
       (.I0(O),
        .I1(shifted_divisor[7]),
        .I2(\remainder_reg[7]_i_1_0 [7]),
        .O(\remainder_reg[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \remainder_reg[7]_i_3 
       (.I0(O),
        .I1(shifted_divisor[6]),
        .I2(\remainder_reg[7]_i_1_0 [6]),
        .O(\remainder_reg[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \remainder_reg[7]_i_4 
       (.I0(O),
        .I1(shifted_divisor[5]),
        .I2(\remainder_reg[7]_i_1_0 [5]),
        .O(\remainder_reg[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \remainder_reg[7]_i_5 
       (.I0(O),
        .I1(shifted_divisor[4]),
        .I2(\remainder_reg[7]_i_1_0 [4]),
        .O(\remainder_reg[7]_i_5_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 total_quotient1_carry
       (.CI(1'b0),
        .CO({total_quotient1_carry_n_0,NLW_total_quotient1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(DI),
        .O(NLW_total_quotient1_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 total_quotient1_carry__0
       (.CI(total_quotient1_carry_n_0),
        .CO(NLW_total_quotient1_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_total_quotient1_carry__0_O_UNCONNECTED[3:1],O}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \total_quotient_reg[0] 
       (.CLR(1'b0),
        .D(\total_quotient[7] [0]),
        .G(\remainder[7] ),
        .GE(1'b1),
        .Q(\out_total_quotient_reg[6] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \total_quotient_reg[1] 
       (.CLR(1'b0),
        .D(\total_quotient[7] [1]),
        .G(\remainder[7] ),
        .GE(1'b1),
        .Q(\out_total_quotient_reg[6] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \total_quotient_reg[2] 
       (.CLR(1'b0),
        .D(\total_quotient[7] [2]),
        .G(\remainder[7] ),
        .GE(1'b1),
        .Q(\out_total_quotient_reg[6] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \total_quotient_reg[3] 
       (.CLR(1'b0),
        .D(\total_quotient[7] [3]),
        .G(\remainder[7] ),
        .GE(1'b1),
        .Q(\out_total_quotient_reg[6] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \total_quotient_reg[4] 
       (.CLR(1'b0),
        .D(\total_quotient[7] [4]),
        .G(\remainder[7] ),
        .GE(1'b1),
        .Q(\out_total_quotient_reg[6] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \total_quotient_reg[5] 
       (.CLR(1'b0),
        .D(\total_quotient[7] [5]),
        .G(\remainder[7] ),
        .GE(1'b1),
        .Q(\out_total_quotient_reg[6] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \total_quotient_reg[6] 
       (.CLR(1'b0),
        .D(\total_quotient[7] [6]),
        .G(\remainder[7] ),
        .GE(1'b1),
        .Q(\out_total_quotient_reg[6] [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \total_quotient_reg[7] 
       (.CLR(1'b0),
        .D(\total_quotient[7] [7]),
        .G(\remainder[7] ),
        .GE(1'b1),
        .Q(\out_total_quotient_reg[6] [7]));
endmodule

(* ECO_CHECKSUM = "6366c198" *) 
(* NotValidForBitStream *)
module top
   (clk,
    write,
    clear,
    in_dividend,
    in_divisor,
    total_quotient,
    remainder);
  input clk;
  input write;
  input clear;
  input [7:0]in_dividend;
  input [3:0]in_divisor;
  output [7:0]total_quotient;
  output [7:0]remainder;

  wire \FSM_sequential_current_state_reg[2]_i_13_n_0 ;
  wire \FSM_sequential_current_state_reg[2]_i_14_n_0 ;
  wire clear;
  wire clear_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire controller_wrapper_n_1;
  wire controller_wrapper_n_10;
  wire controller_wrapper_n_11;
  wire controller_wrapper_n_13;
  wire controller_wrapper_n_14;
  wire controller_wrapper_n_15;
  wire controller_wrapper_n_5;
  wire controller_wrapper_n_6;
  wire controller_wrapper_n_7;
  wire controller_wrapper_n_9;
  wire [2:0]current_state__0;
  wire [1:0]dividend_len;
  wire [1:0]divisor_len;
  wire [7:0]in_dividend;
  wire [7:0]in_dividend_IBUF;
  wire [3:0]in_divisor;
  wire [3:0]in_divisor_IBUF;
  wire [7:0]out_dividend;
  wire [0:0]p_0_out;
  wire [2:0]ready;
  wire [3:0]ref_divisor;
  wire reg_wrapper_n_0;
  wire reg_wrapper_n_10;
  wire reg_wrapper_n_11;
  wire reg_wrapper_n_12;
  wire reg_wrapper_n_13;
  wire reg_wrapper_n_14;
  wire reg_wrapper_n_15;
  wire reg_wrapper_n_16;
  wire reg_wrapper_n_17;
  wire reg_wrapper_n_26;
  wire reg_wrapper_n_27;
  wire reg_wrapper_n_28;
  wire reg_wrapper_n_29;
  wire reg_wrapper_n_30;
  wire reg_wrapper_n_4;
  wire [7:0]remainder;
  wire [7:0]remainder_OBUF;
  wire select;
  wire [2:0]shift;
  wire [2:2]shift0;
  wire shift1;
  wire [7:0]shifted_divisor;
  wire shifter_wrapper_n_11;
  wire shifter_wrapper_n_12;
  wire shifter_wrapper_n_13;
  wire shifter_wrapper_n_14;
  wire shifter_wrapper_n_15;
  wire shifter_wrapper_n_16;
  wire shifter_wrapper_n_17;
  wire shifter_wrapper_n_18;
  wire shifter_wrapper_n_19;
  wire shifter_wrapper_n_7;
  wire sub_wrapper_n_10;
  wire sub_wrapper_n_11;
  wire sub_wrapper_n_20;
  wire sub_wrapper_n_21;
  wire sub_wrapper_n_22;
  wire sub_wrapper_n_23;
  wire sub_wrapper_n_32;
  wire sub_wrapper_n_33;
  wire sub_wrapper_n_34;
  wire sub_wrapper_n_35;
  wire sub_wrapper_n_36;
  wire sub_wrapper_n_4;
  wire sub_wrapper_n_5;
  wire sub_wrapper_n_6;
  wire sub_wrapper_n_7;
  wire sub_wrapper_n_8;
  wire sub_wrapper_n_9;
  wire [6:0]temp_quotient;
  wire [6:6]temp_quotient0_in;
  wire temp_quotient_0;
  wire [7:0]total_quotient;
  wire [7:0]total_quotient_OBUF;
  wire write;
  wire write_IBUF;

  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_current_state_reg[2]_i_13 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_quotient_0),
        .Q(\FSM_sequential_current_state_reg[2]_i_13_n_0 ),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2]_i_14 
       (.CLR(1'b0),
        .D(controller_wrapper_n_6),
        .G(controller_wrapper_n_9),
        .GE(1'b1),
        .Q(\FSM_sequential_current_state_reg[2]_i_14_n_0 ));
  IBUF clear_IBUF_inst
       (.I(clear),
        .O(clear_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  controller controller_wrapper
       (.D({sub_wrapper_n_35,sub_wrapper_n_36}),
        .E(controller_wrapper_n_6),
        .\FSM_sequential_current_state[2]_i_6 (\FSM_sequential_current_state_reg[2]_i_13_n_0 ),
        .\FSM_sequential_current_state[2]_i_6_0 (\FSM_sequential_current_state_reg[2]_i_14_n_0 ),
        .\FSM_sequential_current_state_reg[1]_0 (controller_wrapper_n_1),
        .\FSM_sequential_current_state_reg[1]_1 (controller_wrapper_n_10),
        .\FSM_sequential_current_state_reg[2]_0 (controller_wrapper_n_5),
        .\FSM_sequential_current_state_reg[2]_1 (controller_wrapper_n_7),
        .\FSM_sequential_current_state_reg[2]_2 (controller_wrapper_n_9),
        .\FSM_sequential_current_state_reg[2]_i_13 (controller_wrapper_n_13),
        .\FSM_sequential_current_state_reg[2]_i_13_0 (controller_wrapper_n_14),
        .\FSM_sequential_current_state_reg[2]_i_13_1 (controller_wrapper_n_15),
        .Q(current_state__0),
        .SR(controller_wrapper_n_11),
        .clear_IBUF(clear_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ready(ready),
        .select(select),
        .shift1(shift1),
        .temp_quotient(temp_quotient_0),
        .temp_quotient0_in(temp_quotient0_in),
        .\temp_quotient_reg[0] (shifter_wrapper_n_19),
        .write_IBUF(write_IBUF));
  IBUF \in_dividend_IBUF[0]_inst 
       (.I(in_dividend[0]),
        .O(in_dividend_IBUF[0]));
  IBUF \in_dividend_IBUF[1]_inst 
       (.I(in_dividend[1]),
        .O(in_dividend_IBUF[1]));
  IBUF \in_dividend_IBUF[2]_inst 
       (.I(in_dividend[2]),
        .O(in_dividend_IBUF[2]));
  IBUF \in_dividend_IBUF[3]_inst 
       (.I(in_dividend[3]),
        .O(in_dividend_IBUF[3]));
  IBUF \in_dividend_IBUF[4]_inst 
       (.I(in_dividend[4]),
        .O(in_dividend_IBUF[4]));
  IBUF \in_dividend_IBUF[5]_inst 
       (.I(in_dividend[5]),
        .O(in_dividend_IBUF[5]));
  IBUF \in_dividend_IBUF[6]_inst 
       (.I(in_dividend[6]),
        .O(in_dividend_IBUF[6]));
  IBUF \in_dividend_IBUF[7]_inst 
       (.I(in_dividend[7]),
        .O(in_dividend_IBUF[7]));
  IBUF \in_divisor_IBUF[0]_inst 
       (.I(in_divisor[0]),
        .O(in_divisor_IBUF[0]));
  IBUF \in_divisor_IBUF[1]_inst 
       (.I(in_divisor[1]),
        .O(in_divisor_IBUF[1]));
  IBUF \in_divisor_IBUF[2]_inst 
       (.I(in_divisor[2]),
        .O(in_divisor_IBUF[2]));
  IBUF \in_divisor_IBUF[3]_inst 
       (.I(in_divisor[3]),
        .O(in_divisor_IBUF[3]));
  register reg_wrapper
       (.D({reg_wrapper_n_10,reg_wrapper_n_11}),
        .DI({reg_wrapper_n_26,reg_wrapper_n_27,reg_wrapper_n_28,reg_wrapper_n_29}),
        .E(controller_wrapper_n_6),
        .\FSM_sequential_current_state[2]_i_9 (controller_wrapper_n_9),
        .\FSM_sequential_current_state_reg[0] (dividend_len),
        .\FSM_sequential_current_state_reg[0]_0 (out_dividend),
        .\FSM_sequential_current_state_reg[2] (reg_wrapper_n_0),
        .Q(divisor_len),
        .S({reg_wrapper_n_14,reg_wrapper_n_15,reg_wrapper_n_16,reg_wrapper_n_17}),
        .\divisor_len_reg[0]_0 (reg_wrapper_n_4),
        .\in_divisor[3] ({ref_divisor[3],ref_divisor[0]}),
        .in_divisor_IBUF(in_divisor_IBUF),
        .\remainder_reg[7]_i_2 ({sub_wrapper_n_4,sub_wrapper_n_5,sub_wrapper_n_6,sub_wrapper_n_7,sub_wrapper_n_8,sub_wrapper_n_9,sub_wrapper_n_10,sub_wrapper_n_11}),
        .shift(shift),
        .shift0(shift0),
        .shift1(shift1),
        .\shift_reg[0] (reg_wrapper_n_30),
        .\shift_reg[1] (reg_wrapper_n_12),
        .\shift_reg[1]_0 (reg_wrapper_n_13),
        .\shift_reg[1]_1 (controller_wrapper_n_10),
        .shifted_divisor(shifted_divisor));
  OBUF \remainder_OBUF[0]_inst 
       (.I(remainder_OBUF[0]),
        .O(remainder[0]));
  OBUF \remainder_OBUF[1]_inst 
       (.I(remainder_OBUF[1]),
        .O(remainder[1]));
  OBUF \remainder_OBUF[2]_inst 
       (.I(remainder_OBUF[2]),
        .O(remainder[2]));
  OBUF \remainder_OBUF[3]_inst 
       (.I(remainder_OBUF[3]),
        .O(remainder[3]));
  OBUF \remainder_OBUF[4]_inst 
       (.I(remainder_OBUF[4]),
        .O(remainder[4]));
  OBUF \remainder_OBUF[5]_inst 
       (.I(remainder_OBUF[5]),
        .O(remainder[5]));
  OBUF \remainder_OBUF[6]_inst 
       (.I(remainder_OBUF[6]),
        .O(remainder[6]));
  OBUF \remainder_OBUF[7]_inst 
       (.I(remainder_OBUF[7]),
        .O(remainder[7]));
  shifter shifter_wrapper
       (.D({shifter_wrapper_n_11,shifter_wrapper_n_12,shifter_wrapper_n_13,shifter_wrapper_n_14,shifter_wrapper_n_15,shifter_wrapper_n_16,shifter_wrapper_n_17,shifter_wrapper_n_18}),
        .O(p_0_out),
        .Q(total_quotient_OBUF),
        .S({sub_wrapper_n_20,sub_wrapper_n_21,sub_wrapper_n_22,sub_wrapper_n_23}),
        .SR(controller_wrapper_n_11),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\out_total_quotient_reg[7]_0 ({sub_wrapper_n_32,sub_wrapper_n_33,sub_wrapper_n_34}),
        .\ready_tristate_oe_reg[1]_0 (shifter_wrapper_n_7),
        .shift(shift),
        .shift0(shift0),
        .\shift_reg[1]_0 (shifter_wrapper_n_19),
        .\shift_reg[1]_1 (dividend_len),
        .\shift_reg[1]_2 (divisor_len),
        .\shift_reg[1]_3 (reg_wrapper_n_4),
        .\shift_reg[2]_0 (current_state__0),
        .\shift_reg[2]_1 (controller_wrapper_n_7),
        .shifted_divisor(shifted_divisor),
        .\shifted_divisor_reg[1]_0 (reg_wrapper_n_30),
        .\shifted_divisor_reg[2]_0 (reg_wrapper_n_13),
        .\shifted_divisor_reg[3]_0 (reg_wrapper_n_12),
        .\shifted_divisor_reg[5]_0 ({reg_wrapper_n_10,reg_wrapper_n_11}),
        .\shifted_divisor_reg[6]_0 ({ref_divisor[3],ref_divisor[0]}),
        .temp_quotient(temp_quotient_0),
        .temp_quotient0_in(temp_quotient0_in),
        .\temp_quotient_reg[0]_0 (controller_wrapper_n_1),
        .\temp_quotient_reg[6]_0 (temp_quotient));
  subtractor sub_wrapper
       (.D({sub_wrapper_n_35,sub_wrapper_n_36}),
        .DI({reg_wrapper_n_26,reg_wrapper_n_27,reg_wrapper_n_28,reg_wrapper_n_29}),
        .\FSM_sequential_current_state[2]_i_4_0 (shifter_wrapper_n_7),
        .\FSM_sequential_current_state[2]_i_4_1 (\FSM_sequential_current_state_reg[2]_i_13_n_0 ),
        .\FSM_sequential_current_state[2]_i_5_0 (reg_wrapper_n_0),
        .\FSM_sequential_current_state[2]_i_5_1 (\FSM_sequential_current_state_reg[2]_i_14_n_0 ),
        .\FSM_sequential_current_state_reg[1] (controller_wrapper_n_13),
        .\FSM_sequential_current_state_reg[1]_0 (controller_wrapper_n_14),
        .\FSM_sequential_current_state_reg[1]_1 (controller_wrapper_n_15),
        .\FSM_sequential_current_state_reg[2] (remainder_OBUF),
        .O(p_0_out),
        .Q(current_state__0),
        .S({reg_wrapper_n_14,reg_wrapper_n_15,reg_wrapper_n_16,reg_wrapper_n_17}),
        .\in_dividend[7] ({sub_wrapper_n_4,sub_wrapper_n_5,sub_wrapper_n_6,sub_wrapper_n_7,sub_wrapper_n_8,sub_wrapper_n_9,sub_wrapper_n_10,sub_wrapper_n_11}),
        .in_dividend_IBUF(in_dividend_IBUF),
        .\out_total_quotient_reg[6] (total_quotient_OBUF),
        .\out_total_quotient_reg[7] (temp_quotient),
        .ready(ready),
        .\remainder[7] (controller_wrapper_n_5),
        .\remainder_reg[7]_i_1_0 (out_dividend),
        .select(select),
        .shifted_divisor(shifted_divisor),
        .\temp_quotient_reg[3] ({sub_wrapper_n_20,sub_wrapper_n_21,sub_wrapper_n_22,sub_wrapper_n_23}),
        .\temp_quotient_reg[6] ({sub_wrapper_n_32,sub_wrapper_n_33,sub_wrapper_n_34}),
        .\total_quotient[7] ({shifter_wrapper_n_11,shifter_wrapper_n_12,shifter_wrapper_n_13,shifter_wrapper_n_14,shifter_wrapper_n_15,shifter_wrapper_n_16,shifter_wrapper_n_17,shifter_wrapper_n_18}),
        .write_IBUF(write_IBUF));
  OBUF \total_quotient_OBUF[0]_inst 
       (.I(total_quotient_OBUF[0]),
        .O(total_quotient[0]));
  OBUF \total_quotient_OBUF[1]_inst 
       (.I(total_quotient_OBUF[1]),
        .O(total_quotient[1]));
  OBUF \total_quotient_OBUF[2]_inst 
       (.I(total_quotient_OBUF[2]),
        .O(total_quotient[2]));
  OBUF \total_quotient_OBUF[3]_inst 
       (.I(total_quotient_OBUF[3]),
        .O(total_quotient[3]));
  OBUF \total_quotient_OBUF[4]_inst 
       (.I(total_quotient_OBUF[4]),
        .O(total_quotient[4]));
  OBUF \total_quotient_OBUF[5]_inst 
       (.I(total_quotient_OBUF[5]),
        .O(total_quotient[5]));
  OBUF \total_quotient_OBUF[6]_inst 
       (.I(total_quotient_OBUF[6]),
        .O(total_quotient[6]));
  OBUF \total_quotient_OBUF[7]_inst 
       (.I(total_quotient_OBUF[7]),
        .O(total_quotient[7]));
  IBUF write_IBUF_inst
       (.I(write),
        .O(write_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
