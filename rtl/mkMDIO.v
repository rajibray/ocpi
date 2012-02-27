//
// Generated by Bluespec Compiler, version 2012.01.A (build 26572, 2012-01-17)
//
// On Sat Feb 11 11:47:25 EST 2012
//
//
// Ports:
// Name                         I/O  size props
// RDY_request                    O     1 reg
// response                       O    17 reg
// RDY_response                   O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// request_req                    I    27 reg
// EN_request                     I     1
// EN_response                    I     1
// MDIO                          IO     1 inout
// MDC                           IO     1 inout
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module mkMDIO(CLK,
	      RST_N,

	      MDIO,
	      MDC,

	      request_req,
	      EN_request,
	      RDY_request,

	      EN_response,
	      response,
	      RDY_response);
  input  CLK;
  input  RST_N;

  inout  MDIO;
  inout  MDC;

  // action method user_request
  input  [26 : 0] request_req;
  input  EN_request;
  output RDY_request;

  // actionvalue method user_response
  input  EN_response;
  output [16 : 0] response;
  output RDY_response;

  // signals for module outputs
  wire [16 : 0] response;
  wire RDY_request, RDY_response;

  // inlined wires
  wire pwTick$whas;

  // register rMDC
  reg rMDC;
  wire rMDC$D_IN, rMDC$EN;

  // register rMDD
  reg rMDD;
  wire rMDD$D_IN, rMDD$EN;

  // register rOutEn
  reg rOutEn;
  wire rOutEn$D_IN, rOutEn$EN;

  // register rPhyAddr
  reg [4 : 0] rPhyAddr;
  wire [4 : 0] rPhyAddr$D_IN;
  wire rPhyAddr$EN;

  // register rRegAddr
  reg [4 : 0] rRegAddr;
  wire [4 : 0] rRegAddr$D_IN;
  wire rRegAddr$EN;

  // register rState
  reg rState;
  wire rState$D_IN, rState$EN;

  // register rWrite
  reg rWrite;
  wire rWrite$D_IN, rWrite$EN;

  // register rWriteData
  reg [15 : 0] rWriteData;
  wire [15 : 0] rWriteData$D_IN;
  wire rWriteData$EN;

  // register vrReadData
  reg vrReadData;
  wire vrReadData$D_IN, vrReadData$EN;

  // register vrReadData_1
  reg vrReadData_1;
  wire vrReadData_1$D_IN, vrReadData_1$EN;

  // register vrReadData_10
  reg vrReadData_10;
  wire vrReadData_10$D_IN, vrReadData_10$EN;

  // register vrReadData_11
  reg vrReadData_11;
  wire vrReadData_11$D_IN, vrReadData_11$EN;

  // register vrReadData_12
  reg vrReadData_12;
  wire vrReadData_12$D_IN, vrReadData_12$EN;

  // register vrReadData_13
  reg vrReadData_13;
  wire vrReadData_13$D_IN, vrReadData_13$EN;

  // register vrReadData_14
  reg vrReadData_14;
  wire vrReadData_14$D_IN, vrReadData_14$EN;

  // register vrReadData_15
  reg vrReadData_15;
  wire vrReadData_15$D_IN, vrReadData_15$EN;

  // register vrReadData_2
  reg vrReadData_2;
  wire vrReadData_2$D_IN, vrReadData_2$EN;

  // register vrReadData_3
  reg vrReadData_3;
  wire vrReadData_3$D_IN, vrReadData_3$EN;

  // register vrReadData_4
  reg vrReadData_4;
  wire vrReadData_4$D_IN, vrReadData_4$EN;

  // register vrReadData_5
  reg vrReadData_5;
  wire vrReadData_5$D_IN, vrReadData_5$EN;

  // register vrReadData_6
  reg vrReadData_6;
  wire vrReadData_6$D_IN, vrReadData_6$EN;

  // register vrReadData_7
  reg vrReadData_7;
  wire vrReadData_7$D_IN, vrReadData_7$EN;

  // register vrReadData_8
  reg vrReadData_8;
  wire vrReadData_8$D_IN, vrReadData_8$EN;

  // register vrReadData_9
  reg vrReadData_9;
  wire vrReadData_9$D_IN, vrReadData_9$EN;

  // ports of submodule fRequest
  wire [26 : 0] fRequest$D_IN, fRequest$D_OUT;
  wire fRequest$CLR,
       fRequest$DEQ,
       fRequest$EMPTY_N,
       fRequest$ENQ,
       fRequest$FULL_N;

  // ports of submodule fResponse
  wire [16 : 0] fResponse$D_IN, fResponse$D_OUT;
  wire fResponse$CLR,
       fResponse$DEQ,
       fResponse$EMPTY_N,
       fResponse$ENQ,
       fResponse$FULL_N;

  // ports of submodule rPlayIndex
  wire [7 : 0] rPlayIndex$DATA_A,
	       rPlayIndex$DATA_B,
	       rPlayIndex$DATA_C,
	       rPlayIndex$DATA_F,
	       rPlayIndex$Q_OUT;
  wire rPlayIndex$ADDA, rPlayIndex$ADDB, rPlayIndex$SETC, rPlayIndex$SETF;

  // ports of submodule rPrescaler
  wire [3 : 0] rPrescaler$DATA_A,
	       rPrescaler$DATA_B,
	       rPrescaler$DATA_C,
	       rPrescaler$DATA_F,
	       rPrescaler$Q_OUT;
  wire rPrescaler$ADDA, rPrescaler$ADDB, rPrescaler$SETC, rPrescaler$SETF;

  // ports of submodule tMDC
  wire tMDC$IO;

  // ports of submodule tMDD
  wire tMDD$IO, tMDD$O;

  // rule scheduling signals
  wire WILL_FIRE_RL_run_frame;

  // inputs to muxes for submodule ports
  wire MUX_rState$write_1__SEL_1, MUX_rState$write_1__SEL_2;

  // remaining internal signals
  wire [101 : 0] _1448743543117976458853375091858__q1,
		 _321685687669320__q2,
		 bs__h14892,
		 bs__h2429;
  wire [15 : 0] x_data__h18090;
  wire [2 : 0] d0__h2044,
	       d10__h2034,
	       d11__h2033,
	       d12__h2032,
	       d13__h2031,
	       d14__h2030,
	       d15__h2029,
	       d1__h2043,
	       d2__h2042,
	       d3__h2041,
	       d4__h2040,
	       d5__h2039,
	       d6__h2038,
	       d7__h2037,
	       d8__h2036,
	       d9__h2035,
	       pa0__h2021,
	       pa1__h2020,
	       pa2__h2019,
	       pa3__h2018,
	       pa4__h2017,
	       ra0__h2027,
	       ra1__h2026,
	       ra2__h2025,
	       ra3__h2024,
	       ra4__h2023;

  // action method user_request
  assign RDY_request = fRequest$FULL_N ;

  // actionvalue method user_response
  assign response = fResponse$D_OUT ;
  assign RDY_response = fResponse$EMPTY_N ;

  // submodule fRequest
  FIFO2 #(.width(32'd27), .guarded(32'd1)) fRequest(.RST_N(RST_N),
						    .CLK(CLK),
						    .D_IN(fRequest$D_IN),
						    .ENQ(fRequest$ENQ),
						    .DEQ(fRequest$DEQ),
						    .CLR(fRequest$CLR),
						    .D_OUT(fRequest$D_OUT),
						    .FULL_N(fRequest$FULL_N),
						    .EMPTY_N(fRequest$EMPTY_N));

  // submodule fResponse
  FIFO2 #(.width(32'd17), .guarded(32'd1)) fResponse(.RST_N(RST_N),
						     .CLK(CLK),
						     .D_IN(fResponse$D_IN),
						     .ENQ(fResponse$ENQ),
						     .DEQ(fResponse$DEQ),
						     .CLR(fResponse$CLR),
						     .D_OUT(fResponse$D_OUT),
						     .FULL_N(fResponse$FULL_N),
						     .EMPTY_N(fResponse$EMPTY_N));

  // submodule rPlayIndex
  Counter #(.width(32'd8), .init(8'd0)) rPlayIndex(.CLK(CLK),
						   .RST_N(RST_N),
						   .DATA_A(rPlayIndex$DATA_A),
						   .DATA_B(rPlayIndex$DATA_B),
						   .DATA_C(rPlayIndex$DATA_C),
						   .DATA_F(rPlayIndex$DATA_F),
						   .ADDA(rPlayIndex$ADDA),
						   .ADDB(rPlayIndex$ADDB),
						   .SETC(rPlayIndex$SETC),
						   .SETF(rPlayIndex$SETF),
						   .Q_OUT(rPlayIndex$Q_OUT));

  // submodule rPrescaler
  Counter #(.width(32'd4), .init(4'd6)) rPrescaler(.CLK(CLK),
						   .RST_N(RST_N),
						   .DATA_A(rPrescaler$DATA_A),
						   .DATA_B(rPrescaler$DATA_B),
						   .DATA_C(rPrescaler$DATA_C),
						   .DATA_F(rPrescaler$DATA_F),
						   .ADDA(rPrescaler$ADDA),
						   .ADDB(rPrescaler$ADDB),
						   .SETC(rPrescaler$SETC),
						   .SETF(rPrescaler$SETF),
						   .Q_OUT(rPrescaler$Q_OUT));

  // submodule tMDC
  TriState #(.width(32'd1)) tMDC(.I(rMDC), .OE(1'd1), .O(), .IO(tMDC$IO));

  // submodule tMDD
  TriState #(.width(32'd1)) tMDD(.I(rMDD),
				 .OE(rOutEn),
				 .O(tMDD$O),
				 .IO(MDIO));

  // rule RL_run_frame
  assign WILL_FIRE_RL_run_frame =
	     (rPlayIndex$Q_OUT != 8'd0 || rWrite || fResponse$FULL_N) &&
	     rState &&
	     rPrescaler$Q_OUT == 4'd0 ;

  // inputs to muxes for submodule ports
  assign MUX_rState$write_1__SEL_1 =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT == 8'd0 ;
  assign MUX_rState$write_1__SEL_2 = fRequest$EMPTY_N && !rState ;

  // inlined wires
  assign pwTick$whas = rPrescaler$Q_OUT == 4'd0 ;

  // register rMDC
  assign rMDC$D_IN =
	     _1448743543117976458853375091858__q1[rPlayIndex$Q_OUT[6:0]] ;
  assign rMDC$EN = WILL_FIRE_RL_run_frame ;

  // register rMDD
  assign rMDD$D_IN = bs__h2429[rPlayIndex$Q_OUT[6:0]] ;
  assign rMDD$EN = WILL_FIRE_RL_run_frame ;

  // register rOutEn
  assign rOutEn$D_IN = bs__h14892[rPlayIndex$Q_OUT[6:0]] ;
  assign rOutEn$EN = WILL_FIRE_RL_run_frame ;

  // register rPhyAddr
  assign rPhyAddr$D_IN = fRequest$D_OUT[25:21] ;
  assign rPhyAddr$EN = MUX_rState$write_1__SEL_2 ;

  // register rRegAddr
  assign rRegAddr$D_IN = fRequest$D_OUT[20:16] ;
  assign rRegAddr$EN = MUX_rState$write_1__SEL_2 ;

  // register rState
  assign rState$D_IN = !MUX_rState$write_1__SEL_1 ;
  assign rState$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT == 8'd0 ||
	     fRequest$EMPTY_N && !rState ;

  // register rWrite
  assign rWrite$D_IN = fRequest$D_OUT[26] ;
  assign rWrite$EN = MUX_rState$write_1__SEL_2 ;

  // register rWriteData
  assign rWriteData$D_IN = fRequest$D_OUT[15:0] ;
  assign rWriteData$EN = MUX_rState$write_1__SEL_2 ;

  // register vrReadData
  assign vrReadData$D_IN = tMDD$O ;
  assign vrReadData$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT != 8'd0 && !rWrite &&
	     _321685687669320__q2[rPlayIndex$Q_OUT[6:0]] ;

  // register vrReadData_1
  assign vrReadData_1$D_IN = vrReadData ;
  assign vrReadData_1$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT != 8'd0 && !rWrite &&
	     _321685687669320__q2[rPlayIndex$Q_OUT[6:0]] ;

  // register vrReadData_10
  assign vrReadData_10$D_IN = vrReadData_9 ;
  assign vrReadData_10$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT != 8'd0 && !rWrite &&
	     _321685687669320__q2[rPlayIndex$Q_OUT[6:0]] ;

  // register vrReadData_11
  assign vrReadData_11$D_IN = vrReadData_10 ;
  assign vrReadData_11$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT != 8'd0 && !rWrite &&
	     _321685687669320__q2[rPlayIndex$Q_OUT[6:0]] ;

  // register vrReadData_12
  assign vrReadData_12$D_IN = vrReadData_11 ;
  assign vrReadData_12$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT != 8'd0 && !rWrite &&
	     _321685687669320__q2[rPlayIndex$Q_OUT[6:0]] ;

  // register vrReadData_13
  assign vrReadData_13$D_IN = vrReadData_12 ;
  assign vrReadData_13$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT != 8'd0 && !rWrite &&
	     _321685687669320__q2[rPlayIndex$Q_OUT[6:0]] ;

  // register vrReadData_14
  assign vrReadData_14$D_IN = vrReadData_13 ;
  assign vrReadData_14$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT != 8'd0 && !rWrite &&
	     _321685687669320__q2[rPlayIndex$Q_OUT[6:0]] ;

  // register vrReadData_15
  assign vrReadData_15$D_IN = vrReadData_14 ;
  assign vrReadData_15$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT != 8'd0 && !rWrite &&
	     _321685687669320__q2[rPlayIndex$Q_OUT[6:0]] ;

  // register vrReadData_2
  assign vrReadData_2$D_IN = vrReadData_1 ;
  assign vrReadData_2$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT != 8'd0 && !rWrite &&
	     _321685687669320__q2[rPlayIndex$Q_OUT[6:0]] ;

  // register vrReadData_3
  assign vrReadData_3$D_IN = vrReadData_2 ;
  assign vrReadData_3$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT != 8'd0 && !rWrite &&
	     _321685687669320__q2[rPlayIndex$Q_OUT[6:0]] ;

  // register vrReadData_4
  assign vrReadData_4$D_IN = vrReadData_3 ;
  assign vrReadData_4$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT != 8'd0 && !rWrite &&
	     _321685687669320__q2[rPlayIndex$Q_OUT[6:0]] ;

  // register vrReadData_5
  assign vrReadData_5$D_IN = vrReadData_4 ;
  assign vrReadData_5$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT != 8'd0 && !rWrite &&
	     _321685687669320__q2[rPlayIndex$Q_OUT[6:0]] ;

  // register vrReadData_6
  assign vrReadData_6$D_IN = vrReadData_5 ;
  assign vrReadData_6$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT != 8'd0 && !rWrite &&
	     _321685687669320__q2[rPlayIndex$Q_OUT[6:0]] ;

  // register vrReadData_7
  assign vrReadData_7$D_IN = vrReadData_6 ;
  assign vrReadData_7$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT != 8'd0 && !rWrite &&
	     _321685687669320__q2[rPlayIndex$Q_OUT[6:0]] ;

  // register vrReadData_8
  assign vrReadData_8$D_IN = vrReadData_7 ;
  assign vrReadData_8$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT != 8'd0 && !rWrite &&
	     _321685687669320__q2[rPlayIndex$Q_OUT[6:0]] ;

  // register vrReadData_9
  assign vrReadData_9$D_IN = vrReadData_8 ;
  assign vrReadData_9$EN =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT != 8'd0 && !rWrite &&
	     _321685687669320__q2[rPlayIndex$Q_OUT[6:0]] ;

  // submodule fRequest
  assign fRequest$D_IN = request_req ;
  assign fRequest$ENQ = EN_request ;
  assign fRequest$DEQ = MUX_rState$write_1__SEL_2 ;
  assign fRequest$CLR = 1'b0 ;

  // submodule fResponse
  assign fResponse$D_IN = { 1'd1, x_data__h18090 } ;
  assign fResponse$ENQ =
	     WILL_FIRE_RL_run_frame && rPlayIndex$Q_OUT == 8'd0 && !rWrite ;
  assign fResponse$DEQ = EN_response ;
  assign fResponse$CLR = 1'b0 ;

  // submodule rPlayIndex
  assign rPlayIndex$DATA_A = 8'h0 ;
  assign rPlayIndex$DATA_B = 8'd255 ;
  assign rPlayIndex$DATA_C = 8'h0 ;
  assign rPlayIndex$DATA_F = 8'd101 ;
  assign rPlayIndex$ADDA = 1'b0 ;
  assign rPlayIndex$ADDB = WILL_FIRE_RL_run_frame ;
  assign rPlayIndex$SETC = 1'b0 ;
  assign rPlayIndex$SETF = MUX_rState$write_1__SEL_2 ;

  // submodule rPrescaler
  assign rPrescaler$DATA_A = 4'h0 ;
  assign rPrescaler$DATA_B = 4'd15 ;
  assign rPrescaler$DATA_C = 4'h0 ;
  assign rPrescaler$DATA_F = 4'd6 ;
  assign rPrescaler$ADDA = 1'b0 ;
  assign rPrescaler$ADDB = rPrescaler$Q_OUT != 4'd0 ;
  assign rPrescaler$SETC = 1'b0 ;
  assign rPrescaler$SETF = rPrescaler$Q_OUT == 4'd0 ;

  // remaining internal signals
  assign _1448743543117976458853375091858__q1 =
	     102'h12492492492492492492492492 ;
  assign _321685687669320__q2 = 102'h00000000000001249249249248 ;
  assign bs__h14892 =
	     rWrite ?
	       102'h3FFFFFFFFFFFFFFFFFFFFFFFFF :
	       102'h3FFFFFFFFFFE00000000000000 ;
  assign bs__h2429 =
	     { rWrite ? 15'd29127 : 15'd29176,
	       pa4__h2017,
	       pa3__h2018,
	       pa2__h2019,
	       pa1__h2020,
	       pa0__h2021,
	       ra4__h2023,
	       ra3__h2024,
	       ra2__h2025,
	       ra1__h2026,
	       ra0__h2027,
	       6'd56,
	       d15__h2029,
	       d14__h2030,
	       d13__h2031,
	       d12__h2032,
	       d11__h2033,
	       d10__h2034,
	       d9__h2035,
	       d8__h2036,
	       d7__h2037,
	       d6__h2038,
	       d5__h2039,
	       d4__h2040,
	       d3__h2041,
	       d2__h2042,
	       d1__h2043,
	       d0__h2044,
	       3'b111 } ;
  assign d0__h2044 = {3{rWriteData[0]}} ;
  assign d10__h2034 = {3{rWriteData[10]}} ;
  assign d11__h2033 = {3{rWriteData[11]}} ;
  assign d12__h2032 = {3{rWriteData[12]}} ;
  assign d13__h2031 = {3{rWriteData[13]}} ;
  assign d14__h2030 = {3{rWriteData[14]}} ;
  assign d15__h2029 = {3{rWriteData[15]}} ;
  assign d1__h2043 = {3{rWriteData[1]}} ;
  assign d2__h2042 = {3{rWriteData[2]}} ;
  assign d3__h2041 = {3{rWriteData[3]}} ;
  assign d4__h2040 = {3{rWriteData[4]}} ;
  assign d5__h2039 = {3{rWriteData[5]}} ;
  assign d6__h2038 = {3{rWriteData[6]}} ;
  assign d7__h2037 = {3{rWriteData[7]}} ;
  assign d8__h2036 = {3{rWriteData[8]}} ;
  assign d9__h2035 = {3{rWriteData[9]}} ;
  assign pa0__h2021 = {3{rPhyAddr[0]}} ;
  assign pa1__h2020 = {3{rPhyAddr[1]}} ;
  assign pa2__h2019 = {3{rPhyAddr[2]}} ;
  assign pa3__h2018 = {3{rPhyAddr[3]}} ;
  assign pa4__h2017 = {3{rPhyAddr[4]}} ;
  assign ra0__h2027 = {3{rRegAddr[0]}} ;
  assign ra1__h2026 = {3{rRegAddr[1]}} ;
  assign ra2__h2025 = {3{rRegAddr[2]}} ;
  assign ra3__h2024 = {3{rRegAddr[3]}} ;
  assign ra4__h2023 = {3{rRegAddr[4]}} ;
  assign x_data__h18090 =
	     { vrReadData_15,
	       vrReadData_14,
	       vrReadData_13,
	       vrReadData_12,
	       vrReadData_11,
	       vrReadData_10,
	       vrReadData_9,
	       vrReadData_8,
	       vrReadData_7,
	       vrReadData_6,
	       vrReadData_5,
	       vrReadData_4,
	       vrReadData_3,
	       vrReadData_2,
	       vrReadData_1,
	       vrReadData } ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (!RST_N)
      begin
        rMDC <= `BSV_ASSIGNMENT_DELAY 1'd1;
	rMDD <= `BSV_ASSIGNMENT_DELAY 1'd1;
	rOutEn <= `BSV_ASSIGNMENT_DELAY 1'd1;
	rState <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (rMDC$EN) rMDC <= `BSV_ASSIGNMENT_DELAY rMDC$D_IN;
	if (rMDD$EN) rMDD <= `BSV_ASSIGNMENT_DELAY rMDD$D_IN;
	if (rOutEn$EN) rOutEn <= `BSV_ASSIGNMENT_DELAY rOutEn$D_IN;
	if (rState$EN) rState <= `BSV_ASSIGNMENT_DELAY rState$D_IN;
      end
    if (rPhyAddr$EN) rPhyAddr <= `BSV_ASSIGNMENT_DELAY rPhyAddr$D_IN;
    if (rRegAddr$EN) rRegAddr <= `BSV_ASSIGNMENT_DELAY rRegAddr$D_IN;
    if (rWrite$EN) rWrite <= `BSV_ASSIGNMENT_DELAY rWrite$D_IN;
    if (rWriteData$EN) rWriteData <= `BSV_ASSIGNMENT_DELAY rWriteData$D_IN;
    if (vrReadData$EN) vrReadData <= `BSV_ASSIGNMENT_DELAY vrReadData$D_IN;
    if (vrReadData_1$EN)
      vrReadData_1 <= `BSV_ASSIGNMENT_DELAY vrReadData_1$D_IN;
    if (vrReadData_10$EN)
      vrReadData_10 <= `BSV_ASSIGNMENT_DELAY vrReadData_10$D_IN;
    if (vrReadData_11$EN)
      vrReadData_11 <= `BSV_ASSIGNMENT_DELAY vrReadData_11$D_IN;
    if (vrReadData_12$EN)
      vrReadData_12 <= `BSV_ASSIGNMENT_DELAY vrReadData_12$D_IN;
    if (vrReadData_13$EN)
      vrReadData_13 <= `BSV_ASSIGNMENT_DELAY vrReadData_13$D_IN;
    if (vrReadData_14$EN)
      vrReadData_14 <= `BSV_ASSIGNMENT_DELAY vrReadData_14$D_IN;
    if (vrReadData_15$EN)
      vrReadData_15 <= `BSV_ASSIGNMENT_DELAY vrReadData_15$D_IN;
    if (vrReadData_2$EN)
      vrReadData_2 <= `BSV_ASSIGNMENT_DELAY vrReadData_2$D_IN;
    if (vrReadData_3$EN)
      vrReadData_3 <= `BSV_ASSIGNMENT_DELAY vrReadData_3$D_IN;
    if (vrReadData_4$EN)
      vrReadData_4 <= `BSV_ASSIGNMENT_DELAY vrReadData_4$D_IN;
    if (vrReadData_5$EN)
      vrReadData_5 <= `BSV_ASSIGNMENT_DELAY vrReadData_5$D_IN;
    if (vrReadData_6$EN)
      vrReadData_6 <= `BSV_ASSIGNMENT_DELAY vrReadData_6$D_IN;
    if (vrReadData_7$EN)
      vrReadData_7 <= `BSV_ASSIGNMENT_DELAY vrReadData_7$D_IN;
    if (vrReadData_8$EN)
      vrReadData_8 <= `BSV_ASSIGNMENT_DELAY vrReadData_8$D_IN;
    if (vrReadData_9$EN)
      vrReadData_9 <= `BSV_ASSIGNMENT_DELAY vrReadData_9$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    rMDC = 1'h0;
    rMDD = 1'h0;
    rOutEn = 1'h0;
    rPhyAddr = 5'h0A;
    rRegAddr = 5'h0A;
    rState = 1'h0;
    rWrite = 1'h0;
    rWriteData = 16'hAAAA;
    vrReadData = 1'h0;
    vrReadData_1 = 1'h0;
    vrReadData_10 = 1'h0;
    vrReadData_11 = 1'h0;
    vrReadData_12 = 1'h0;
    vrReadData_13 = 1'h0;
    vrReadData_14 = 1'h0;
    vrReadData_15 = 1'h0;
    vrReadData_2 = 1'h0;
    vrReadData_3 = 1'h0;
    vrReadData_4 = 1'h0;
    vrReadData_5 = 1'h0;
    vrReadData_6 = 1'h0;
    vrReadData_7 = 1'h0;
    vrReadData_8 = 1'h0;
    vrReadData_9 = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkMDIO
