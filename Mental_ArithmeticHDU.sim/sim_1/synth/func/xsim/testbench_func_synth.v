// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Jul  5 14:49:14 2022
// Host        : Nightingale running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/Dev/FPGAs/baby_step/baby_step.sim/sim_1/synth/func/xsim/testbench_func_synth.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module controller
   (current_state,
    in0,
    write_IBUF,
    clear_IBUF);
  output [0:0]current_state;
  input in0;
  input write_IBUF;
  input clear_IBUF;

  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire clear_IBUF;
  wire [0:0]current_state;
  wire in0;
  wire next_state;
  wire write_IBUF;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(clear_IBUF),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:00001,REG:00010,SHIFT:00100,TOTAL:01000,SUB:10000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(in0),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[0] ),
        .PRE(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "IDLE:00001,REG:00010,SHIFT:00100,TOTAL:01000,SUB:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(in0),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .D(\FSM_onehot_next_state_reg_n_0_[1] ),
        .Q(current_state));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[0]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_next_state_reg[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(write_IBUF),
        .O(\FSM_onehot_next_state_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[1]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_next_state_reg[1]_i_1 
       (.I0(write_IBUF),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(current_state),
        .O(\FSM_onehot_next_state_reg[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_next_state_reg[1]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(current_state),
        .O(next_state));
endmodule

(* NotValidForBitStream *)
module top
   (clk,
    write,
    clear,
    current_state);
  input clk;
  input write;
  input clear;
  output [3:0]current_state;

  wire clear;
  wire clear_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]current_state;
  wire [0:0]current_state_OBUF;
  wire write;
  wire write_IBUF;

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
       (.clear_IBUF(clear_IBUF),
        .current_state(current_state_OBUF),
        .in0(clk_IBUF_BUFG),
        .write_IBUF(write_IBUF));
  OBUF \current_state_OBUF[0]_inst 
       (.I(current_state_OBUF),
        .O(current_state[0]));
  OBUF \current_state_OBUF[1]_inst 
       (.I(1'b0),
        .O(current_state[1]));
  OBUF \current_state_OBUF[2]_inst 
       (.I(1'b0),
        .O(current_state[2]));
  OBUF \current_state_OBUF[3]_inst 
       (.I(1'b0),
        .O(current_state[3]));
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
