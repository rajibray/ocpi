//
// Generated by Bluespec Compiler, version 2010.10.beta1 (build 22431, 2010-10-28)
//
// On Fri Jan 14 16:25:47 EST 2011
//
//
// Ports:
// Name                         I/O  size props
// pcie_txp                       O     8
// pcie_txn                       O     8
// led                            O     3
// gps_ppsSyncOut                 O     1
// p125clk                        O     1 clock
// CLK_GATE_p125clk               O     1 const
// p125rst                        O     1 reset
// sys0_clkp                      I     1 clock
// sys0_clkn                      I     1 clock
// pci0_clkp                      I     1 clock
// pci0_clkn                      I     1 clock
// pci0_rstn                      I     1 reset
// pcie_rxp_i                     I     8
// pcie_rxn_i                     I     8
// gps_ppsSyncIn_x                I     1 reg
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module mkFTop_nf10(sys0_clkp,
		   sys0_clkn,
		   pci0_clkp,
		   pci0_clkn,
		   pci0_rstn,

		   pcie_rxp_i,

		   pcie_rxn_i,

		   pcie_txp,

		   pcie_txn,

		   led,

		   gps_ppsSyncIn_x,

		   gps_ppsSyncOut,

		   p125clk,
		   CLK_GATE_p125clk,

		   p125rst);
  input  sys0_clkp;
  input  sys0_clkn;
  input  pci0_clkp;
  input  pci0_clkn;
  input  pci0_rstn;

  // action method pcie_rxp
  input  [7 : 0] pcie_rxp_i;

  // action method pcie_rxn
  input  [7 : 0] pcie_rxn_i;

  // value method pcie_txp
  output [7 : 0] pcie_txp;

  // value method pcie_txn
  output [7 : 0] pcie_txn;

  // value method led
  output [2 : 0] led;

  // action method gps_ppsSyncIn
  input  gps_ppsSyncIn_x;

  // value method gps_ppsSyncOut
  output gps_ppsSyncOut;

  // oscillator and gates for output clock p125clk
  output p125clk;
  output CLK_GATE_p125clk;

  // output resets
  output p125rst;

  // signals for module outputs
  wire [7 : 0] pcie_txn, pcie_txp;
  wire [2 : 0] led;
  wire CLK_GATE_p125clk, gps_ppsSyncOut, p125clk, p125rst;

  // inlined wires
  wire [63 : 0] pciw_pci0_wTrnTxDat$wget;
  wire [7 : 0] pciw_pci0_wTrnTxRem$wget, pciw_pcie_irq_wInterruptDo$wget;
  wire pciw_pci0_pwTrnRx$whas,
       pciw_pci0_pwTrnTx$whas,
       pciw_pci0_wTrnRxCplS$wget,
       pciw_pci0_wTrnRxCplS$whas,
       pciw_pci0_wTrnRxNpOk$wget,
       pciw_pci0_wTrnRxNpOk$whas,
       pciw_pci0_wTrnTxDat$whas,
       pciw_pci0_wTrnTxDsc$wget,
       pciw_pci0_wTrnTxDsc$whas,
       pciw_pci0_wTrnTxEof$wget,
       pciw_pci0_wTrnTxEof$whas,
       pciw_pci0_wTrnTxRem$whas,
       pciw_pci0_wTrnTxSof$wget,
       pciw_pci0_wTrnTxSof$whas,
       pciw_pcie_irq_wInterruptDo$whas,
       pciw_pcie_irq_wInterruptRdyN$wget,
       pciw_pcie_irq_wInterruptRdyN$whas;

  // register pciw_pcie_irq_rInterruptDi
  reg [7 : 0] pciw_pcie_irq_rInterruptDi;
  wire [7 : 0] pciw_pcie_irq_rInterruptDi$D_IN;
  wire pciw_pcie_irq_rInterruptDi$EN;

  // register pciw_pcie_irq_rInterruptN
  reg pciw_pcie_irq_rInterruptN;
  wire pciw_pcie_irq_rInterruptN$D_IN, pciw_pcie_irq_rInterruptN$EN;

  // register pciw_pcie_irq_rInterrupting
  reg pciw_pcie_irq_rInterrupting;
  wire pciw_pcie_irq_rInterrupting$D_IN, pciw_pcie_irq_rInterrupting$EN;

  // register pciw_pcie_irq_rMMEnabled
  reg [2 : 0] pciw_pcie_irq_rMMEnabled;
  wire [2 : 0] pciw_pcie_irq_rMMEnabled$D_IN;
  wire pciw_pcie_irq_rMMEnabled$EN;

  // register pciw_pcie_irq_rMSIEnabled
  reg pciw_pcie_irq_rMSIEnabled;
  wire pciw_pcie_irq_rMSIEnabled$D_IN, pciw_pcie_irq_rMSIEnabled$EN;

  // register pciw_rg
  reg [81 : 0] pciw_rg;
  wire [81 : 0] pciw_rg$D_IN;
  wire pciw_rg$EN;

  // register pciw_rg_1
  reg [81 : 0] pciw_rg_1;
  wire [81 : 0] pciw_rg_1$D_IN;
  wire pciw_rg_1$EN;

  // ports of submodule ctop
  wire [152 : 0] ctop$server_request_put, ctop$server_response_get;
  wire [127 : 0] ctop$wmemiM0_SData;
  wire [31 : 0] ctop$wci_m_0_SData,
		ctop$wci_m_1_SData,
		ctop$wci_m_2_SData,
		ctop$wci_m_3_SData,
		ctop$wci_m_4_SData,
		ctop$wsi_s_adc_MData;
  wire [11 : 0] ctop$wsi_s_adc_MBurstLength;
  wire [7 : 0] ctop$wsi_s_adc_MReqInfo;
  wire [3 : 0] ctop$wsi_s_adc_MByteEn;
  wire [2 : 0] ctop$switch_x, ctop$wsi_s_adc_MCmd;
  wire [1 : 0] ctop$led,
	       ctop$wci_m_0_SFlag,
	       ctop$wci_m_0_SResp,
	       ctop$wci_m_1_SFlag,
	       ctop$wci_m_1_SResp,
	       ctop$wci_m_2_SFlag,
	       ctop$wci_m_2_SResp,
	       ctop$wci_m_3_SFlag,
	       ctop$wci_m_3_SResp,
	       ctop$wci_m_4_SFlag,
	       ctop$wci_m_4_SResp,
	       ctop$wmemiM0_SResp;
  wire ctop$EN_server_request_put,
       ctop$EN_server_response_get,
       ctop$RDY_server_request_put,
       ctop$RDY_server_response_get,
       ctop$gps_ppsSyncIn_x,
       ctop$gps_ppsSyncOut,
       ctop$wci_m_0_SThreadBusy,
       ctop$wci_m_1_SThreadBusy,
       ctop$wci_m_2_SThreadBusy,
       ctop$wci_m_3_SThreadBusy,
       ctop$wci_m_4_SThreadBusy,
       ctop$wmemiM0_SCmdAccept,
       ctop$wmemiM0_SDataAccept,
       ctop$wmemiM0_SRespLast,
       ctop$wsi_m_dac_SReset_n,
       ctop$wsi_m_dac_SThreadBusy,
       ctop$wsi_s_adc_MBurstPrecise,
       ctop$wsi_s_adc_MReqLast,
       ctop$wsi_s_adc_MReset_n;

  // ports of submodule infLed
  wire [1 : 0] infLed$WGET, infLed$WVAL;

  // ports of submodule pciw_inFifo
  wire [80 : 0] pciw_inFifo$D_IN, pciw_inFifo$D_OUT;
  wire pciw_inFifo$CLR,
       pciw_inFifo$DEQ,
       pciw_inFifo$EMPTY_N,
       pciw_inFifo$ENQ,
       pciw_inFifo$FULL_N;

  // ports of submodule pciw_outFifo
  wire [80 : 0] pciw_outFifo$D_IN, pciw_outFifo$D_OUT;
  wire pciw_outFifo$CLR,
       pciw_outFifo$DEQ,
       pciw_outFifo$EMPTY_N,
       pciw_outFifo$ENQ,
       pciw_outFifo$FULL_N;

  // ports of submodule pciw_p125rst
  wire pciw_p125rst$OUT_RST_N;

  // ports of submodule pciw_pci0_clk
  wire pciw_pci0_clk$O;

  // ports of submodule pciw_pci0_pcie_ep
  wire [63 : 0] pciw_pci0_pcie_ep$cfg_dsn,
		pciw_pci0_pcie_ep$trn_rd,
		pciw_pci0_pcie_ep$trn_td;
  wire [47 : 0] pciw_pci0_pcie_ep$cfg_err_tlp_cpl_header;
  wire [31 : 0] pciw_pci0_pcie_ep$cfg_di;
  wire [9 : 0] pciw_pci0_pcie_ep$cfg_dwaddr;
  wire [7 : 0] pciw_pci0_pcie_ep$cfg_bus_number,
	       pciw_pci0_pcie_ep$cfg_interrupt_di,
	       pciw_pci0_pcie_ep$cfg_interrupt_do,
	       pciw_pci0_pcie_ep$pci_exp_rxn,
	       pciw_pci0_pcie_ep$pci_exp_rxp,
	       pciw_pci0_pcie_ep$pci_exp_txn,
	       pciw_pci0_pcie_ep$pci_exp_txp,
	       pciw_pci0_pcie_ep$trn_rrem_n,
	       pciw_pci0_pcie_ep$trn_trem_n;
  wire [6 : 0] pciw_pci0_pcie_ep$trn_rbar_hit_n;
  wire [4 : 0] pciw_pci0_pcie_ep$cfg_device_number;
  wire [3 : 0] pciw_pci0_pcie_ep$cfg_byte_en_n;
  wire [2 : 0] pciw_pci0_pcie_ep$cfg_function_number,
	       pciw_pci0_pcie_ep$cfg_interrupt_mmenable;
  wire pciw_pci0_pcie_ep$cfg_err_cor_n,
       pciw_pci0_pcie_ep$cfg_err_cpl_abort_n,
       pciw_pci0_pcie_ep$cfg_err_cpl_timeout_n,
       pciw_pci0_pcie_ep$cfg_err_cpl_unexpect_n,
       pciw_pci0_pcie_ep$cfg_err_ecrc_n,
       pciw_pci0_pcie_ep$cfg_err_locked_n,
       pciw_pci0_pcie_ep$cfg_err_posted_n,
       pciw_pci0_pcie_ep$cfg_err_ur_n,
       pciw_pci0_pcie_ep$cfg_interrupt_assert_n,
       pciw_pci0_pcie_ep$cfg_interrupt_msienable,
       pciw_pci0_pcie_ep$cfg_interrupt_n,
       pciw_pci0_pcie_ep$cfg_interrupt_rdy_n,
       pciw_pci0_pcie_ep$cfg_pm_wake_n,
       pciw_pci0_pcie_ep$cfg_rd_en_n,
       pciw_pci0_pcie_ep$cfg_trn_pending_n,
       pciw_pci0_pcie_ep$cfg_wr_en_n,
       pciw_pci0_pcie_ep$trn_clk,
       pciw_pci0_pcie_ep$trn_lnk_up_n,
       pciw_pci0_pcie_ep$trn_rcpl_streaming_n,
       pciw_pci0_pcie_ep$trn_rdst_rdy_n,
       pciw_pci0_pcie_ep$trn_reof_n,
       pciw_pci0_pcie_ep$trn_reset_n,
       pciw_pci0_pcie_ep$trn_rnp_ok_n,
       pciw_pci0_pcie_ep$trn_rsof_n,
       pciw_pci0_pcie_ep$trn_rsrc_rdy_n,
       pciw_pci0_pcie_ep$trn_tdst_rdy_n,
       pciw_pci0_pcie_ep$trn_teof_n,
       pciw_pci0_pcie_ep$trn_terrfwd_n,
       pciw_pci0_pcie_ep$trn_tsof_n,
       pciw_pci0_pcie_ep$trn_tsrc_dsc_n,
       pciw_pci0_pcie_ep$trn_tsrc_rdy_n;

  // ports of submodule pciw_pciDevice
  wire [15 : 0] pciw_pciDevice$dD_OUT, pciw_pciDevice$sD_IN;
  wire pciw_pciDevice$sEN, pciw_pciDevice$sRDY;

  // ports of submodule pciw_pciLinkUp
  wire pciw_pciLinkUp$dD_OUT, pciw_pciLinkUp$sD_IN, pciw_pciLinkUp$sEN;

  // ports of submodule pciw_pcie_irq_fifoAssert
  wire [7 : 0] pciw_pcie_irq_fifoAssert$dD_OUT,
	       pciw_pcie_irq_fifoAssert$sD_IN;
  wire pciw_pcie_irq_fifoAssert$dDEQ,
       pciw_pcie_irq_fifoAssert$dEMPTY_N,
       pciw_pcie_irq_fifoAssert$sENQ;

  // ports of submodule pciw_uI2PF
  wire [152 : 0] pciw_uI2PF$D_IN, pciw_uI2PF$D_OUT;
  wire pciw_uI2PF$CLR,
       pciw_uI2PF$DEQ,
       pciw_uI2PF$EMPTY_N,
       pciw_uI2PF$ENQ,
       pciw_uI2PF$FULL_N;

  // ports of submodule pciw_uP2IF
  wire [152 : 0] pciw_uP2IF$D_IN, pciw_uP2IF$D_OUT;
  wire pciw_uP2IF$CLR,
       pciw_uP2IF$DEQ,
       pciw_uP2IF$EMPTY_N,
       pciw_uP2IF$ENQ,
       pciw_uP2IF$FULL_N;

  // ports of submodule sys0_clk
  wire sys0_clk$O;

  // ports of submodule sys0_rst
  wire sys0_rst$OUT_RST_N;

  // rule scheduling signals
  wire WILL_FIRE_RL_pciw_connect_1,
       WILL_FIRE_RL_pciw_downconv_connect1,
       WILL_FIRE_RL_pciw_downconv_connect2,
       WILL_FIRE_RL_pciw_pcie_irq_msi_enabled_assert_interrupt,
       WILL_FIRE_RL_pciw_pcie_irq_msi_enabled_assert_interrupt_done,
       WILL_FIRE_RL_pciw_upconv_connect1,
       WILL_FIRE_RL_pciw_upconv_connect2;

  // inputs to muxes for submodule ports
  wire [152 : 0] MUX_pciw_uP2IF$enq_1__VAL_1, MUX_pciw_uP2IF$enq_1__VAL_2;
  wire [81 : 0] MUX_pciw_rg$write_1__VAL_1, MUX_pciw_rg_1$write_1__VAL_1;
  wire [80 : 0] MUX_pciw_outFifo$enq_1__VAL_1;
  wire MUX_pciw_rg$write_1__SEL_1,
       MUX_pciw_rg_1$write_1__SEL_1,
       MUX_pciw_uP2IF$enq_1__SEL_1;

  // remaining internal signals
  wire [127 : 0] wOut_data__h3147, x_data__h3068;
  wire [15 : 0] wOut_be__h3146, x_be__h3067;

  // oscillator and gates for output clock p125clk
  assign p125clk = pciw_pci0_pcie_ep$trn_clk ;
  assign CLK_GATE_p125clk = 1'b1 ;

  // output resets
  assign p125rst = pciw_p125rst$OUT_RST_N ;

  // value method pcie_txp
  assign pcie_txp = pciw_pci0_pcie_ep$pci_exp_txp ;

  // value method pcie_txn
  assign pcie_txn = pciw_pci0_pcie_ep$pci_exp_txn ;

  // value method led
  assign led = { ~infLed$WGET, ~pciw_pciLinkUp$dD_OUT } ;

  // value method gps_ppsSyncOut
  assign gps_ppsSyncOut = ctop$gps_ppsSyncOut ;

  // submodule ctop
  mkCTop4B ctop(.pciDevice(pciw_pciDevice$dD_OUT),
		.CLK_sys0_clk(sys0_clk$O),
		.RST_N_sys0_rst(sys0_rst$OUT_RST_N),
		.CLK(pciw_pci0_pcie_ep$trn_clk),
		.RST_N(pciw_p125rst$OUT_RST_N),
		.gps_ppsSyncIn_x(ctop$gps_ppsSyncIn_x),
		.server_request_put(ctop$server_request_put),
		.switch_x(ctop$switch_x),
		.wci_m_0_SData(ctop$wci_m_0_SData),
		.wci_m_0_SFlag(ctop$wci_m_0_SFlag),
		.wci_m_0_SResp(ctop$wci_m_0_SResp),
		.wci_m_1_SData(ctop$wci_m_1_SData),
		.wci_m_1_SFlag(ctop$wci_m_1_SFlag),
		.wci_m_1_SResp(ctop$wci_m_1_SResp),
		.wci_m_2_SData(ctop$wci_m_2_SData),
		.wci_m_2_SFlag(ctop$wci_m_2_SFlag),
		.wci_m_2_SResp(ctop$wci_m_2_SResp),
		.wci_m_3_SData(ctop$wci_m_3_SData),
		.wci_m_3_SFlag(ctop$wci_m_3_SFlag),
		.wci_m_3_SResp(ctop$wci_m_3_SResp),
		.wci_m_4_SData(ctop$wci_m_4_SData),
		.wci_m_4_SFlag(ctop$wci_m_4_SFlag),
		.wci_m_4_SResp(ctop$wci_m_4_SResp),
		.wmemiM0_SData(ctop$wmemiM0_SData),
		.wmemiM0_SResp(ctop$wmemiM0_SResp),
		.wsi_s_adc_MBurstLength(ctop$wsi_s_adc_MBurstLength),
		.wsi_s_adc_MByteEn(ctop$wsi_s_adc_MByteEn),
		.wsi_s_adc_MCmd(ctop$wsi_s_adc_MCmd),
		.wsi_s_adc_MData(ctop$wsi_s_adc_MData),
		.wsi_s_adc_MReqInfo(ctop$wsi_s_adc_MReqInfo),
		.EN_server_request_put(ctop$EN_server_request_put),
		.EN_server_response_get(ctop$EN_server_response_get),
		.wci_m_0_SThreadBusy(ctop$wci_m_0_SThreadBusy),
		.wci_m_1_SThreadBusy(ctop$wci_m_1_SThreadBusy),
		.wci_m_2_SThreadBusy(ctop$wci_m_2_SThreadBusy),
		.wci_m_3_SThreadBusy(ctop$wci_m_3_SThreadBusy),
		.wci_m_4_SThreadBusy(ctop$wci_m_4_SThreadBusy),
		.wsi_s_adc_MReqLast(ctop$wsi_s_adc_MReqLast),
		.wsi_s_adc_MBurstPrecise(ctop$wsi_s_adc_MBurstPrecise),
		.wsi_s_adc_MReset_n(ctop$wsi_s_adc_MReset_n),
		.wsi_m_dac_SThreadBusy(ctop$wsi_m_dac_SThreadBusy),
		.wsi_m_dac_SReset_n(ctop$wsi_m_dac_SReset_n),
		.wmemiM0_SRespLast(ctop$wmemiM0_SRespLast),
		.wmemiM0_SCmdAccept(ctop$wmemiM0_SCmdAccept),
		.wmemiM0_SDataAccept(ctop$wmemiM0_SDataAccept),
		.RDY_server_request_put(ctop$RDY_server_request_put),
		.server_response_get(ctop$server_response_get),
		.RDY_server_response_get(ctop$RDY_server_response_get),
		.led(ctop$led),
		.wci_m_0_MCmd(),
		.wci_m_0_MAddrSpace(),
		.wci_m_0_MByteEn(),
		.wci_m_0_MAddr(),
		.wci_m_0_MData(),
		.wci_m_0_MFlag(),
		.wci_m_1_MCmd(),
		.wci_m_1_MAddrSpace(),
		.wci_m_1_MByteEn(),
		.wci_m_1_MAddr(),
		.wci_m_1_MData(),
		.wci_m_1_MFlag(),
		.wci_m_2_MCmd(),
		.wci_m_2_MAddrSpace(),
		.wci_m_2_MByteEn(),
		.wci_m_2_MAddr(),
		.wci_m_2_MData(),
		.wci_m_2_MFlag(),
		.wci_m_3_MCmd(),
		.wci_m_3_MAddrSpace(),
		.wci_m_3_MByteEn(),
		.wci_m_3_MAddr(),
		.wci_m_3_MData(),
		.wci_m_3_MFlag(),
		.wci_m_4_MCmd(),
		.wci_m_4_MAddrSpace(),
		.wci_m_4_MByteEn(),
		.wci_m_4_MAddr(),
		.wci_m_4_MData(),
		.wci_m_4_MFlag(),
		.cpNow(),
		.RDY_cpNow(),
		.wsi_s_adc_SThreadBusy(),
		.wsi_s_adc_SReset_n(),
		.wsi_m_dac_MCmd(),
		.wsi_m_dac_MReqLast(),
		.wsi_m_dac_MBurstPrecise(),
		.wsi_m_dac_MBurstLength(),
		.wsi_m_dac_MData(),
		.wsi_m_dac_MByteEn(),
		.wsi_m_dac_MReqInfo(),
		.wsi_m_dac_MReset_n(),
		.wmemiM0_MCmd(),
		.wmemiM0_MReqLast(),
		.wmemiM0_MAddr(),
		.wmemiM0_MBurstLength(),
		.wmemiM0_MDataValid(),
		.wmemiM0_MDataLast(),
		.wmemiM0_MData(),
		.wmemiM0_MDataByteEn(),
		.wmemiM0_MReset_n(),
		.gps_ppsSyncOut(ctop$gps_ppsSyncOut),
		.RST_N_wci_m_0(),
		.RST_N_wci_m_1(),
		.RST_N_wci_m_2(),
		.RST_N_wci_m_3(),
		.RST_N_wci_m_4());

  // submodule infLed
  BypassCrossingWire #(.width(32'd2)) infLed(.WVAL(infLed$WVAL),
					     .WGET(infLed$WGET));

  // submodule pciw_inFifo
  FIFO2 #(.width(32'd81),
	  .guarded(32'd1)) pciw_inFifo(.RST_N(pciw_p125rst$OUT_RST_N),
				       .CLK(pciw_pci0_pcie_ep$trn_clk),
				       .D_IN(pciw_inFifo$D_IN),
				       .ENQ(pciw_inFifo$ENQ),
				       .DEQ(pciw_inFifo$DEQ),
				       .CLR(pciw_inFifo$CLR),
				       .D_OUT(pciw_inFifo$D_OUT),
				       .FULL_N(pciw_inFifo$FULL_N),
				       .EMPTY_N(pciw_inFifo$EMPTY_N));

  // submodule pciw_outFifo
  FIFO2 #(.width(32'd81),
	  .guarded(32'd1)) pciw_outFifo(.RST_N(pciw_p125rst$OUT_RST_N),
					.CLK(pciw_pci0_pcie_ep$trn_clk),
					.D_IN(pciw_outFifo$D_IN),
					.ENQ(pciw_outFifo$ENQ),
					.DEQ(pciw_outFifo$DEQ),
					.CLR(pciw_outFifo$CLR),
					.D_OUT(pciw_outFifo$D_OUT),
					.FULL_N(pciw_outFifo$FULL_N),
					.EMPTY_N(pciw_outFifo$EMPTY_N));

  // submodule pciw_p125rst
  SyncResetA #(.RSTDELAY(32'd0)) pciw_p125rst(.CLK(pciw_pci0_pcie_ep$trn_clk),
					      .IN_RST_N(pciw_pci0_pcie_ep$trn_reset_n),
					      .OUT_RST_N(pciw_p125rst$OUT_RST_N));

  // submodule pciw_pci0_clk
  IBUFDS pciw_pci0_clk(.I(pci0_clkp), .IB(pci0_clkn), .O(pciw_pci0_clk$O));

  // submodule pciw_pci0_pcie_ep
  xilinx_v5_pcie_wrapper pciw_pci0_pcie_ep(.sys_clk(pciw_pci0_clk$O),
					   .sys_reset_n(pci0_rstn),
					   .fast_train_simulation_only(1'h0),
					   .cfg_byte_en_n(pciw_pci0_pcie_ep$cfg_byte_en_n),
					   .cfg_di(pciw_pci0_pcie_ep$cfg_di),
					   .cfg_dsn(pciw_pci0_pcie_ep$cfg_dsn),
					   .cfg_dwaddr(pciw_pci0_pcie_ep$cfg_dwaddr),
					   .cfg_err_cor_n(pciw_pci0_pcie_ep$cfg_err_cor_n),
					   .cfg_err_cpl_abort_n(pciw_pci0_pcie_ep$cfg_err_cpl_abort_n),
					   .cfg_err_cpl_timeout_n(pciw_pci0_pcie_ep$cfg_err_cpl_timeout_n),
					   .cfg_err_cpl_unexpect_n(pciw_pci0_pcie_ep$cfg_err_cpl_unexpect_n),
					   .cfg_err_ecrc_n(pciw_pci0_pcie_ep$cfg_err_ecrc_n),
					   .cfg_err_locked_n(pciw_pci0_pcie_ep$cfg_err_locked_n),
					   .cfg_err_posted_n(pciw_pci0_pcie_ep$cfg_err_posted_n),
					   .cfg_err_tlp_cpl_header(pciw_pci0_pcie_ep$cfg_err_tlp_cpl_header),
					   .cfg_err_ur_n(pciw_pci0_pcie_ep$cfg_err_ur_n),
					   .cfg_interrupt_assert_n(pciw_pci0_pcie_ep$cfg_interrupt_assert_n),
					   .cfg_interrupt_di(pciw_pci0_pcie_ep$cfg_interrupt_di),
					   .cfg_interrupt_n(pciw_pci0_pcie_ep$cfg_interrupt_n),
					   .cfg_pm_wake_n(pciw_pci0_pcie_ep$cfg_pm_wake_n),
					   .cfg_rd_en_n(pciw_pci0_pcie_ep$cfg_rd_en_n),
					   .cfg_trn_pending_n(pciw_pci0_pcie_ep$cfg_trn_pending_n),
					   .cfg_wr_en_n(pciw_pci0_pcie_ep$cfg_wr_en_n),
					   .pci_exp_rxn(pciw_pci0_pcie_ep$pci_exp_rxn),
					   .pci_exp_rxp(pciw_pci0_pcie_ep$pci_exp_rxp),
					   .trn_rcpl_streaming_n(pciw_pci0_pcie_ep$trn_rcpl_streaming_n),
					   .trn_rdst_rdy_n(pciw_pci0_pcie_ep$trn_rdst_rdy_n),
					   .trn_rnp_ok_n(pciw_pci0_pcie_ep$trn_rnp_ok_n),
					   .trn_td(pciw_pci0_pcie_ep$trn_td),
					   .trn_teof_n(pciw_pci0_pcie_ep$trn_teof_n),
					   .trn_terrfwd_n(pciw_pci0_pcie_ep$trn_terrfwd_n),
					   .trn_trem_n(pciw_pci0_pcie_ep$trn_trem_n),
					   .trn_tsof_n(pciw_pci0_pcie_ep$trn_tsof_n),
					   .trn_tsrc_dsc_n(pciw_pci0_pcie_ep$trn_tsrc_dsc_n),
					   .trn_tsrc_rdy_n(pciw_pci0_pcie_ep$trn_tsrc_rdy_n),
					   .pci_exp_txp(pciw_pci0_pcie_ep$pci_exp_txp),
					   .pci_exp_txn(pciw_pci0_pcie_ep$pci_exp_txn),
					   .cfg_do(),
					   .cfg_rd_wr_done_n(),
					   .cfg_to_turnoff_n(),
					   .cfg_bus_number(pciw_pci0_pcie_ep$cfg_bus_number),
					   .cfg_device_number(pciw_pci0_pcie_ep$cfg_device_number),
					   .cfg_function_number(pciw_pci0_pcie_ep$cfg_function_number),
					   .cfg_status(),
					   .cfg_command(),
					   .cfg_dstatus(),
					   .cfg_dcommand(),
					   .cfg_lstatus(),
					   .cfg_lcommand(),
					   .cfg_pcie_link_state_n(),
					   .cfg_interrupt_rdy_n(pciw_pci0_pcie_ep$cfg_interrupt_rdy_n),
					   .cfg_interrupt_mmenable(pciw_pci0_pcie_ep$cfg_interrupt_mmenable),
					   .cfg_interrupt_msienable(pciw_pci0_pcie_ep$cfg_interrupt_msienable),
					   .cfg_interrupt_do(pciw_pci0_pcie_ep$cfg_interrupt_do),
					   .cfg_err_cpl_rdy_n(),
					   .trn_tdst_rdy_n(pciw_pci0_pcie_ep$trn_tdst_rdy_n),
					   .trn_tdst_dsc_n(),
					   .trn_tbuf_av(),
					   .trn_rsof_n(pciw_pci0_pcie_ep$trn_rsof_n),
					   .trn_reof_n(pciw_pci0_pcie_ep$trn_reof_n),
					   .trn_rd(pciw_pci0_pcie_ep$trn_rd),
					   .trn_rrem_n(pciw_pci0_pcie_ep$trn_rrem_n),
					   .trn_rerrfwd_n(),
					   .trn_rsrc_rdy_n(pciw_pci0_pcie_ep$trn_rsrc_rdy_n),
					   .trn_rsrc_dsc_n(),
					   .trn_rbar_hit_n(pciw_pci0_pcie_ep$trn_rbar_hit_n),
					   .trn_rfc_ph_av(),
					   .trn_rfc_pd_av(),
					   .trn_rfc_nph_av(),
					   .trn_rfc_npd_av(),
					   .trn_lnk_up_n(pciw_pci0_pcie_ep$trn_lnk_up_n),
					   .trn_clk(pciw_pci0_pcie_ep$trn_clk),
					   .trn2_clk(),
					   .refclkout(),
					   .trn_reset_n(pciw_pci0_pcie_ep$trn_reset_n));

  // submodule pciw_pciDevice
  SyncRegister #(.width(32'd16),
		 .init(16'd0)) pciw_pciDevice(.sCLK(pciw_pci0_pcie_ep$trn_clk),
					      .dCLK(pciw_pci0_pcie_ep$trn_clk),
					      .sRST_N(pciw_p125rst$OUT_RST_N),
					      .sD_IN(pciw_pciDevice$sD_IN),
					      .sEN(pciw_pciDevice$sEN),
					      .dD_OUT(pciw_pciDevice$dD_OUT),
					      .sRDY(pciw_pciDevice$sRDY));

  // submodule pciw_pciLinkUp
  SyncBit #(.init(32'd0)) pciw_pciLinkUp(.sCLK(pciw_pci0_pcie_ep$trn_clk),
					 .dCLK(pciw_pci0_pcie_ep$trn_clk),
					 .sRST_N(pciw_p125rst$OUT_RST_N),
					 .sD_IN(pciw_pciLinkUp$sD_IN),
					 .sEN(pciw_pciLinkUp$sEN),
					 .dD_OUT(pciw_pciLinkUp$dD_OUT));

  // submodule pciw_pcie_irq_fifoAssert
  SyncFIFO #(.dataWidth(32'd8),
	     .depth(32'd8),
	     .indxWidth(32'd3),
	     .regFull(1'd1),
	     .regEmpty(1'd1)) pciw_pcie_irq_fifoAssert(.sCLK(pciw_pci0_pcie_ep$trn_clk),
						       .dCLK(pciw_pci0_pcie_ep$trn_clk),
						       .sRST_N(pciw_p125rst$OUT_RST_N),
						       .sD_IN(pciw_pcie_irq_fifoAssert$sD_IN),
						       .sENQ(pciw_pcie_irq_fifoAssert$sENQ),
						       .dDEQ(pciw_pcie_irq_fifoAssert$dDEQ),
						       .dD_OUT(pciw_pcie_irq_fifoAssert$dD_OUT),
						       .sFULL_N(),
						       .dEMPTY_N(pciw_pcie_irq_fifoAssert$dEMPTY_N));

  // submodule pciw_uI2PF
  FIFO2 #(.width(32'd153),
	  .guarded(32'd1)) pciw_uI2PF(.RST_N(pciw_p125rst$OUT_RST_N),
				      .CLK(pciw_pci0_pcie_ep$trn_clk),
				      .D_IN(pciw_uI2PF$D_IN),
				      .ENQ(pciw_uI2PF$ENQ),
				      .DEQ(pciw_uI2PF$DEQ),
				      .CLR(pciw_uI2PF$CLR),
				      .D_OUT(pciw_uI2PF$D_OUT),
				      .FULL_N(pciw_uI2PF$FULL_N),
				      .EMPTY_N(pciw_uI2PF$EMPTY_N));

  // submodule pciw_uP2IF
  FIFO2 #(.width(32'd153),
	  .guarded(32'd1)) pciw_uP2IF(.RST_N(pciw_p125rst$OUT_RST_N),
				      .CLK(pciw_pci0_pcie_ep$trn_clk),
				      .D_IN(pciw_uP2IF$D_IN),
				      .ENQ(pciw_uP2IF$ENQ),
				      .DEQ(pciw_uP2IF$DEQ),
				      .CLR(pciw_uP2IF$CLR),
				      .D_OUT(pciw_uP2IF$D_OUT),
				      .FULL_N(pciw_uP2IF$FULL_N),
				      .EMPTY_N(pciw_uP2IF$EMPTY_N));

  // submodule sys0_clk
  IBUFDS sys0_clk(.I(sys0_clkp), .IB(sys0_clkn), .O(sys0_clk$O));

  // submodule sys0_rst
  SyncResetA #(.RSTDELAY(32'd0)) sys0_rst(.CLK(sys0_clk$O),
					  .IN_RST_N(pciw_p125rst$OUT_RST_N),
					  .OUT_RST_N(sys0_rst$OUT_RST_N));

  // rule RL_pciw_upconv_connect1
  assign WILL_FIRE_RL_pciw_upconv_connect1 =
	     pciw_inFifo$EMPTY_N &&
	     (!pciw_inFifo$D_OUT[79] || pciw_uP2IF$FULL_N) &&
	     !pciw_rg[81] ;

  // rule RL_pciw_upconv_connect2
  assign WILL_FIRE_RL_pciw_upconv_connect2 =
	     pciw_inFifo$EMPTY_N && pciw_uP2IF$FULL_N && pciw_rg[81] ;

  // rule RL_pciw_connect_1
  assign WILL_FIRE_RL_pciw_connect_1 =
	     pciw_outFifo$EMPTY_N &&
	     (pciw_outFifo$D_OUT[71:64] == 8'd0 ||
	      !pciw_pci0_pcie_ep$trn_tdst_rdy_n) ;

  // rule RL_pciw_downconv_connect1
  assign WILL_FIRE_RL_pciw_downconv_connect1 =
	     pciw_uI2PF$EMPTY_N && pciw_outFifo$FULL_N && !pciw_rg_1[81] ;

  // rule RL_pciw_downconv_connect2
  assign WILL_FIRE_RL_pciw_downconv_connect2 =
	     pciw_outFifo$FULL_N && pciw_rg_1[81] ;

  // rule RL_pciw_pcie_irq_msi_enabled_assert_interrupt
  assign WILL_FIRE_RL_pciw_pcie_irq_msi_enabled_assert_interrupt =
	     pciw_pcie_irq_fifoAssert$dEMPTY_N && pciw_pcie_irq_rMSIEnabled &&
	     !pciw_pcie_irq_rInterrupting &&
	     pciw_pci0_pcie_ep$cfg_interrupt_rdy_n ;

  // rule RL_pciw_pcie_irq_msi_enabled_assert_interrupt_done
  assign WILL_FIRE_RL_pciw_pcie_irq_msi_enabled_assert_interrupt_done =
	     pciw_pcie_irq_rMSIEnabled && pciw_pcie_irq_rInterrupting &&
	     !pciw_pci0_pcie_ep$cfg_interrupt_rdy_n ;

  // inputs to muxes for submodule ports
  assign MUX_pciw_rg$write_1__SEL_1 =
	     WILL_FIRE_RL_pciw_upconv_connect1 && !pciw_inFifo$D_OUT[79] ;
  assign MUX_pciw_rg_1$write_1__SEL_1 =
	     WILL_FIRE_RL_pciw_downconv_connect1 &&
	     pciw_uI2PF$D_OUT[135:128] != 8'd0 ;
  assign MUX_pciw_uP2IF$enq_1__SEL_1 =
	     WILL_FIRE_RL_pciw_upconv_connect1 && pciw_inFifo$D_OUT[79] ;
  assign MUX_pciw_outFifo$enq_1__VAL_1 =
	     (pciw_uI2PF$D_OUT[135:128] == 8'd0) ?
	       { pciw_uI2PF$D_OUT[152:136], pciw_uI2PF$D_OUT[127:64] } :
	       { pciw_uI2PF$D_OUT[152],
		 1'd0,
		 pciw_uI2PF$D_OUT[150:136],
		 pciw_uI2PF$D_OUT[127:64] } ;
  assign MUX_pciw_rg$write_1__VAL_1 = { 1'd1, pciw_inFifo$D_OUT } ;
  assign MUX_pciw_rg_1$write_1__VAL_1 =
	     { 2'd2,
	       pciw_uI2PF$D_OUT[151:144],
	       pciw_uI2PF$D_OUT[135:128],
	       pciw_uI2PF$D_OUT[63:0] } ;
  assign MUX_pciw_uP2IF$enq_1__VAL_1 =
	     { pciw_inFifo$D_OUT[80:72], x_be__h3067, x_data__h3068 } ;
  assign MUX_pciw_uP2IF$enq_1__VAL_2 =
	     { pciw_rg[80],
	       pciw_inFifo$D_OUT[79],
	       pciw_rg[78:72],
	       wOut_be__h3146,
	       wOut_data__h3147 } ;

  // inlined wires
  assign pciw_pci0_wTrnTxSof$wget = !pciw_outFifo$D_OUT[80] ;
  assign pciw_pci0_wTrnTxSof$whas = pciw_pci0_pwTrnTx$whas ;
  assign pciw_pci0_wTrnTxEof$wget = !pciw_outFifo$D_OUT[79] ;
  assign pciw_pci0_wTrnTxEof$whas = pciw_pci0_pwTrnTx$whas ;
  assign pciw_pci0_wTrnTxDsc$wget = 1'd1 ;
  assign pciw_pci0_wTrnTxDsc$whas = pciw_pci0_pwTrnTx$whas ;
  assign pciw_pci0_wTrnTxRem$wget = pciw_outFifo$D_OUT[71:64] ;
  assign pciw_pci0_wTrnTxRem$whas = pciw_pci0_pwTrnTx$whas ;
  assign pciw_pci0_wTrnTxDat$wget = pciw_outFifo$D_OUT[63:0] ;
  assign pciw_pci0_wTrnTxDat$whas = pciw_pci0_pwTrnTx$whas ;
  assign pciw_pci0_wTrnRxNpOk$wget = 1'd0 ;
  assign pciw_pci0_wTrnRxNpOk$whas = 1'd1 ;
  assign pciw_pci0_wTrnRxCplS$wget = 1'd1 ;
  assign pciw_pci0_wTrnRxCplS$whas = 1'd1 ;
  assign pciw_pcie_irq_wInterruptRdyN$wget =
	     pciw_pci0_pcie_ep$cfg_interrupt_rdy_n ;
  assign pciw_pcie_irq_wInterruptRdyN$whas = 1'd1 ;
  assign pciw_pcie_irq_wInterruptDo$wget =
	     pciw_pci0_pcie_ep$cfg_interrupt_do ;
  assign pciw_pcie_irq_wInterruptDo$whas = 1'd1 ;
  assign pciw_pci0_pwTrnTx$whas =
	     WILL_FIRE_RL_pciw_connect_1 &&
	     pciw_outFifo$D_OUT[71:64] != 8'd0 ;
  assign pciw_pci0_pwTrnRx$whas =
	     !pciw_pci0_pcie_ep$trn_rsrc_rdy_n && pciw_inFifo$FULL_N ;

  // register pciw_pcie_irq_rInterruptDi
  assign pciw_pcie_irq_rInterruptDi$D_IN = pciw_pcie_irq_fifoAssert$dD_OUT ;
  assign pciw_pcie_irq_rInterruptDi$EN =
	     WILL_FIRE_RL_pciw_pcie_irq_msi_enabled_assert_interrupt ;

  // register pciw_pcie_irq_rInterruptN
  assign pciw_pcie_irq_rInterruptN$D_IN =
	     !WILL_FIRE_RL_pciw_pcie_irq_msi_enabled_assert_interrupt ;
  assign pciw_pcie_irq_rInterruptN$EN =
	     WILL_FIRE_RL_pciw_pcie_irq_msi_enabled_assert_interrupt ||
	     WILL_FIRE_RL_pciw_pcie_irq_msi_enabled_assert_interrupt_done ;

  // register pciw_pcie_irq_rInterrupting
  assign pciw_pcie_irq_rInterrupting$D_IN =
	     !WILL_FIRE_RL_pciw_pcie_irq_msi_enabled_assert_interrupt_done ;
  assign pciw_pcie_irq_rInterrupting$EN =
	     WILL_FIRE_RL_pciw_pcie_irq_msi_enabled_assert_interrupt_done ||
	     WILL_FIRE_RL_pciw_pcie_irq_msi_enabled_assert_interrupt ;

  // register pciw_pcie_irq_rMMEnabled
  assign pciw_pcie_irq_rMMEnabled$D_IN =
	     pciw_pci0_pcie_ep$cfg_interrupt_mmenable ;
  assign pciw_pcie_irq_rMMEnabled$EN = 1'd1 ;

  // register pciw_pcie_irq_rMSIEnabled
  assign pciw_pcie_irq_rMSIEnabled$D_IN =
	     pciw_pci0_pcie_ep$cfg_interrupt_msienable ;
  assign pciw_pcie_irq_rMSIEnabled$EN = 1'd1 ;

  // register pciw_rg
  assign pciw_rg$D_IN =
	     MUX_pciw_rg$write_1__SEL_1 ?
	       MUX_pciw_rg$write_1__VAL_1 :
	       82'h0AAAAAAAAAAAAAAAAAAAA ;
  assign pciw_rg$EN =
	     WILL_FIRE_RL_pciw_upconv_connect1 && !pciw_inFifo$D_OUT[79] ||
	     WILL_FIRE_RL_pciw_upconv_connect2 ;

  // register pciw_rg_1
  assign pciw_rg_1$D_IN =
	     MUX_pciw_rg_1$write_1__SEL_1 ?
	       MUX_pciw_rg_1$write_1__VAL_1 :
	       82'h0AAAAAAAAAAAAAAAAAAAA ;
  assign pciw_rg_1$EN =
	     WILL_FIRE_RL_pciw_downconv_connect1 &&
	     pciw_uI2PF$D_OUT[135:128] != 8'd0 ||
	     WILL_FIRE_RL_pciw_downconv_connect2 ;

  // submodule ctop
  assign ctop$gps_ppsSyncIn_x = gps_ppsSyncIn_x ;
  assign ctop$server_request_put = pciw_uP2IF$D_OUT ;
  assign ctop$switch_x = 3'h0 ;
  assign ctop$wci_m_0_SData = 32'h0 ;
  assign ctop$wci_m_0_SFlag = 2'h0 ;
  assign ctop$wci_m_0_SResp = 2'h0 ;
  assign ctop$wci_m_1_SData = 32'h0 ;
  assign ctop$wci_m_1_SFlag = 2'h0 ;
  assign ctop$wci_m_1_SResp = 2'h0 ;
  assign ctop$wci_m_2_SData = 32'h0 ;
  assign ctop$wci_m_2_SFlag = 2'h0 ;
  assign ctop$wci_m_2_SResp = 2'h0 ;
  assign ctop$wci_m_3_SData = 32'h0 ;
  assign ctop$wci_m_3_SFlag = 2'h0 ;
  assign ctop$wci_m_3_SResp = 2'h0 ;
  assign ctop$wci_m_4_SData = 32'h0 ;
  assign ctop$wci_m_4_SFlag = 2'h0 ;
  assign ctop$wci_m_4_SResp = 2'h0 ;
  assign ctop$wmemiM0_SData = 128'h0 ;
  assign ctop$wmemiM0_SResp = 2'h0 ;
  assign ctop$wsi_s_adc_MBurstLength = 12'h0 ;
  assign ctop$wsi_s_adc_MByteEn = 4'h0 ;
  assign ctop$wsi_s_adc_MCmd = 3'h0 ;
  assign ctop$wsi_s_adc_MData = 32'h0 ;
  assign ctop$wsi_s_adc_MReqInfo = 8'h0 ;
  assign ctop$EN_server_request_put =
	     ctop$RDY_server_request_put && pciw_uP2IF$EMPTY_N ;
  assign ctop$EN_server_response_get =
	     ctop$RDY_server_response_get && pciw_uI2PF$FULL_N ;
  assign ctop$wci_m_0_SThreadBusy = 1'b0 ;
  assign ctop$wci_m_1_SThreadBusy = 1'b0 ;
  assign ctop$wci_m_2_SThreadBusy = 1'b0 ;
  assign ctop$wci_m_3_SThreadBusy = 1'b0 ;
  assign ctop$wci_m_4_SThreadBusy = 1'b0 ;
  assign ctop$wsi_s_adc_MReqLast = 1'b0 ;
  assign ctop$wsi_s_adc_MBurstPrecise = 1'b0 ;
  assign ctop$wsi_s_adc_MReset_n = 1'b0 ;
  assign ctop$wsi_m_dac_SThreadBusy = 1'b0 ;
  assign ctop$wsi_m_dac_SReset_n = 1'b0 ;
  assign ctop$wmemiM0_SRespLast = 1'b0 ;
  assign ctop$wmemiM0_SCmdAccept = 1'b0 ;
  assign ctop$wmemiM0_SDataAccept = 1'b0 ;

  // submodule infLed
  assign infLed$WVAL = ctop$led ;

  // submodule pciw_inFifo
  assign pciw_inFifo$D_IN =
	     { !pciw_pci0_pcie_ep$trn_rsof_n,
	       !pciw_pci0_pcie_ep$trn_reof_n,
	       ~pciw_pci0_pcie_ep$trn_rbar_hit_n,
	       ~pciw_pci0_pcie_ep$trn_rrem_n,
	       pciw_pci0_pcie_ep$trn_rd } ;
  assign pciw_inFifo$ENQ = pciw_pci0_pwTrnRx$whas ;
  assign pciw_inFifo$DEQ =
	     WILL_FIRE_RL_pciw_upconv_connect2 ||
	     WILL_FIRE_RL_pciw_upconv_connect1 ;
  assign pciw_inFifo$CLR = 1'b0 ;

  // submodule pciw_outFifo
  assign pciw_outFifo$D_IN =
	     WILL_FIRE_RL_pciw_downconv_connect1 ?
	       MUX_pciw_outFifo$enq_1__VAL_1 :
	       pciw_rg_1[80:0] ;
  assign pciw_outFifo$ENQ =
	     WILL_FIRE_RL_pciw_downconv_connect1 ||
	     WILL_FIRE_RL_pciw_downconv_connect2 ;
  assign pciw_outFifo$DEQ = WILL_FIRE_RL_pciw_connect_1 ;
  assign pciw_outFifo$CLR = 1'b0 ;

  // submodule pciw_pci0_pcie_ep
  assign pciw_pci0_pcie_ep$cfg_byte_en_n = 4'd15 ;
  assign pciw_pci0_pcie_ep$cfg_di = 32'd0 ;
  assign pciw_pci0_pcie_ep$cfg_dsn = 64'h0000000101000A35 ;
  assign pciw_pci0_pcie_ep$cfg_dwaddr = 10'd0 ;
  assign pciw_pci0_pcie_ep$cfg_err_cor_n = 1'd1 ;
  assign pciw_pci0_pcie_ep$cfg_err_cpl_abort_n = 1'd1 ;
  assign pciw_pci0_pcie_ep$cfg_err_cpl_timeout_n = 1'd1 ;
  assign pciw_pci0_pcie_ep$cfg_err_cpl_unexpect_n = 1'd1 ;
  assign pciw_pci0_pcie_ep$cfg_err_ecrc_n = 1'd1 ;
  assign pciw_pci0_pcie_ep$cfg_err_locked_n = 1'd1 ;
  assign pciw_pci0_pcie_ep$cfg_err_posted_n = 1'd1 ;
  assign pciw_pci0_pcie_ep$cfg_err_tlp_cpl_header = 48'd0 ;
  assign pciw_pci0_pcie_ep$cfg_err_ur_n = 1'd1 ;
  assign pciw_pci0_pcie_ep$cfg_interrupt_assert_n = 1'd1 ;
  assign pciw_pci0_pcie_ep$cfg_interrupt_di = pciw_pcie_irq_rInterruptDi ;
  assign pciw_pci0_pcie_ep$cfg_interrupt_n = pciw_pcie_irq_rInterruptN ;
  assign pciw_pci0_pcie_ep$cfg_pm_wake_n = 1'd1 ;
  assign pciw_pci0_pcie_ep$cfg_rd_en_n = 1'd1 ;
  assign pciw_pci0_pcie_ep$cfg_trn_pending_n = 1'd1 ;
  assign pciw_pci0_pcie_ep$cfg_wr_en_n = 1'd1 ;
  assign pciw_pci0_pcie_ep$pci_exp_rxn = pcie_rxn_i ;
  assign pciw_pci0_pcie_ep$pci_exp_rxp = pcie_rxp_i ;
  assign pciw_pci0_pcie_ep$trn_rcpl_streaming_n = 1'b1 ;
  assign pciw_pci0_pcie_ep$trn_rdst_rdy_n = !pciw_pci0_pwTrnRx$whas ;
  assign pciw_pci0_pcie_ep$trn_rnp_ok_n = 1'b0 ;
  assign pciw_pci0_pcie_ep$trn_td =
	     pciw_pci0_pwTrnTx$whas ? pciw_outFifo$D_OUT[63:0] : 64'h0 ;
  assign pciw_pci0_pcie_ep$trn_teof_n =
	     !pciw_pci0_pwTrnTx$whas || !pciw_outFifo$D_OUT[79] ;
  assign pciw_pci0_pcie_ep$trn_terrfwd_n = 1'd1 ;
  assign pciw_pci0_pcie_ep$trn_trem_n =
	     pciw_pci0_pwTrnTx$whas ? ~pciw_outFifo$D_OUT[71:64] : 8'd255 ;
  assign pciw_pci0_pcie_ep$trn_tsof_n =
	     !pciw_pci0_pwTrnTx$whas || !pciw_outFifo$D_OUT[80] ;
  assign pciw_pci0_pcie_ep$trn_tsrc_dsc_n = 1'b1 ;
  assign pciw_pci0_pcie_ep$trn_tsrc_rdy_n = !pciw_pci0_pwTrnTx$whas ;

  // submodule pciw_pciDevice
  assign pciw_pciDevice$sD_IN =
	     { pciw_pci0_pcie_ep$cfg_bus_number,
	       pciw_pci0_pcie_ep$cfg_device_number,
	       pciw_pci0_pcie_ep$cfg_function_number } ;
  assign pciw_pciDevice$sEN = pciw_pciDevice$sRDY ;

  // submodule pciw_pciLinkUp
  assign pciw_pciLinkUp$sD_IN = !pciw_pci0_pcie_ep$trn_lnk_up_n ;
  assign pciw_pciLinkUp$sEN = 1'd1 ;

  // submodule pciw_pcie_irq_fifoAssert
  assign pciw_pcie_irq_fifoAssert$sD_IN = 8'h0 ;
  assign pciw_pcie_irq_fifoAssert$sENQ = 1'b0 ;
  assign pciw_pcie_irq_fifoAssert$dDEQ =
	     WILL_FIRE_RL_pciw_pcie_irq_msi_enabled_assert_interrupt ;

  // submodule pciw_uI2PF
  assign pciw_uI2PF$D_IN = ctop$server_response_get ;
  assign pciw_uI2PF$ENQ = ctop$RDY_server_response_get && pciw_uI2PF$FULL_N ;
  assign pciw_uI2PF$DEQ = WILL_FIRE_RL_pciw_downconv_connect1 ;
  assign pciw_uI2PF$CLR = 1'b0 ;

  // submodule pciw_uP2IF
  assign pciw_uP2IF$D_IN =
	     MUX_pciw_uP2IF$enq_1__SEL_1 ?
	       MUX_pciw_uP2IF$enq_1__VAL_1 :
	       MUX_pciw_uP2IF$enq_1__VAL_2 ;
  assign pciw_uP2IF$ENQ =
	     WILL_FIRE_RL_pciw_upconv_connect1 && pciw_inFifo$D_OUT[79] ||
	     WILL_FIRE_RL_pciw_upconv_connect2 ;
  assign pciw_uP2IF$DEQ = ctop$RDY_server_request_put && pciw_uP2IF$EMPTY_N ;
  assign pciw_uP2IF$CLR = 1'b0 ;

  // remaining internal signals
  assign wOut_be__h3146 = { pciw_rg[71:64], pciw_inFifo$D_OUT[71:64] } ;
  assign wOut_data__h3147 = { pciw_rg[63:0], pciw_inFifo$D_OUT[63:0] } ;
  assign x_be__h3067 = { pciw_inFifo$D_OUT[71:64], 8'd0 } ;
  assign x_data__h3068 = { pciw_inFifo$D_OUT[63:0], 64'hAAAAAAAAAAAAAAAA } ;

  // handling of inlined registers

  always@(posedge pciw_pci0_pcie_ep$trn_clk)
  begin
    if (!pciw_p125rst$OUT_RST_N)
      begin
        pciw_pcie_irq_rInterruptDi <= `BSV_ASSIGNMENT_DELAY 8'd0;
	pciw_pcie_irq_rInterruptN <= `BSV_ASSIGNMENT_DELAY 1'd1;
	pciw_pcie_irq_rInterrupting <= `BSV_ASSIGNMENT_DELAY 1'd0;
	pciw_rg <= `BSV_ASSIGNMENT_DELAY 82'h0AAAAAAAAAAAAAAAAAAAA;
	pciw_rg_1 <= `BSV_ASSIGNMENT_DELAY 82'h0AAAAAAAAAAAAAAAAAAAA;
      end
    else
      begin
        if (pciw_pcie_irq_rInterruptDi$EN)
	  pciw_pcie_irq_rInterruptDi <= `BSV_ASSIGNMENT_DELAY
	      pciw_pcie_irq_rInterruptDi$D_IN;
	if (pciw_pcie_irq_rInterruptN$EN)
	  pciw_pcie_irq_rInterruptN <= `BSV_ASSIGNMENT_DELAY
	      pciw_pcie_irq_rInterruptN$D_IN;
	if (pciw_pcie_irq_rInterrupting$EN)
	  pciw_pcie_irq_rInterrupting <= `BSV_ASSIGNMENT_DELAY
	      pciw_pcie_irq_rInterrupting$D_IN;
	if (pciw_rg$EN) pciw_rg <= `BSV_ASSIGNMENT_DELAY pciw_rg$D_IN;
	if (pciw_rg_1$EN) pciw_rg_1 <= `BSV_ASSIGNMENT_DELAY pciw_rg_1$D_IN;
      end
    if (pciw_pcie_irq_rMMEnabled$EN)
      pciw_pcie_irq_rMMEnabled <= `BSV_ASSIGNMENT_DELAY
	  pciw_pcie_irq_rMMEnabled$D_IN;
    if (pciw_pcie_irq_rMSIEnabled$EN)
      pciw_pcie_irq_rMSIEnabled <= `BSV_ASSIGNMENT_DELAY
	  pciw_pcie_irq_rMSIEnabled$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    pciw_pcie_irq_rInterruptDi = 8'hAA;
    pciw_pcie_irq_rInterruptN = 1'h0;
    pciw_pcie_irq_rInterrupting = 1'h0;
    pciw_pcie_irq_rMMEnabled = 3'h2;
    pciw_pcie_irq_rMSIEnabled = 1'h0;
    pciw_rg = 82'h2AAAAAAAAAAAAAAAAAAAA;
    pciw_rg_1 = 82'h2AAAAAAAAAAAAAAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkFTop_nf10

