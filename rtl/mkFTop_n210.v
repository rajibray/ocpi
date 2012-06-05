//
// Generated by Bluespec Compiler, version 2012.01.A (build 26572, 2012-01-17)
//
// On Tue Jun  5 14:17:11 EDT 2012
//
//
// Ports:
// Name                         I/O  size props
// led                            O     5
// debug                          O    32 const
// gmii_tx_txd                    O     8
// gmii_tx_tx_en                  O     1
// gmii_tx_tx_er                  O     1
// gmii_led                       O     1 reg
// adc_oe                         O     1 const
// adc_resetp                     O     1 reg
// adc_sen                        O     1 reg
// adc_sdata                      O     1 reg
// rxclkBnd                       O     1 clock
// CLK_GATE_rxclkBnd              O     1 const
// gmii_tx_tx_clk                 O     1 clock
// CLK_GATE_gmii_tx_tx_clk        O     1 const
// adc_sclk                       O     1 clock
// CLK_GATE_adc_sclk              O     1 const
// adc_sclkn                      O     1 clock
// CLK_GATE_adc_sclkn             O     1 const
// sys0Clk                        O     1 clock
// CLK_GATE_sys0Clk               O     1 const
// sys125Clk                      O     1 clock
// CLK_GATE_sys125Clk             O     1 const
// gmii_rstn                      O     1 reset
// adc_rst                        O     1 reset
// sys0Rst                        O     1 reset
// sys125Rst                      O     1 reset
// sys0_clkp                      I     1 clock
// sys0_clkn                      I     1 clock
// gmii_sysclk                    I     1 clock
// gmii_rx_clk                    I     1 clock
// adc_clkout                     I     1 clock
// fpga_rstn                      I     1 reset
// gmii_rx_rxd_i                  I     8 reg
// gmii_rx_rx_dv_i                I     1 reg
// gmii_rx_rx_er_i                I     1 reg
// gmii_col_i                     I     1
// gmii_crs_i                     I     1
// gmii_intr_i                    I     1
// adc_da_i                       I    14 reg
// adc_db_i                       I    14 reg
// adc_sdout_i                    I     1 reg
// mdio_mdd                      IO     1 inout
// mdio_mdc                      IO     1 inout
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module mkFTop_n210(sys0_clkp,
		   sys0_clkn,
		   gmii_sysclk,
		   gmii_rx_clk,
		   adc_clkout,
		   fpga_rstn,

		   mdio_mdd,
		   mdio_mdc,

		   led,

		   debug,

		   gmii_rx_rxd_i,

		   gmii_rx_rx_dv_i,

		   gmii_rx_rx_er_i,

		   gmii_tx_txd,

		   gmii_tx_tx_en,

		   gmii_tx_tx_er,

		   gmii_col_i,

		   gmii_crs_i,

		   gmii_intr_i,

		   gmii_led,

		   adc_oe,

		   adc_da_i,

		   adc_db_i,

		   adc_resetp,

		   adc_sen,

		   adc_sdata,

		   adc_sdout_i,

		   rxclkBnd,
		   CLK_GATE_rxclkBnd,

		   gmii_tx_tx_clk,
		   CLK_GATE_gmii_tx_tx_clk,

		   adc_sclk,
		   CLK_GATE_adc_sclk,

		   adc_sclkn,
		   CLK_GATE_adc_sclkn,

		   sys0Clk,
		   CLK_GATE_sys0Clk,

		   sys125Clk,
		   CLK_GATE_sys125Clk,

		   gmii_rstn,
		   adc_rst,
		   sys0Rst,
		   sys125Rst);
  input  sys0_clkp;
  input  sys0_clkn;
  input  gmii_sysclk;
  input  gmii_rx_clk;
  input  adc_clkout;
  input  fpga_rstn;

  inout  mdio_mdd;
  inout  mdio_mdc;

  // value method led
  output [4 : 0] led;

  // value method debug
  output [31 : 0] debug;

  // action method gmii_rx_rxd
  input  [7 : 0] gmii_rx_rxd_i;

  // action method gmii_rx_rx_dv
  input  gmii_rx_rx_dv_i;

  // action method gmii_rx_rx_er
  input  gmii_rx_rx_er_i;

  // value method gmii_tx_txd
  output [7 : 0] gmii_tx_txd;

  // value method gmii_tx_tx_en
  output gmii_tx_tx_en;

  // value method gmii_tx_tx_er
  output gmii_tx_tx_er;

  // action method gmii_col
  input  gmii_col_i;

  // action method gmii_crs
  input  gmii_crs_i;

  // action method gmii_intr
  input  gmii_intr_i;

  // value method gmii_led
  output gmii_led;

  // value method adc_oe
  output adc_oe;

  // action method adc_da
  input  [13 : 0] adc_da_i;

  // action method adc_db
  input  [13 : 0] adc_db_i;

  // value method adc_resetp
  output adc_resetp;

  // value method adc_sen
  output adc_sen;

  // value method adc_sdata
  output adc_sdata;

  // action method adc_sdout
  input  adc_sdout_i;

  // oscillator and gates for output clock rxclkBnd
  output rxclkBnd;
  output CLK_GATE_rxclkBnd;

  // oscillator and gates for output clock gmii_tx_tx_clk
  output gmii_tx_tx_clk;
  output CLK_GATE_gmii_tx_tx_clk;

  // oscillator and gates for output clock adc_sclk
  output adc_sclk;
  output CLK_GATE_adc_sclk;

  // oscillator and gates for output clock adc_sclkn
  output adc_sclkn;
  output CLK_GATE_adc_sclkn;

  // oscillator and gates for output clock sys0Clk
  output sys0Clk;
  output CLK_GATE_sys0Clk;

  // oscillator and gates for output clock sys125Clk
  output sys125Clk;
  output CLK_GATE_sys125Clk;

  // output resets
  output gmii_rstn;
  output adc_rst;
  output sys0Rst;
  output sys125Rst;

  // signals for module outputs
  wire [31 : 0] debug;
  wire [7 : 0] gmii_tx_txd;
  wire [4 : 0] led;
  wire CLK_GATE_adc_sclk,
       CLK_GATE_adc_sclkn,
       CLK_GATE_gmii_tx_tx_clk,
       CLK_GATE_rxclkBnd,
       CLK_GATE_sys0Clk,
       CLK_GATE_sys125Clk,
       adc_oe,
       adc_resetp,
       adc_rst,
       adc_sclk,
       adc_sclkn,
       adc_sdata,
       adc_sen,
       gmii_led,
       gmii_rstn,
       gmii_tx_tx_clk,
       gmii_tx_tx_en,
       gmii_tx_tx_er,
       rxclkBnd,
       sys0Clk,
       sys0Rst,
       sys125Clk,
       sys125Rst;

  // ports of submodule clkIn
  wire clkIn$O;

  // ports of submodule clkN210
  wire clkN210$clk0_buf,
       clkN210$clk0_rstn,
       clkN210$clk125_buf,
       clkN210$clk125_rstn,
       clkN210$clk2x_buf,
       clkN210$clk2x_rstn,
       clkN210$clkdv_buf,
       clkN210$clkdv_rstn;

  // ports of submodule cp
  wire [511 : 0] cp$uuid_arg;
  wire [58 : 0] cp$server_request_put;
  wire [39 : 0] cp$server_response_get;
  wire [31 : 0] cp$wci_Vm_0_SData,
		cp$wci_Vm_10_MAddr,
		cp$wci_Vm_10_MData,
		cp$wci_Vm_10_SData,
		cp$wci_Vm_11_SData,
		cp$wci_Vm_12_SData,
		cp$wci_Vm_13_SData,
		cp$wci_Vm_14_SData,
		cp$wci_Vm_1_SData,
		cp$wci_Vm_2_SData,
		cp$wci_Vm_3_SData,
		cp$wci_Vm_4_SData,
		cp$wci_Vm_5_SData,
		cp$wci_Vm_6_SData,
		cp$wci_Vm_7_MAddr,
		cp$wci_Vm_7_MData,
		cp$wci_Vm_7_SData,
		cp$wci_Vm_8_MAddr,
		cp$wci_Vm_8_MData,
		cp$wci_Vm_8_SData,
		cp$wci_Vm_9_SData;
  wire [3 : 0] cp$wci_Vm_10_MByteEn, cp$wci_Vm_7_MByteEn, cp$wci_Vm_8_MByteEn;
  wire [2 : 0] cp$switch_x,
	       cp$wci_Vm_10_MCmd,
	       cp$wci_Vm_7_MCmd,
	       cp$wci_Vm_8_MCmd;
  wire [1 : 0] cp$wci_Vm_0_SFlag,
	       cp$wci_Vm_0_SResp,
	       cp$wci_Vm_10_MFlag,
	       cp$wci_Vm_10_SFlag,
	       cp$wci_Vm_10_SResp,
	       cp$wci_Vm_11_SFlag,
	       cp$wci_Vm_11_SResp,
	       cp$wci_Vm_12_SFlag,
	       cp$wci_Vm_12_SResp,
	       cp$wci_Vm_13_SFlag,
	       cp$wci_Vm_13_SResp,
	       cp$wci_Vm_14_SFlag,
	       cp$wci_Vm_14_SResp,
	       cp$wci_Vm_1_SFlag,
	       cp$wci_Vm_1_SResp,
	       cp$wci_Vm_2_SFlag,
	       cp$wci_Vm_2_SResp,
	       cp$wci_Vm_3_SFlag,
	       cp$wci_Vm_3_SResp,
	       cp$wci_Vm_4_SFlag,
	       cp$wci_Vm_4_SResp,
	       cp$wci_Vm_5_SFlag,
	       cp$wci_Vm_5_SResp,
	       cp$wci_Vm_6_SFlag,
	       cp$wci_Vm_6_SResp,
	       cp$wci_Vm_7_MFlag,
	       cp$wci_Vm_7_SFlag,
	       cp$wci_Vm_7_SResp,
	       cp$wci_Vm_8_MFlag,
	       cp$wci_Vm_8_SFlag,
	       cp$wci_Vm_8_SResp,
	       cp$wci_Vm_9_SFlag,
	       cp$wci_Vm_9_SResp;
  wire cp$EN_server_request_put,
       cp$EN_server_response_get,
       cp$RDY_server_request_put,
       cp$RDY_server_response_get,
       cp$RST_N_wci_Vm_10,
       cp$RST_N_wci_Vm_7,
       cp$RST_N_wci_Vm_8,
       cp$gps_ppsSyncIn_x,
       cp$wci_Vm_0_SThreadBusy,
       cp$wci_Vm_10_MAddrSpace,
       cp$wci_Vm_10_SThreadBusy,
       cp$wci_Vm_11_SThreadBusy,
       cp$wci_Vm_12_SThreadBusy,
       cp$wci_Vm_13_SThreadBusy,
       cp$wci_Vm_14_SThreadBusy,
       cp$wci_Vm_1_SThreadBusy,
       cp$wci_Vm_2_SThreadBusy,
       cp$wci_Vm_3_SThreadBusy,
       cp$wci_Vm_4_SThreadBusy,
       cp$wci_Vm_5_SThreadBusy,
       cp$wci_Vm_6_SThreadBusy,
       cp$wci_Vm_7_MAddrSpace,
       cp$wci_Vm_7_SThreadBusy,
       cp$wci_Vm_8_MAddrSpace,
       cp$wci_Vm_8_SThreadBusy,
       cp$wci_Vm_9_SThreadBusy;

  // ports of submodule flash
  wire [31 : 0] flash$wciS0_MAddr, flash$wciS0_MData, flash$wciS0_SData;
  wire [3 : 0] flash$wciS0_MByteEn;
  wire [2 : 0] flash$wciS0_MCmd;
  wire [1 : 0] flash$wciS0_MFlag, flash$wciS0_SFlag, flash$wciS0_SResp;
  wire flash$flash_miso_i, flash$wciS0_MAddrSpace, flash$wciS0_SThreadBusy;

  // ports of submodule gbe0
  wire [58 : 0] gbe0$cpClient_request_get;
  wire [39 : 0] gbe0$cpClient_response_put;
  wire [7 : 0] gbe0$gmii_rx_rxd_i, gbe0$gmii_tx_txd;
  wire gbe0$CLK_gmii_tx_tx_clk,
       gbe0$CLK_rxclkBnd,
       gbe0$EN_cpClient_request_get,
       gbe0$EN_cpClient_response_put,
       gbe0$RDY_cpClient_request_get,
       gbe0$RDY_cpClient_response_put,
       gbe0$RST_N_gmii_rstn,
       gbe0$gmii_col_i,
       gbe0$gmii_crs_i,
       gbe0$gmii_intr_i,
       gbe0$gmii_led,
       gbe0$gmii_rx_rx_dv_i,
       gbe0$gmii_rx_rx_er_i,
       gbe0$gmii_tx_tx_en,
       gbe0$gmii_tx_tx_er,
       gbe0$mdio_mdc,
       gbe0$mdio_mdd;

  // ports of submodule gmiixo_clk
  wire gmiixo_clk$O;

  // ports of submodule gmiixo_rst
  wire gmiixo_rst$OUT_RST_N;

  // ports of submodule icap
  wire [31 : 0] icap$wciS0_MAddr, icap$wciS0_MData, icap$wciS0_SData;
  wire [3 : 0] icap$wciS0_MByteEn;
  wire [2 : 0] icap$wciS0_MCmd;
  wire [1 : 0] icap$wciS0_MFlag, icap$wciS0_SFlag, icap$wciS0_SResp;
  wire icap$wciS0_MAddrSpace, icap$wciS0_SThreadBusy;

  // ports of submodule iqadc
  wire [66 : 0] iqadc$wtiS0_req;
  wire [31 : 0] iqadc$wciS0_MAddr, iqadc$wciS0_MData, iqadc$wciS0_SData;
  wire [13 : 0] iqadc$adc_da_i, iqadc$adc_db_i;
  wire [3 : 0] iqadc$wciS0_MByteEn;
  wire [2 : 0] iqadc$wciS0_MCmd;
  wire [1 : 0] iqadc$wciS0_MFlag, iqadc$wciS0_SFlag, iqadc$wciS0_SResp;
  wire iqadc$CLK_adc_sclk,
       iqadc$CLK_adc_sclkn,
       iqadc$RST_N_adc_rst,
       iqadc$adc_oe,
       iqadc$adc_resetp,
       iqadc$adc_sdata,
       iqadc$adc_sdout_i,
       iqadc$adc_sen,
       iqadc$wciS0_MAddrSpace,
       iqadc$wciS0_SThreadBusy,
       iqadc$wsiM0_SReset_n,
       iqadc$wsiM0_SThreadBusy;

  // ports of submodule ledLogic
  wire [4 : 0] ledLogic$led, ledLogic$ledDrive_i;
  wire ledLogic$EN_ledDrive;

  // oscillator and gates for output clock rxclkBnd
  assign rxclkBnd = gbe0$CLK_rxclkBnd ;
  assign CLK_GATE_rxclkBnd = 1'b1 ;

  // oscillator and gates for output clock gmii_tx_tx_clk
  assign gmii_tx_tx_clk = gbe0$CLK_gmii_tx_tx_clk ;
  assign CLK_GATE_gmii_tx_tx_clk = 1'b1 ;

  // oscillator and gates for output clock adc_sclk
  assign adc_sclk = iqadc$CLK_adc_sclk ;
  assign CLK_GATE_adc_sclk = 1'b1 ;

  // oscillator and gates for output clock adc_sclkn
  assign adc_sclkn = iqadc$CLK_adc_sclkn ;
  assign CLK_GATE_adc_sclkn = 1'b1 ;

  // oscillator and gates for output clock sys0Clk
  assign sys0Clk = clkN210$clk0_buf ;
  assign CLK_GATE_sys0Clk = 1'b1 ;

  // oscillator and gates for output clock sys125Clk
  assign sys125Clk = clkN210$clk125_buf ;
  assign CLK_GATE_sys125Clk = 1'b1 ;

  // output resets
  assign gmii_rstn = gbe0$RST_N_gmii_rstn ;
  assign adc_rst = iqadc$RST_N_adc_rst ;
  assign sys0Rst = clkN210$clk0_rstn ;
  assign sys125Rst = clkN210$clk125_rstn ;

  // value method led
  assign led = ledLogic$led ;

  // value method debug
  assign debug = 32'd1431633920 ;

  // value method gmii_tx_txd
  assign gmii_tx_txd = gbe0$gmii_tx_txd ;

  // value method gmii_tx_tx_en
  assign gmii_tx_tx_en = gbe0$gmii_tx_tx_en ;

  // value method gmii_tx_tx_er
  assign gmii_tx_tx_er = gbe0$gmii_tx_tx_er ;

  // value method gmii_led
  assign gmii_led = gbe0$gmii_led ;

  // value method adc_oe
  assign adc_oe = iqadc$adc_oe ;

  // value method adc_resetp
  assign adc_resetp = iqadc$adc_resetp ;

  // value method adc_sen
  assign adc_sen = iqadc$adc_sen ;

  // value method adc_sdata
  assign adc_sdata = iqadc$adc_sdata ;

  // submodule clkIn
  IBUFDS clkIn(.I(sys0_clkp), .IB(sys0_clkn), .O(clkIn$O));

  // submodule clkN210
  clock_n210 clkN210(.clkIn(clkIn$O),
		     .rstIn(fpga_rstn),
		     .locked(),
		     .clk0_buf(clkN210$clk0_buf),
		     .clk2x_buf(clkN210$clk2x_buf),
		     .clkdv_buf(clkN210$clkdv_buf),
		     .clk125_buf(clkN210$clk125_buf),
		     .clk0_rstn(clkN210$clk0_rstn),
		     .clk2x_rstn(clkN210$clk2x_rstn),
		     .clkdv_rstn(clkN210$clkdv_rstn),
		     .clk125_rstn(clkN210$clk125_rstn));

  // submodule cp
  mkOCCP cp(.pciDevice(16'hAAAA),
	    .CLK_sys0_clk(clkN210$clk2x_buf),
	    .RST_N_sys0_rst(clkN210$clk2x_rstn),
	    .CLK(clkN210$clk0_buf),
	    .RST_N(clkN210$clk0_rstn),
	    .gps_ppsSyncIn_x(cp$gps_ppsSyncIn_x),
	    .server_request_put(cp$server_request_put),
	    .switch_x(cp$switch_x),
	    .uuid_arg(cp$uuid_arg),
	    .wci_Vm_0_SData(cp$wci_Vm_0_SData),
	    .wci_Vm_0_SFlag(cp$wci_Vm_0_SFlag),
	    .wci_Vm_0_SResp(cp$wci_Vm_0_SResp),
	    .wci_Vm_10_SData(cp$wci_Vm_10_SData),
	    .wci_Vm_10_SFlag(cp$wci_Vm_10_SFlag),
	    .wci_Vm_10_SResp(cp$wci_Vm_10_SResp),
	    .wci_Vm_11_SData(cp$wci_Vm_11_SData),
	    .wci_Vm_11_SFlag(cp$wci_Vm_11_SFlag),
	    .wci_Vm_11_SResp(cp$wci_Vm_11_SResp),
	    .wci_Vm_12_SData(cp$wci_Vm_12_SData),
	    .wci_Vm_12_SFlag(cp$wci_Vm_12_SFlag),
	    .wci_Vm_12_SResp(cp$wci_Vm_12_SResp),
	    .wci_Vm_13_SData(cp$wci_Vm_13_SData),
	    .wci_Vm_13_SFlag(cp$wci_Vm_13_SFlag),
	    .wci_Vm_13_SResp(cp$wci_Vm_13_SResp),
	    .wci_Vm_14_SData(cp$wci_Vm_14_SData),
	    .wci_Vm_14_SFlag(cp$wci_Vm_14_SFlag),
	    .wci_Vm_14_SResp(cp$wci_Vm_14_SResp),
	    .wci_Vm_1_SData(cp$wci_Vm_1_SData),
	    .wci_Vm_1_SFlag(cp$wci_Vm_1_SFlag),
	    .wci_Vm_1_SResp(cp$wci_Vm_1_SResp),
	    .wci_Vm_2_SData(cp$wci_Vm_2_SData),
	    .wci_Vm_2_SFlag(cp$wci_Vm_2_SFlag),
	    .wci_Vm_2_SResp(cp$wci_Vm_2_SResp),
	    .wci_Vm_3_SData(cp$wci_Vm_3_SData),
	    .wci_Vm_3_SFlag(cp$wci_Vm_3_SFlag),
	    .wci_Vm_3_SResp(cp$wci_Vm_3_SResp),
	    .wci_Vm_4_SData(cp$wci_Vm_4_SData),
	    .wci_Vm_4_SFlag(cp$wci_Vm_4_SFlag),
	    .wci_Vm_4_SResp(cp$wci_Vm_4_SResp),
	    .wci_Vm_5_SData(cp$wci_Vm_5_SData),
	    .wci_Vm_5_SFlag(cp$wci_Vm_5_SFlag),
	    .wci_Vm_5_SResp(cp$wci_Vm_5_SResp),
	    .wci_Vm_6_SData(cp$wci_Vm_6_SData),
	    .wci_Vm_6_SFlag(cp$wci_Vm_6_SFlag),
	    .wci_Vm_6_SResp(cp$wci_Vm_6_SResp),
	    .wci_Vm_7_SData(cp$wci_Vm_7_SData),
	    .wci_Vm_7_SFlag(cp$wci_Vm_7_SFlag),
	    .wci_Vm_7_SResp(cp$wci_Vm_7_SResp),
	    .wci_Vm_8_SData(cp$wci_Vm_8_SData),
	    .wci_Vm_8_SFlag(cp$wci_Vm_8_SFlag),
	    .wci_Vm_8_SResp(cp$wci_Vm_8_SResp),
	    .wci_Vm_9_SData(cp$wci_Vm_9_SData),
	    .wci_Vm_9_SFlag(cp$wci_Vm_9_SFlag),
	    .wci_Vm_9_SResp(cp$wci_Vm_9_SResp),
	    .EN_server_request_put(cp$EN_server_request_put),
	    .EN_server_response_get(cp$EN_server_response_get),
	    .wci_Vm_0_SThreadBusy(cp$wci_Vm_0_SThreadBusy),
	    .wci_Vm_1_SThreadBusy(cp$wci_Vm_1_SThreadBusy),
	    .wci_Vm_2_SThreadBusy(cp$wci_Vm_2_SThreadBusy),
	    .wci_Vm_3_SThreadBusy(cp$wci_Vm_3_SThreadBusy),
	    .wci_Vm_4_SThreadBusy(cp$wci_Vm_4_SThreadBusy),
	    .wci_Vm_5_SThreadBusy(cp$wci_Vm_5_SThreadBusy),
	    .wci_Vm_6_SThreadBusy(cp$wci_Vm_6_SThreadBusy),
	    .wci_Vm_7_SThreadBusy(cp$wci_Vm_7_SThreadBusy),
	    .wci_Vm_8_SThreadBusy(cp$wci_Vm_8_SThreadBusy),
	    .wci_Vm_9_SThreadBusy(cp$wci_Vm_9_SThreadBusy),
	    .wci_Vm_10_SThreadBusy(cp$wci_Vm_10_SThreadBusy),
	    .wci_Vm_11_SThreadBusy(cp$wci_Vm_11_SThreadBusy),
	    .wci_Vm_12_SThreadBusy(cp$wci_Vm_12_SThreadBusy),
	    .wci_Vm_13_SThreadBusy(cp$wci_Vm_13_SThreadBusy),
	    .wci_Vm_14_SThreadBusy(cp$wci_Vm_14_SThreadBusy),
	    .RDY_server_request_put(cp$RDY_server_request_put),
	    .server_response_get(cp$server_response_get),
	    .RDY_server_response_get(cp$RDY_server_response_get),
	    .wci_Vm_0_MCmd(),
	    .wci_Vm_0_MAddrSpace(),
	    .wci_Vm_0_MByteEn(),
	    .wci_Vm_0_MAddr(),
	    .wci_Vm_0_MData(),
	    .wci_Vm_0_MFlag(),
	    .wci_Vm_1_MCmd(),
	    .wci_Vm_1_MAddrSpace(),
	    .wci_Vm_1_MByteEn(),
	    .wci_Vm_1_MAddr(),
	    .wci_Vm_1_MData(),
	    .wci_Vm_1_MFlag(),
	    .wci_Vm_2_MCmd(),
	    .wci_Vm_2_MAddrSpace(),
	    .wci_Vm_2_MByteEn(),
	    .wci_Vm_2_MAddr(),
	    .wci_Vm_2_MData(),
	    .wci_Vm_2_MFlag(),
	    .wci_Vm_3_MCmd(),
	    .wci_Vm_3_MAddrSpace(),
	    .wci_Vm_3_MByteEn(),
	    .wci_Vm_3_MAddr(),
	    .wci_Vm_3_MData(),
	    .wci_Vm_3_MFlag(),
	    .wci_Vm_4_MCmd(),
	    .wci_Vm_4_MAddrSpace(),
	    .wci_Vm_4_MByteEn(),
	    .wci_Vm_4_MAddr(),
	    .wci_Vm_4_MData(),
	    .wci_Vm_4_MFlag(),
	    .wci_Vm_5_MCmd(),
	    .wci_Vm_5_MAddrSpace(),
	    .wci_Vm_5_MByteEn(),
	    .wci_Vm_5_MAddr(),
	    .wci_Vm_5_MData(),
	    .wci_Vm_5_MFlag(),
	    .wci_Vm_6_MCmd(),
	    .wci_Vm_6_MAddrSpace(),
	    .wci_Vm_6_MByteEn(),
	    .wci_Vm_6_MAddr(),
	    .wci_Vm_6_MData(),
	    .wci_Vm_6_MFlag(),
	    .wci_Vm_7_MCmd(cp$wci_Vm_7_MCmd),
	    .wci_Vm_7_MAddrSpace(cp$wci_Vm_7_MAddrSpace),
	    .wci_Vm_7_MByteEn(cp$wci_Vm_7_MByteEn),
	    .wci_Vm_7_MAddr(cp$wci_Vm_7_MAddr),
	    .wci_Vm_7_MData(cp$wci_Vm_7_MData),
	    .wci_Vm_7_MFlag(cp$wci_Vm_7_MFlag),
	    .wci_Vm_8_MCmd(cp$wci_Vm_8_MCmd),
	    .wci_Vm_8_MAddrSpace(cp$wci_Vm_8_MAddrSpace),
	    .wci_Vm_8_MByteEn(cp$wci_Vm_8_MByteEn),
	    .wci_Vm_8_MAddr(cp$wci_Vm_8_MAddr),
	    .wci_Vm_8_MData(cp$wci_Vm_8_MData),
	    .wci_Vm_8_MFlag(cp$wci_Vm_8_MFlag),
	    .wci_Vm_9_MCmd(),
	    .wci_Vm_9_MAddrSpace(),
	    .wci_Vm_9_MByteEn(),
	    .wci_Vm_9_MAddr(),
	    .wci_Vm_9_MData(),
	    .wci_Vm_9_MFlag(),
	    .wci_Vm_10_MCmd(cp$wci_Vm_10_MCmd),
	    .wci_Vm_10_MAddrSpace(cp$wci_Vm_10_MAddrSpace),
	    .wci_Vm_10_MByteEn(cp$wci_Vm_10_MByteEn),
	    .wci_Vm_10_MAddr(cp$wci_Vm_10_MAddr),
	    .wci_Vm_10_MData(cp$wci_Vm_10_MData),
	    .wci_Vm_10_MFlag(cp$wci_Vm_10_MFlag),
	    .wci_Vm_11_MCmd(),
	    .wci_Vm_11_MAddrSpace(),
	    .wci_Vm_11_MByteEn(),
	    .wci_Vm_11_MAddr(),
	    .wci_Vm_11_MData(),
	    .wci_Vm_11_MFlag(),
	    .wci_Vm_12_MCmd(),
	    .wci_Vm_12_MAddrSpace(),
	    .wci_Vm_12_MByteEn(),
	    .wci_Vm_12_MAddr(),
	    .wci_Vm_12_MData(),
	    .wci_Vm_12_MFlag(),
	    .wci_Vm_13_MCmd(),
	    .wci_Vm_13_MAddrSpace(),
	    .wci_Vm_13_MByteEn(),
	    .wci_Vm_13_MAddr(),
	    .wci_Vm_13_MData(),
	    .wci_Vm_13_MFlag(),
	    .wci_Vm_14_MCmd(),
	    .wci_Vm_14_MAddrSpace(),
	    .wci_Vm_14_MByteEn(),
	    .wci_Vm_14_MAddr(),
	    .wci_Vm_14_MData(),
	    .wci_Vm_14_MFlag(),
	    .cpNow(),
	    .RDY_cpNow(),
	    .gps_ppsSyncOut(),
	    .led(),
	    .RST_N_wci_Vm_0(),
	    .RST_N_wci_Vm_1(),
	    .RST_N_wci_Vm_2(),
	    .RST_N_wci_Vm_3(),
	    .RST_N_wci_Vm_4(),
	    .RST_N_wci_Vm_5(),
	    .RST_N_wci_Vm_6(),
	    .RST_N_wci_Vm_7(cp$RST_N_wci_Vm_7),
	    .RST_N_wci_Vm_8(cp$RST_N_wci_Vm_8),
	    .RST_N_wci_Vm_9(),
	    .RST_N_wci_Vm_10(cp$RST_N_wci_Vm_10),
	    .RST_N_wci_Vm_11(),
	    .RST_N_wci_Vm_12(),
	    .RST_N_wci_Vm_13(),
	    .RST_N_wci_Vm_14());

  // submodule flash
  mkSPIFlashWorker #(.hasDebugLogic(1'd1)) flash(.wciS0_Clk(clkN210$clk0_buf),
						 .wciS0_MReset_n(cp$RST_N_wci_Vm_8),
						 .flash_miso_i(flash$flash_miso_i),
						 .wciS0_MAddr(flash$wciS0_MAddr),
						 .wciS0_MAddrSpace(flash$wciS0_MAddrSpace),
						 .wciS0_MByteEn(flash$wciS0_MByteEn),
						 .wciS0_MCmd(flash$wciS0_MCmd),
						 .wciS0_MData(flash$wciS0_MData),
						 .wciS0_MFlag(flash$wciS0_MFlag),
						 .wciS0_SResp(flash$wciS0_SResp),
						 .wciS0_SData(flash$wciS0_SData),
						 .wciS0_SThreadBusy(flash$wciS0_SThreadBusy),
						 .wciS0_SFlag(flash$wciS0_SFlag),
						 .flash_mosi(),
						 .flash_clk(),
						 .flash_cs_n(),
						 .flash_wp_n());

  // submodule gbe0
  mkGbeLite #(.hasDebugLogic(1'd0)) gbe0(.CLK_gmii_rx_clk(gmii_rx_clk),
					 .CLK_gmiixo_clk(gmiixo_clk$O),
					 .RST_N_gmiixo_rst(gmiixo_rst$OUT_RST_N),
					 .CLK_cpClock(clkN210$clk0_buf),
					 .RST_N_cpReset(clkN210$clk0_rstn),
					 .wciS0_Clk(clkN210$clk125_buf),
					 .wciS0_MReset_n(clkN210$clk125_rstn),
					 .cpClient_response_put(gbe0$cpClient_response_put),
					 .gmii_col_i(gbe0$gmii_col_i),
					 .gmii_crs_i(gbe0$gmii_crs_i),
					 .gmii_intr_i(gbe0$gmii_intr_i),
					 .gmii_rx_rx_dv_i(gbe0$gmii_rx_rx_dv_i),
					 .gmii_rx_rx_er_i(gbe0$gmii_rx_rx_er_i),
					 .gmii_rx_rxd_i(gbe0$gmii_rx_rxd_i),
					 .EN_cpClient_request_get(gbe0$EN_cpClient_request_get),
					 .EN_cpClient_response_put(gbe0$EN_cpClient_response_put),
					 .cpClient_request_get(gbe0$cpClient_request_get),
					 .RDY_cpClient_request_get(gbe0$RDY_cpClient_request_get),
					 .RDY_cpClient_response_put(gbe0$RDY_cpClient_response_put),
					 .gmii_tx_txd(gbe0$gmii_tx_txd),
					 .gmii_tx_tx_en(gbe0$gmii_tx_tx_en),
					 .gmii_tx_tx_er(gbe0$gmii_tx_tx_er),
					 .gmii_led(gbe0$gmii_led),
					 .CLK_gmii_tx_tx_clk(gbe0$CLK_gmii_tx_tx_clk),
					 .CLK_GATE_gmii_tx_tx_clk(),
					 .CLK_rxclkBnd(gbe0$CLK_rxclkBnd),
					 .CLK_GATE_rxclkBnd(),
					 .RST_N_gmii_rstn(gbe0$RST_N_gmii_rstn),
					 .mdio_mdd(mdio_mdd),
					 .mdio_mdc(mdio_mdc));

  // submodule gmiixo_clk
  BUFG gmiixo_clk(.I(gmii_sysclk), .O(gmiixo_clk$O));

  // submodule gmiixo_rst
  SyncResetA #(.RSTDELAY(32'd1)) gmiixo_rst(.CLK(gmiixo_clk$O),
					    .IN_RST_N(clkN210$clk0_rstn),
					    .OUT_RST_N(gmiixo_rst$OUT_RST_N));

  // submodule icap
  mkICAPWorker #(.icapPrim("S3A"),
		 .hasDebugLogic(1'd1)) icap(.wciS0_Clk(clkN210$clk0_buf),
					    .wciS0_MReset_n(cp$RST_N_wci_Vm_7),
					    .wciS0_MAddr(icap$wciS0_MAddr),
					    .wciS0_MAddrSpace(icap$wciS0_MAddrSpace),
					    .wciS0_MByteEn(icap$wciS0_MByteEn),
					    .wciS0_MCmd(icap$wciS0_MCmd),
					    .wciS0_MData(icap$wciS0_MData),
					    .wciS0_MFlag(icap$wciS0_MFlag),
					    .wciS0_SResp(icap$wciS0_SResp),
					    .wciS0_SData(icap$wciS0_SData),
					    .wciS0_SThreadBusy(icap$wciS0_SThreadBusy),
					    .wciS0_SFlag(icap$wciS0_SFlag));

  // submodule iqadc
  mkIQADCWorker #(.hasDebugLogic(1'd1)) iqadc(.CLK_sys0_clk(clkN210$clk2x_buf),
					      .RST_N_sys0_rst(clkN210$clk2x_rstn),
					      .CLK_adc_clock(clkN210$clkdv_buf),
					      .RST_N_adc_reset(clkN210$clkdv_rstn),
					      .CLK_adcCaptureClk(adc_clkout),
					      .wciS0_Clk(clkN210$clk0_buf),
					      .wciS0_MReset_n(cp$RST_N_wci_Vm_10),
					      .adc_da_i(iqadc$adc_da_i),
					      .adc_db_i(iqadc$adc_db_i),
					      .adc_sdout_i(iqadc$adc_sdout_i),
					      .wciS0_MAddr(iqadc$wciS0_MAddr),
					      .wciS0_MAddrSpace(iqadc$wciS0_MAddrSpace),
					      .wciS0_MByteEn(iqadc$wciS0_MByteEn),
					      .wciS0_MCmd(iqadc$wciS0_MCmd),
					      .wciS0_MData(iqadc$wciS0_MData),
					      .wciS0_MFlag(iqadc$wciS0_MFlag),
					      .wtiS0_req(iqadc$wtiS0_req),
					      .wsiM0_SThreadBusy(iqadc$wsiM0_SThreadBusy),
					      .wsiM0_SReset_n(iqadc$wsiM0_SReset_n),
					      .wciS0_SResp(iqadc$wciS0_SResp),
					      .wciS0_SData(iqadc$wciS0_SData),
					      .wciS0_SThreadBusy(iqadc$wciS0_SThreadBusy),
					      .wciS0_SFlag(iqadc$wciS0_SFlag),
					      .wtiS0_SThreadBusy(),
					      .wtiS0_SReset_n(),
					      .wsiM0_MCmd(),
					      .wsiM0_MReqLast(),
					      .wsiM0_MBurstPrecise(),
					      .wsiM0_MBurstLength(),
					      .wsiM0_MData(),
					      .wsiM0_MByteEn(),
					      .wsiM0_MReqInfo(),
					      .wsiM0_MReset_n(),
					      .adc_oe(iqadc$adc_oe),
					      .adc_resetp(iqadc$adc_resetp),
					      .adc_sen(iqadc$adc_sen),
					      .adc_sdata(iqadc$adc_sdata),
					      .CLK_adc_sclk(iqadc$CLK_adc_sclk),
					      .CLK_GATE_adc_sclk(),
					      .CLK_adc_sclkn(iqadc$CLK_adc_sclkn),
					      .CLK_GATE_adc_sclkn(),
					      .CLK_adcSdrClk(),
					      .CLK_GATE_adcSdrClk(),
					      .RST_N_adc_rst(iqadc$RST_N_adc_rst),
					      .RST_N_adcSdrRst());

  // submodule ledLogic
  mkLedN210 ledLogic(.CLK(clkN210$clk0_buf),
		     .RST_N(clkN210$clk0_rstn),
		     .ledDrive_i(ledLogic$ledDrive_i),
		     .EN_ledDrive(ledLogic$EN_ledDrive),
		     .RDY_ledDrive(),
		     .led(ledLogic$led));

  // submodule cp
  assign cp$gps_ppsSyncIn_x = 1'b0 ;
  assign cp$server_request_put = gbe0$cpClient_request_get ;
  assign cp$switch_x = 3'h0 ;
  assign cp$uuid_arg = 512'h0 ;
  assign cp$wci_Vm_0_SData = 32'hAAAAAAAA /* unspecified value */  ;
  assign cp$wci_Vm_0_SFlag = 2'b0 ;
  assign cp$wci_Vm_0_SResp = 2'd0 ;
  assign cp$wci_Vm_10_SData = iqadc$wciS0_SData ;
  assign cp$wci_Vm_10_SFlag = iqadc$wciS0_SFlag ;
  assign cp$wci_Vm_10_SResp = iqadc$wciS0_SResp ;
  assign cp$wci_Vm_11_SData = 32'hAAAAAAAA /* unspecified value */  ;
  assign cp$wci_Vm_11_SFlag = 2'b0 ;
  assign cp$wci_Vm_11_SResp = 2'd0 ;
  assign cp$wci_Vm_12_SData = 32'hAAAAAAAA /* unspecified value */  ;
  assign cp$wci_Vm_12_SFlag = 2'b0 ;
  assign cp$wci_Vm_12_SResp = 2'd0 ;
  assign cp$wci_Vm_13_SData = 32'hAAAAAAAA /* unspecified value */  ;
  assign cp$wci_Vm_13_SFlag = 2'b0 ;
  assign cp$wci_Vm_13_SResp = 2'd0 ;
  assign cp$wci_Vm_14_SData = 32'hAAAAAAAA /* unspecified value */  ;
  assign cp$wci_Vm_14_SFlag = 2'b0 ;
  assign cp$wci_Vm_14_SResp = 2'd0 ;
  assign cp$wci_Vm_1_SData = 32'hAAAAAAAA /* unspecified value */  ;
  assign cp$wci_Vm_1_SFlag = 2'b0 ;
  assign cp$wci_Vm_1_SResp = 2'd0 ;
  assign cp$wci_Vm_2_SData = 32'hAAAAAAAA /* unspecified value */  ;
  assign cp$wci_Vm_2_SFlag = 2'b0 ;
  assign cp$wci_Vm_2_SResp = 2'd0 ;
  assign cp$wci_Vm_3_SData = 32'hAAAAAAAA /* unspecified value */  ;
  assign cp$wci_Vm_3_SFlag = 2'b0 ;
  assign cp$wci_Vm_3_SResp = 2'd0 ;
  assign cp$wci_Vm_4_SData = 32'hAAAAAAAA /* unspecified value */  ;
  assign cp$wci_Vm_4_SFlag = 2'b0 ;
  assign cp$wci_Vm_4_SResp = 2'd0 ;
  assign cp$wci_Vm_5_SData = 32'hAAAAAAAA /* unspecified value */  ;
  assign cp$wci_Vm_5_SFlag = 2'b0 ;
  assign cp$wci_Vm_5_SResp = 2'd0 ;
  assign cp$wci_Vm_6_SData = 32'hAAAAAAAA /* unspecified value */  ;
  assign cp$wci_Vm_6_SFlag = 2'b0 ;
  assign cp$wci_Vm_6_SResp = 2'd0 ;
  assign cp$wci_Vm_7_SData = icap$wciS0_SData ;
  assign cp$wci_Vm_7_SFlag = icap$wciS0_SFlag ;
  assign cp$wci_Vm_7_SResp = icap$wciS0_SResp ;
  assign cp$wci_Vm_8_SData = flash$wciS0_SData ;
  assign cp$wci_Vm_8_SFlag = flash$wciS0_SFlag ;
  assign cp$wci_Vm_8_SResp = flash$wciS0_SResp ;
  assign cp$wci_Vm_9_SData = 32'hAAAAAAAA /* unspecified value */  ;
  assign cp$wci_Vm_9_SFlag = 2'b0 ;
  assign cp$wci_Vm_9_SResp = 2'd0 ;
  assign cp$EN_server_request_put =
	     gbe0$RDY_cpClient_request_get && cp$RDY_server_request_put ;
  assign cp$EN_server_response_get =
	     gbe0$RDY_cpClient_response_put && cp$RDY_server_response_get ;
  assign cp$wci_Vm_0_SThreadBusy = 1'd1 ;
  assign cp$wci_Vm_1_SThreadBusy = 1'd1 ;
  assign cp$wci_Vm_2_SThreadBusy = 1'd1 ;
  assign cp$wci_Vm_3_SThreadBusy = 1'd1 ;
  assign cp$wci_Vm_4_SThreadBusy = 1'd1 ;
  assign cp$wci_Vm_5_SThreadBusy = 1'd1 ;
  assign cp$wci_Vm_6_SThreadBusy = 1'd1 ;
  assign cp$wci_Vm_7_SThreadBusy = icap$wciS0_SThreadBusy ;
  assign cp$wci_Vm_8_SThreadBusy = flash$wciS0_SThreadBusy ;
  assign cp$wci_Vm_9_SThreadBusy = 1'd1 ;
  assign cp$wci_Vm_10_SThreadBusy = iqadc$wciS0_SThreadBusy ;
  assign cp$wci_Vm_11_SThreadBusy = 1'd1 ;
  assign cp$wci_Vm_12_SThreadBusy = 1'd1 ;
  assign cp$wci_Vm_13_SThreadBusy = 1'd1 ;
  assign cp$wci_Vm_14_SThreadBusy = 1'd1 ;

  // submodule flash
  assign flash$flash_miso_i = 1'b0 ;
  assign flash$wciS0_MAddr = cp$wci_Vm_8_MAddr ;
  assign flash$wciS0_MAddrSpace = cp$wci_Vm_8_MAddrSpace ;
  assign flash$wciS0_MByteEn = cp$wci_Vm_8_MByteEn ;
  assign flash$wciS0_MCmd = cp$wci_Vm_8_MCmd ;
  assign flash$wciS0_MData = cp$wci_Vm_8_MData ;
  assign flash$wciS0_MFlag = cp$wci_Vm_8_MFlag ;

  // submodule gbe0
  assign gbe0$cpClient_response_put = cp$server_response_get ;
  assign gbe0$gmii_col_i = gmii_col_i ;
  assign gbe0$gmii_crs_i = gmii_crs_i ;
  assign gbe0$gmii_intr_i = gmii_intr_i ;
  assign gbe0$gmii_rx_rx_dv_i = gmii_rx_rx_dv_i ;
  assign gbe0$gmii_rx_rx_er_i = gmii_rx_rx_er_i ;
  assign gbe0$gmii_rx_rxd_i = gmii_rx_rxd_i ;
  assign gbe0$EN_cpClient_request_get =
	     gbe0$RDY_cpClient_request_get && cp$RDY_server_request_put ;
  assign gbe0$EN_cpClient_response_put =
	     gbe0$RDY_cpClient_response_put && cp$RDY_server_response_get ;

  // submodule icap
  assign icap$wciS0_MAddr = cp$wci_Vm_7_MAddr ;
  assign icap$wciS0_MAddrSpace = cp$wci_Vm_7_MAddrSpace ;
  assign icap$wciS0_MByteEn = cp$wci_Vm_7_MByteEn ;
  assign icap$wciS0_MCmd = cp$wci_Vm_7_MCmd ;
  assign icap$wciS0_MData = cp$wci_Vm_7_MData ;
  assign icap$wciS0_MFlag = cp$wci_Vm_7_MFlag ;

  // submodule iqadc
  assign iqadc$adc_da_i = adc_da_i ;
  assign iqadc$adc_db_i = adc_db_i ;
  assign iqadc$adc_sdout_i = adc_sdout_i ;
  assign iqadc$wciS0_MAddr = cp$wci_Vm_10_MAddr ;
  assign iqadc$wciS0_MAddrSpace = cp$wci_Vm_10_MAddrSpace ;
  assign iqadc$wciS0_MByteEn = cp$wci_Vm_10_MByteEn ;
  assign iqadc$wciS0_MCmd = cp$wci_Vm_10_MCmd ;
  assign iqadc$wciS0_MData = cp$wci_Vm_10_MData ;
  assign iqadc$wciS0_MFlag = cp$wci_Vm_10_MFlag ;
  assign iqadc$wtiS0_req = 67'h0 ;
  assign iqadc$wsiM0_SThreadBusy = 1'b0 ;
  assign iqadc$wsiM0_SReset_n = 1'b0 ;

  // submodule ledLogic
  assign ledLogic$ledDrive_i = 5'h0 ;
  assign ledLogic$EN_ledDrive = 1'b0 ;
endmodule  // mkFTop_n210

