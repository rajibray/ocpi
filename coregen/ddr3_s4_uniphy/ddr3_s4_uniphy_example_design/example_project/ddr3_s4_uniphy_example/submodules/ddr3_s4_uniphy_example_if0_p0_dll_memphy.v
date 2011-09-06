// megafunction wizard: %altdll%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: ALTDLL 

// ============================================================
// File Name: ddr3_s4_uniphy_example_if0_p0_dll_memphy.v
// Megafunction Name(s):
// 			ALTDLL
//
// Simulation Library Files(s):
// 			
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 11.0 Build 208 07/03/2011 SP 1 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2011 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


//altdll CBX_AUTO_BLACKBOX="ALL" DELAY_BUFFER_MODE="high" DELAY_CHAIN_LENGTH=10 DELAYCTRLOUT_WIDTH=6 device_family="Stratix IV" DLL_OFFSET_CTRL_A_STATIC_OFFSET="0" DLL_OFFSET_CTRL_A_USE_OFFSET="false" DLL_OFFSET_CTRL_B_STATIC_OFFSET="0" DLL_OFFSET_CTRL_B_USE_OFFSET="false" INPUT_FREQUENCY="2857" JITTER_REDUCTION="true" USE_DLL_OFFSET_CTRL_A="false" USE_DLL_OFFSET_CTRL_B="false" dll_clk dll_delayctrlout
//VERSION_BEGIN 11.0SP1 cbx_altdll 2011:07:03:21:10:32:SJ cbx_mgl 2011:07:03:21:11:41:SJ cbx_stratixiii 2011:07:03:21:10:33:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = stratixiv_dll 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  ddr3_s4_uniphy_example_if0_p0_dll_memphy_altdll_et51
	( 
	dll_clk,
	dll_delayctrlout) ;
	input   [0:0]  dll_clk;
	output   [5:0]  dll_delayctrlout;

	wire  [5:0]   wire_dll_wys_m_delayctrlout;

	stratixiv_dll   dll_wys_m
	( 
	.clk(dll_clk),
	.delayctrlout(wire_dll_wys_m_delayctrlout),
	.dqsupdate(),
	.offsetdelayctrlclkout(),
	.offsetdelayctrlout(),
	.upndnout()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aload(1'b0),
	.upndnin(1'b1),
	.upndninclkena(1'b1)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b0)
	// synopsys translate_on
	);
	defparam
		dll_wys_m.delay_buffer_mode = "high",
		dll_wys_m.delay_chain_length = 10,
		dll_wys_m.input_frequency = "2857 ps",
		dll_wys_m.jitter_reduction = "true",
		dll_wys_m.static_delay_ctrl = 10,
		dll_wys_m.lpm_type = "stratixiv_dll";
	assign
		dll_delayctrlout = wire_dll_wys_m_delayctrlout;
endmodule //ddr3_s4_uniphy_example_if0_p0_dll_memphy_altdll_et51
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module ddr3_s4_uniphy_example_if0_p0_dll_memphy (
	dll_clk,
	dll_delayctrlout);

	input	[0:0]  dll_clk;
	output	[5:0]  dll_delayctrlout;

	wire [5:0] sub_wire0;
	wire [5:0] dll_delayctrlout = sub_wire0[5:0];

	ddr3_s4_uniphy_example_if0_p0_dll_memphy_altdll_et51	ddr3_s4_uniphy_example_if0_p0_dll_memphy_altdll_et51_component (
				.dll_clk (dll_clk),
				.dll_delayctrlout (sub_wire0));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: PRIVATE: FREQUENCY_UNIT_MODE STRING "MHz"
// Retrieval info: PRIVATE: INPUT_FREQUENCY_PRIVATE_ID NUMERIC "300"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix IV"
// Retrieval info: CONSTANT: DELAYCTRLOUT_WIDTH NUMERIC "6"
// Retrieval info: CONSTANT: DELAY_BUFFER_MODE STRING "HIGH"
// Retrieval info: CONSTANT: DELAY_CHAIN_LENGTH NUMERIC "10"
// Retrieval info: CONSTANT: DLL_OFFSET_CTRL_A_STATIC_OFFSET NUMERIC "0"
// Retrieval info: CONSTANT: DLL_OFFSET_CTRL_A_USE_OFFSET STRING "false"
// Retrieval info: CONSTANT: DLL_OFFSET_CTRL_B_STATIC_OFFSET NUMERIC "0"
// Retrieval info: CONSTANT: DLL_OFFSET_CTRL_B_USE_OFFSET STRING "false"
// Retrieval info: CONSTANT: INPUT_FREQUENCY NUMERIC "2857"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Stratix IV"
// Retrieval info: CONSTANT: JITTER_REDUCTION STRING "true"
// Retrieval info: CONSTANT: LPM_HINT STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altdll"
// Retrieval info: CONSTANT: USE_DLL_OFFSET_CTRL_A STRING "false"
// Retrieval info: CONSTANT: USE_DLL_OFFSET_CTRL_B STRING "false"
// Retrieval info: USED_PORT: dll_clk 0 0 1 0 INPUT NODEFVAL "dll_clk[0..0]"
// Retrieval info: CONNECT: @dll_clk 0 0 1 0 dll_clk 0 0 1 0
// Retrieval info: USED_PORT: dll_delayctrlout 0 0 6 0 OUTPUT NODEFVAL "dll_delayctrlout[5..0]"
// Retrieval info: CONNECT: dll_delayctrlout 0 0 6 0 @dll_delayctrlout 0 0 6 0
// Retrieval info: GEN_FILE: TYPE_NORMAL ddr3_s4_uniphy_example_if0_p0_dll_memphy.v TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL ddr3_s4_uniphy_example_if0_p0_dll_memphy.qip TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL ddr3_s4_uniphy_example_if0_p0_dll_memphy.bsf TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL ddr3_s4_uniphy_example_if0_p0_dll_memphy_inst.v TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL ddr3_s4_uniphy_example_if0_p0_dll_memphy_bb.v TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL ddr3_s4_uniphy_example_if0_p0_dll_memphy.inc TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL ddr3_s4_uniphy_example_if0_p0_dll_memphy.cmp TRUE TRUE
