//
// Generated by Bluespec Compiler, version 2010.10.beta1 (build 22431, 2010-10-28)
//
// On Mon Nov 29 20:21:28 EST 2010
//
//
// Ports:
// Name                         I/O  size props
// wciS0_AWREADY                  O     1 const
// wciS0_WREADY                   O     1 const
// wciS0_BVALID                   O     1 const
// wciS0_BRESP                    O     2 const
// wciS0_ARREADY                  O     1 const
// wciS0_RVALID                   O     1 const
// wciS0_RDATA                    O    32 const
// wciS0_RRESP                    O     2 const
// wciS0_Clk                      I     1 clock
// wciS0_MReset_n                 I     1 reset
// wciS0_AWADDR                   I    32 unused
// wciS0_AWPROT                   I     3 unused
// wciS0_WDATA                    I    32 unused
// wciS0_WSTRB                    I     4 unused
// wciS0_ARADDR                   I    32 unused
// wciS0_ARPROT                   I     3 unused
// wciS0_AWVALID                  I     1 unused
// wciS0_WVALID                   I     1 unused
// wciS0_BREADY                   I     1 unused
// wciS0_ARVALID                  I     1 unused
// wciS0_RREADY                   I     1 unused
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module mkWciAxiTarget(wciS0_Clk,
		      wciS0_MReset_n,

		      wciS0_AWVALID,

		      wciS0_AWREADY,

		      wciS0_AWADDR,

		      wciS0_AWPROT,

		      wciS0_WVALID,

		      wciS0_WREADY,

		      wciS0_WDATA,

		      wciS0_WSTRB,

		      wciS0_BVALID,

		      wciS0_BREADY,

		      wciS0_BRESP,

		      wciS0_ARVALID,

		      wciS0_ARREADY,

		      wciS0_ARADDR,

		      wciS0_ARPROT,

		      wciS0_RVALID,

		      wciS0_RREADY,

		      wciS0_RDATA,

		      wciS0_RRESP);
  input  wciS0_Clk;
  input  wciS0_MReset_n;

  // action method wciS0_mAWVALID
  input  wciS0_AWVALID;

  // value method wciS0_sAWREADY
  output wciS0_AWREADY;

  // action method wciS0_mAWADDR
  input  [31 : 0] wciS0_AWADDR;

  // action method wciS0_mAWPROT
  input  [2 : 0] wciS0_AWPROT;

  // action method wciS0_mWVALID
  input  wciS0_WVALID;

  // value method wciS0_sWREADY
  output wciS0_WREADY;

  // action method wciS0_mWDATA
  input  [31 : 0] wciS0_WDATA;

  // action method wciS0_mWSTRB
  input  [3 : 0] wciS0_WSTRB;

  // value method wciS0_sBVALID
  output wciS0_BVALID;

  // action method wciS0_mBREADY
  input  wciS0_BREADY;

  // value method wciS0_sBRESP
  output [1 : 0] wciS0_BRESP;

  // action method wciS0_mARVALID
  input  wciS0_ARVALID;

  // value method wciS0_sARREADY
  output wciS0_ARREADY;

  // action method wciS0_mARADDR
  input  [31 : 0] wciS0_ARADDR;

  // action method wciS0_mARPROT
  input  [2 : 0] wciS0_ARPROT;

  // value method wciS0_sRVALID
  output wciS0_RVALID;

  // action method wciS0_mRREADY
  input  wciS0_RREADY;

  // value method wciS0_sRDATA
  output [31 : 0] wciS0_RDATA;

  // value method wciS0_sRRESP
  output [1 : 0] wciS0_RRESP;

  // signals for module outputs
  wire [31 : 0] wciS0_RDATA;
  wire [1 : 0] wciS0_BRESP, wciS0_RRESP;
  wire wciS0_ARREADY, wciS0_AWREADY, wciS0_BVALID, wciS0_RVALID, wciS0_WREADY;

  // inlined wires
  wire [35 : 0] target_wBR_data_wire$wget;
  wire [34 : 0] target_awBR_data_wire$wget, target_bBR_data_wire$wget;
  wire [33 : 0] target_rBS_fifof_x_wire$wget;
  wire [1 : 0] target_wBS_fifof_x_wire$wget;
  wire target_awBR_enq_enq$whas,
       target_awBR_enq_valid$whas,
       target_bBR_enq_enq$whas,
       target_bBR_enq_valid$whas,
       target_rBS_deq_deq$whas,
       target_rBS_deq_ready$whas,
       target_rBS_fifof_dequeueing$whas,
       target_rBS_fifof_enqueueing$whas,
       target_rBS_fifof_x_wire$whas,
       target_wBR_enq_enq$whas,
       target_wBR_enq_valid$whas,
       target_wBS_deq_deq$whas,
       target_wBS_deq_ready$whas,
       target_wBS_fifof_dequeueing$whas,
       target_wBS_fifof_enqueueing$whas,
       target_wBS_fifof_x_wire$whas;

  // register target_rBS_fifof_c_r
  reg [1 : 0] target_rBS_fifof_c_r;
  wire [1 : 0] target_rBS_fifof_c_r$D_IN;
  wire target_rBS_fifof_c_r$EN;

  // register target_rBS_fifof_q_0
  reg [33 : 0] target_rBS_fifof_q_0;
  wire [33 : 0] target_rBS_fifof_q_0$D_IN;
  wire target_rBS_fifof_q_0$EN;

  // register target_rBS_fifof_q_1
  reg [33 : 0] target_rBS_fifof_q_1;
  wire [33 : 0] target_rBS_fifof_q_1$D_IN;
  wire target_rBS_fifof_q_1$EN;

  // register target_wBS_fifof_c_r
  reg [1 : 0] target_wBS_fifof_c_r;
  wire [1 : 0] target_wBS_fifof_c_r$D_IN;
  wire target_wBS_fifof_c_r$EN;

  // register target_wBS_fifof_q_0
  reg [1 : 0] target_wBS_fifof_q_0;
  wire [1 : 0] target_wBS_fifof_q_0$D_IN;
  wire target_wBS_fifof_q_0$EN;

  // register target_wBS_fifof_q_1
  reg [1 : 0] target_wBS_fifof_q_1;
  wire [1 : 0] target_wBS_fifof_q_1$D_IN;
  wire target_wBS_fifof_q_1$EN;

  // ports of submodule target_awBR_fifof
  wire [34 : 0] target_awBR_fifof$D_IN, target_awBR_fifof$D_OUT;
  wire target_awBR_fifof$CLR,
       target_awBR_fifof$DEQ,
       target_awBR_fifof$EMPTY_N,
       target_awBR_fifof$ENQ;

  // ports of submodule target_bBR_fifof
  wire [34 : 0] target_bBR_fifof$D_IN, target_bBR_fifof$D_OUT;
  wire target_bBR_fifof$CLR,
       target_bBR_fifof$DEQ,
       target_bBR_fifof$EMPTY_N,
       target_bBR_fifof$ENQ;

  // ports of submodule target_reqF
  wire [70 : 0] target_reqF$D_IN;
  wire target_reqF$CLR, target_reqF$DEQ, target_reqF$ENQ, target_reqF$FULL_N;

  // ports of submodule target_respF
  wire [34 : 0] target_respF$D_IN, target_respF$D_OUT;
  wire target_respF$CLR,
       target_respF$DEQ,
       target_respF$EMPTY_N,
       target_respF$ENQ;

  // ports of submodule target_wBR_fifof
  wire [35 : 0] target_wBR_fifof$D_IN, target_wBR_fifof$D_OUT;
  wire target_wBR_fifof$CLR,
       target_wBR_fifof$DEQ,
       target_wBR_fifof$EMPTY_N,
       target_wBR_fifof$ENQ;

  // rule scheduling signals
  wire CAN_FIRE_RL_target_awBR_do_enq,
       CAN_FIRE_RL_target_bBR_do_enq,
       CAN_FIRE_RL_target_config_read_response,
       CAN_FIRE_RL_target_config_write_response,
       CAN_FIRE_RL_target_rBS_do_deq,
       CAN_FIRE_RL_target_rBS_fifof_both,
       CAN_FIRE_RL_target_rBS_fifof_decCtr,
       CAN_FIRE_RL_target_rBS_fifof_incCtr,
       CAN_FIRE_RL_target_wBR_do_enq,
       CAN_FIRE_RL_target_wBS_do_deq,
       CAN_FIRE_RL_target_wBS_fifof_both,
       CAN_FIRE_RL_target_wBS_fifof_decCtr,
       CAN_FIRE_RL_target_wBS_fifof_incCtr,
       CAN_FIRE_RL_target_wci_read_request,
       CAN_FIRE_RL_target_wci_write_request,
       CAN_FIRE_wciS0_mARADDR,
       CAN_FIRE_wciS0_mARPROT,
       CAN_FIRE_wciS0_mARVALID,
       CAN_FIRE_wciS0_mAWADDR,
       CAN_FIRE_wciS0_mAWPROT,
       CAN_FIRE_wciS0_mAWVALID,
       CAN_FIRE_wciS0_mBREADY,
       CAN_FIRE_wciS0_mRREADY,
       CAN_FIRE_wciS0_mWDATA,
       CAN_FIRE_wciS0_mWSTRB,
       CAN_FIRE_wciS0_mWVALID,
       WILL_FIRE_RL_target_awBR_do_enq,
       WILL_FIRE_RL_target_bBR_do_enq,
       WILL_FIRE_RL_target_config_read_response,
       WILL_FIRE_RL_target_config_write_response,
       WILL_FIRE_RL_target_rBS_do_deq,
       WILL_FIRE_RL_target_rBS_fifof_both,
       WILL_FIRE_RL_target_rBS_fifof_decCtr,
       WILL_FIRE_RL_target_rBS_fifof_incCtr,
       WILL_FIRE_RL_target_wBR_do_enq,
       WILL_FIRE_RL_target_wBS_do_deq,
       WILL_FIRE_RL_target_wBS_fifof_both,
       WILL_FIRE_RL_target_wBS_fifof_decCtr,
       WILL_FIRE_RL_target_wBS_fifof_incCtr,
       WILL_FIRE_RL_target_wci_read_request,
       WILL_FIRE_RL_target_wci_write_request,
       WILL_FIRE_wciS0_mARADDR,
       WILL_FIRE_wciS0_mARPROT,
       WILL_FIRE_wciS0_mARVALID,
       WILL_FIRE_wciS0_mAWADDR,
       WILL_FIRE_wciS0_mAWPROT,
       WILL_FIRE_wciS0_mAWVALID,
       WILL_FIRE_wciS0_mBREADY,
       WILL_FIRE_wciS0_mRREADY,
       WILL_FIRE_wciS0_mWDATA,
       WILL_FIRE_wciS0_mWSTRB,
       WILL_FIRE_wciS0_mWVALID;

  // inputs to muxes for submodule ports
  wire [70 : 0] MUX_target_reqF$enq_1__VAL_1, MUX_target_reqF$enq_1__VAL_2;
  wire [33 : 0] MUX_target_rBS_fifof_q_0$write_1__VAL_1;
  wire [1 : 0] MUX_target_rBS_fifof_c_r$write_1__VAL_1,
	       MUX_target_wBS_fifof_c_r$write_1__VAL_1;
  wire MUX_target_rBS_fifof_q_0$write_1__SEL_1,
       MUX_target_rBS_fifof_q_1$write_1__SEL_1,
       MUX_target_wBS_fifof_q_0$write_1__SEL_2,
       MUX_target_wBS_fifof_q_1$write_1__SEL_2;

  // action method wciS0_mAWVALID
  assign CAN_FIRE_wciS0_mAWVALID = 1'd1 ;
  assign WILL_FIRE_wciS0_mAWVALID = wciS0_AWVALID ;

  // value method wciS0_sAWREADY
  assign wciS0_AWREADY = 1'h0 ;

  // action method wciS0_mAWADDR
  assign CAN_FIRE_wciS0_mAWADDR = 1'd1 ;
  assign WILL_FIRE_wciS0_mAWADDR = 1'd1 ;

  // action method wciS0_mAWPROT
  assign CAN_FIRE_wciS0_mAWPROT = 1'd1 ;
  assign WILL_FIRE_wciS0_mAWPROT = 1'd1 ;

  // action method wciS0_mWVALID
  assign CAN_FIRE_wciS0_mWVALID = 1'd1 ;
  assign WILL_FIRE_wciS0_mWVALID = wciS0_WVALID ;

  // value method wciS0_sWREADY
  assign wciS0_WREADY = 1'h0 ;

  // action method wciS0_mWDATA
  assign CAN_FIRE_wciS0_mWDATA = 1'd1 ;
  assign WILL_FIRE_wciS0_mWDATA = 1'd1 ;

  // action method wciS0_mWSTRB
  assign CAN_FIRE_wciS0_mWSTRB = 1'd1 ;
  assign WILL_FIRE_wciS0_mWSTRB = 1'd1 ;

  // value method wciS0_sBVALID
  assign wciS0_BVALID = 1'h0 ;

  // action method wciS0_mBREADY
  assign CAN_FIRE_wciS0_mBREADY = 1'd1 ;
  assign WILL_FIRE_wciS0_mBREADY = wciS0_BREADY ;

  // value method wciS0_sBRESP
  assign wciS0_BRESP = 2'h2 ;

  // action method wciS0_mARVALID
  assign CAN_FIRE_wciS0_mARVALID = 1'd1 ;
  assign WILL_FIRE_wciS0_mARVALID = wciS0_ARVALID ;

  // value method wciS0_sARREADY
  assign wciS0_ARREADY = 1'h0 ;

  // action method wciS0_mARADDR
  assign CAN_FIRE_wciS0_mARADDR = 1'd1 ;
  assign WILL_FIRE_wciS0_mARADDR = 1'd1 ;

  // action method wciS0_mARPROT
  assign CAN_FIRE_wciS0_mARPROT = 1'd1 ;
  assign WILL_FIRE_wciS0_mARPROT = 1'd1 ;

  // value method wciS0_sRVALID
  assign wciS0_RVALID = 1'h0 ;

  // action method wciS0_mRREADY
  assign CAN_FIRE_wciS0_mRREADY = 1'd1 ;
  assign WILL_FIRE_wciS0_mRREADY = wciS0_RREADY ;

  // value method wciS0_sRDATA
  assign wciS0_RDATA = 32'hAAAAAAAA ;

  // value method wciS0_sRRESP
  assign wciS0_RRESP = 2'h2 ;

  // submodule target_awBR_fifof
  FIFO2 #(.width(32'd35),
	  .guarded(32'd1)) target_awBR_fifof(.RST_N(wciS0_MReset_n),
					     .CLK(wciS0_Clk),
					     .D_IN(target_awBR_fifof$D_IN),
					     .ENQ(target_awBR_fifof$ENQ),
					     .DEQ(target_awBR_fifof$DEQ),
					     .CLR(target_awBR_fifof$CLR),
					     .D_OUT(target_awBR_fifof$D_OUT),
					     .FULL_N(),
					     .EMPTY_N(target_awBR_fifof$EMPTY_N));

  // submodule target_bBR_fifof
  FIFO2 #(.width(32'd35),
	  .guarded(32'd1)) target_bBR_fifof(.RST_N(wciS0_MReset_n),
					    .CLK(wciS0_Clk),
					    .D_IN(target_bBR_fifof$D_IN),
					    .ENQ(target_bBR_fifof$ENQ),
					    .DEQ(target_bBR_fifof$DEQ),
					    .CLR(target_bBR_fifof$CLR),
					    .D_OUT(target_bBR_fifof$D_OUT),
					    .FULL_N(),
					    .EMPTY_N(target_bBR_fifof$EMPTY_N));

  // submodule target_reqF
  FIFO1 #(.width(32'd71), .guarded(32'd1)) target_reqF(.RST_N(wciS0_MReset_n),
						       .CLK(wciS0_Clk),
						       .D_IN(target_reqF$D_IN),
						       .ENQ(target_reqF$ENQ),
						       .DEQ(target_reqF$DEQ),
						       .CLR(target_reqF$CLR),
						       .D_OUT(),
						       .FULL_N(target_reqF$FULL_N),
						       .EMPTY_N());

  // submodule target_respF
  FIFO1 #(.width(32'd35),
	  .guarded(32'd1)) target_respF(.RST_N(wciS0_MReset_n),
					.CLK(wciS0_Clk),
					.D_IN(target_respF$D_IN),
					.ENQ(target_respF$ENQ),
					.DEQ(target_respF$DEQ),
					.CLR(target_respF$CLR),
					.D_OUT(target_respF$D_OUT),
					.FULL_N(),
					.EMPTY_N(target_respF$EMPTY_N));

  // submodule target_wBR_fifof
  FIFO2 #(.width(32'd36),
	  .guarded(32'd1)) target_wBR_fifof(.RST_N(wciS0_MReset_n),
					    .CLK(wciS0_Clk),
					    .D_IN(target_wBR_fifof$D_IN),
					    .ENQ(target_wBR_fifof$ENQ),
					    .DEQ(target_wBR_fifof$DEQ),
					    .CLR(target_wBR_fifof$CLR),
					    .D_OUT(target_wBR_fifof$D_OUT),
					    .FULL_N(),
					    .EMPTY_N(target_wBR_fifof$EMPTY_N));

  // rule RL_target_wci_write_request
  assign CAN_FIRE_RL_target_wci_write_request =
	     target_awBR_fifof$EMPTY_N && target_wBR_fifof$EMPTY_N &&
	     target_reqF$FULL_N ;
  assign WILL_FIRE_RL_target_wci_write_request =
	     CAN_FIRE_RL_target_wci_write_request ;

  // rule RL_target_wci_read_request
  assign CAN_FIRE_RL_target_wci_read_request =
	     target_reqF$FULL_N && target_bBR_fifof$EMPTY_N ;
  assign WILL_FIRE_RL_target_wci_read_request =
	     CAN_FIRE_RL_target_wci_read_request &&
	     !WILL_FIRE_RL_target_wci_write_request ;

  // rule RL_target_config_write_response
  assign CAN_FIRE_RL_target_config_write_response =
	     target_wBS_fifof_c_r != 2'd2 && target_respF$EMPTY_N &&
	     !target_respF$D_OUT[34] ;
  assign WILL_FIRE_RL_target_config_write_response =
	     CAN_FIRE_RL_target_config_write_response ;

  // rule RL_target_config_read_response
  assign CAN_FIRE_RL_target_config_read_response =
	     target_rBS_fifof_c_r != 2'd2 && target_respF$EMPTY_N &&
	     target_respF$D_OUT[34] ;
  assign WILL_FIRE_RL_target_config_read_response =
	     CAN_FIRE_RL_target_config_read_response ;

  // rule RL_target_awBR_do_enq
  assign CAN_FIRE_RL_target_awBR_do_enq = 1'b0 ;
  assign WILL_FIRE_RL_target_awBR_do_enq = 1'b0 ;

  // rule RL_target_wBR_do_enq
  assign CAN_FIRE_RL_target_wBR_do_enq = 1'b0 ;
  assign WILL_FIRE_RL_target_wBR_do_enq = 1'b0 ;

  // rule RL_target_wBS_do_deq
  assign CAN_FIRE_RL_target_wBS_do_deq = 1'b0 ;
  assign WILL_FIRE_RL_target_wBS_do_deq = 1'b0 ;

  // rule RL_target_wBS_fifof_incCtr
  assign CAN_FIRE_RL_target_wBS_fifof_incCtr =
	     ((target_wBS_fifof_c_r == 2'd0) ?
		CAN_FIRE_RL_target_config_write_response :
		target_wBS_fifof_c_r != 2'd1 ||
		CAN_FIRE_RL_target_config_write_response) &&
	     CAN_FIRE_RL_target_config_write_response ;
  assign WILL_FIRE_RL_target_wBS_fifof_incCtr =
	     CAN_FIRE_RL_target_wBS_fifof_incCtr ;

  // rule RL_target_wBS_fifof_decCtr
  assign CAN_FIRE_RL_target_wBS_fifof_decCtr = 1'b0 ;
  assign WILL_FIRE_RL_target_wBS_fifof_decCtr = 1'b0 ;

  // rule RL_target_wBS_fifof_both
  assign CAN_FIRE_RL_target_wBS_fifof_both = 1'b0 ;
  assign WILL_FIRE_RL_target_wBS_fifof_both = 1'b0 ;

  // rule RL_target_bBR_do_enq
  assign CAN_FIRE_RL_target_bBR_do_enq = 1'b0 ;
  assign WILL_FIRE_RL_target_bBR_do_enq = 1'b0 ;

  // rule RL_target_rBS_do_deq
  assign CAN_FIRE_RL_target_rBS_do_deq = 1'b0 ;
  assign WILL_FIRE_RL_target_rBS_do_deq = 1'b0 ;

  // rule RL_target_rBS_fifof_incCtr
  assign CAN_FIRE_RL_target_rBS_fifof_incCtr =
	     ((target_rBS_fifof_c_r == 2'd0) ?
		CAN_FIRE_RL_target_config_read_response :
		target_rBS_fifof_c_r != 2'd1 ||
		CAN_FIRE_RL_target_config_read_response) &&
	     CAN_FIRE_RL_target_config_read_response ;
  assign WILL_FIRE_RL_target_rBS_fifof_incCtr =
	     CAN_FIRE_RL_target_rBS_fifof_incCtr ;

  // rule RL_target_rBS_fifof_decCtr
  assign CAN_FIRE_RL_target_rBS_fifof_decCtr = 1'b0 ;
  assign WILL_FIRE_RL_target_rBS_fifof_decCtr = 1'b0 ;

  // rule RL_target_rBS_fifof_both
  assign CAN_FIRE_RL_target_rBS_fifof_both = 1'b0 ;
  assign WILL_FIRE_RL_target_rBS_fifof_both = 1'b0 ;

  // inputs to muxes for submodule ports
  assign MUX_target_rBS_fifof_q_0$write_1__SEL_1 =
	     WILL_FIRE_RL_target_rBS_fifof_incCtr &&
	     target_rBS_fifof_c_r == 2'd0 ;
  assign MUX_target_rBS_fifof_q_1$write_1__SEL_1 =
	     WILL_FIRE_RL_target_rBS_fifof_incCtr &&
	     target_rBS_fifof_c_r == 2'd1 ;
  assign MUX_target_wBS_fifof_q_0$write_1__SEL_2 =
	     WILL_FIRE_RL_target_wBS_fifof_incCtr &&
	     target_wBS_fifof_c_r == 2'd0 ;
  assign MUX_target_wBS_fifof_q_1$write_1__SEL_2 =
	     WILL_FIRE_RL_target_wBS_fifof_incCtr &&
	     target_wBS_fifof_c_r == 2'd1 ;
  assign MUX_target_rBS_fifof_c_r$write_1__VAL_1 =
	     target_rBS_fifof_c_r + 2'd1 ;
  assign MUX_target_rBS_fifof_q_0$write_1__VAL_1 =
	     { 2'd0, target_respF$D_OUT[31:0] } ;
  assign MUX_target_reqF$enq_1__VAL_1 =
	     { 3'd4,
	       target_wBR_fifof$D_OUT[35:32],
	       target_awBR_fifof$D_OUT[31:0],
	       target_wBR_fifof$D_OUT[31:0] } ;
  assign MUX_target_reqF$enq_1__VAL_2 =
	     { 7'd80, target_bBR_fifof$D_OUT[31:0], 32'd0 } ;
  assign MUX_target_wBS_fifof_c_r$write_1__VAL_1 =
	     target_wBS_fifof_c_r + 2'd1 ;

  // inlined wires
  assign target_wBS_fifof_x_wire$wget = 2'd0 ;
  assign target_wBS_fifof_x_wire$whas =
	     CAN_FIRE_RL_target_config_write_response ;
  assign target_rBS_fifof_x_wire$wget =
	     MUX_target_rBS_fifof_q_0$write_1__VAL_1 ;
  assign target_rBS_fifof_x_wire$whas =
	     CAN_FIRE_RL_target_config_read_response ;
  assign target_awBR_enq_valid$whas = 1'b0 ;
  assign target_awBR_enq_enq$whas = 1'b0 ;
  assign target_wBR_enq_valid$whas = 1'b0 ;
  assign target_wBR_enq_enq$whas = 1'b0 ;
  assign target_wBS_fifof_enqueueing$whas =
	     CAN_FIRE_RL_target_config_write_response ;
  assign target_wBS_fifof_dequeueing$whas = 1'b0 ;
  assign target_wBS_deq_ready$whas = 1'b0 ;
  assign target_wBS_deq_deq$whas = 1'b0 ;
  assign target_bBR_enq_valid$whas = 1'b0 ;
  assign target_bBR_enq_enq$whas = 1'b0 ;
  assign target_rBS_fifof_enqueueing$whas =
	     CAN_FIRE_RL_target_config_read_response ;
  assign target_rBS_fifof_dequeueing$whas = 1'b0 ;
  assign target_rBS_deq_ready$whas = 1'b0 ;
  assign target_rBS_deq_deq$whas = 1'b0 ;
  assign target_awBR_data_wire$wget = 35'h0 ;
  assign target_wBR_data_wire$wget = 36'h0 ;
  assign target_bBR_data_wire$wget = 35'h0 ;

  // register target_rBS_fifof_c_r
  assign target_rBS_fifof_c_r$D_IN = MUX_target_rBS_fifof_c_r$write_1__VAL_1 ;
  assign target_rBS_fifof_c_r$EN = WILL_FIRE_RL_target_rBS_fifof_incCtr ;

  // register target_rBS_fifof_q_0
  assign target_rBS_fifof_q_0$D_IN = MUX_target_rBS_fifof_q_0$write_1__VAL_1 ;
  assign target_rBS_fifof_q_0$EN = MUX_target_rBS_fifof_q_0$write_1__SEL_1 ;

  // register target_rBS_fifof_q_1
  assign target_rBS_fifof_q_1$D_IN = MUX_target_rBS_fifof_q_0$write_1__VAL_1 ;
  assign target_rBS_fifof_q_1$EN = MUX_target_rBS_fifof_q_1$write_1__SEL_1 ;

  // register target_wBS_fifof_c_r
  assign target_wBS_fifof_c_r$D_IN = MUX_target_wBS_fifof_c_r$write_1__VAL_1 ;
  assign target_wBS_fifof_c_r$EN = WILL_FIRE_RL_target_wBS_fifof_incCtr ;

  // register target_wBS_fifof_q_0
  assign target_wBS_fifof_q_0$D_IN = 2'd0 ;
  assign target_wBS_fifof_q_0$EN = MUX_target_wBS_fifof_q_0$write_1__SEL_2 ;

  // register target_wBS_fifof_q_1
  assign target_wBS_fifof_q_1$D_IN = 2'd0 ;
  assign target_wBS_fifof_q_1$EN = MUX_target_wBS_fifof_q_1$write_1__SEL_2 ;

  // submodule target_awBR_fifof
  assign target_awBR_fifof$D_IN = 35'h0 ;
  assign target_awBR_fifof$ENQ = 1'b0 ;
  assign target_awBR_fifof$DEQ = CAN_FIRE_RL_target_wci_write_request ;
  assign target_awBR_fifof$CLR = 1'b0 ;

  // submodule target_bBR_fifof
  assign target_bBR_fifof$D_IN = 35'h0 ;
  assign target_bBR_fifof$ENQ = 1'b0 ;
  assign target_bBR_fifof$DEQ = WILL_FIRE_RL_target_wci_read_request ;
  assign target_bBR_fifof$CLR = 1'b0 ;

  // submodule target_reqF
  assign target_reqF$D_IN =
	     WILL_FIRE_RL_target_wci_write_request ?
	       MUX_target_reqF$enq_1__VAL_1 :
	       MUX_target_reqF$enq_1__VAL_2 ;
  assign target_reqF$ENQ =
	     WILL_FIRE_RL_target_wci_write_request ||
	     WILL_FIRE_RL_target_wci_read_request ;
  assign target_reqF$DEQ = 1'b0 ;
  assign target_reqF$CLR = 1'b0 ;

  // submodule target_respF
  assign target_respF$D_IN = 35'h0 ;
  assign target_respF$ENQ = 1'b0 ;
  assign target_respF$DEQ =
	     WILL_FIRE_RL_target_config_read_response ||
	     WILL_FIRE_RL_target_config_write_response ;
  assign target_respF$CLR = 1'b0 ;

  // submodule target_wBR_fifof
  assign target_wBR_fifof$D_IN = 36'h0 ;
  assign target_wBR_fifof$ENQ = 1'b0 ;
  assign target_wBR_fifof$DEQ = CAN_FIRE_RL_target_wci_write_request ;
  assign target_wBR_fifof$CLR = 1'b0 ;

  // handling of inlined registers

  always@(posedge wciS0_Clk)
  begin
    if (!wciS0_MReset_n)
      begin
        target_rBS_fifof_c_r <= `BSV_ASSIGNMENT_DELAY 2'd0;
	target_rBS_fifof_q_0 <= `BSV_ASSIGNMENT_DELAY 34'd0;
	target_rBS_fifof_q_1 <= `BSV_ASSIGNMENT_DELAY 34'd0;
	target_wBS_fifof_c_r <= `BSV_ASSIGNMENT_DELAY 2'd0;
	target_wBS_fifof_q_0 <= `BSV_ASSIGNMENT_DELAY 2'd0;
	target_wBS_fifof_q_1 <= `BSV_ASSIGNMENT_DELAY 2'd0;
      end
    else
      begin
        if (target_rBS_fifof_c_r$EN)
	  target_rBS_fifof_c_r <= `BSV_ASSIGNMENT_DELAY
	      target_rBS_fifof_c_r$D_IN;
	if (target_rBS_fifof_q_0$EN)
	  target_rBS_fifof_q_0 <= `BSV_ASSIGNMENT_DELAY
	      target_rBS_fifof_q_0$D_IN;
	if (target_rBS_fifof_q_1$EN)
	  target_rBS_fifof_q_1 <= `BSV_ASSIGNMENT_DELAY
	      target_rBS_fifof_q_1$D_IN;
	if (target_wBS_fifof_c_r$EN)
	  target_wBS_fifof_c_r <= `BSV_ASSIGNMENT_DELAY
	      target_wBS_fifof_c_r$D_IN;
	if (target_wBS_fifof_q_0$EN)
	  target_wBS_fifof_q_0 <= `BSV_ASSIGNMENT_DELAY
	      target_wBS_fifof_q_0$D_IN;
	if (target_wBS_fifof_q_1$EN)
	  target_wBS_fifof_q_1 <= `BSV_ASSIGNMENT_DELAY
	      target_wBS_fifof_q_1$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    target_rBS_fifof_c_r = 2'h2;
    target_rBS_fifof_q_0 = 34'h2AAAAAAAA;
    target_rBS_fifof_q_1 = 34'h2AAAAAAAA;
    target_wBS_fifof_c_r = 2'h2;
    target_wBS_fifof_q_0 = 2'h2;
    target_wBS_fifof_q_1 = 2'h2;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkWciAxiTarget

