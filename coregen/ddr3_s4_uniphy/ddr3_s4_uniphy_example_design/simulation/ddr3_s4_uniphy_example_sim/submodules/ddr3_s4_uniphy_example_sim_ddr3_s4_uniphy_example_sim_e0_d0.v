// ddr3_s4_uniphy_example_sim_ddr3_s4_uniphy_example_sim_e0_d0.v

// This file was auto-generated from altera_avalon_mm_traffic_generator_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using SOPC Builder version 11.0sp1 208 at 2011.09.06.09:00:06

`timescale 1 ps / 1 ps
module ddr3_s4_uniphy_example_sim_ddr3_s4_uniphy_example_sim_e0_d0 #(
		parameter DEVICE_FAMILY                          = "Stratix IV",
		parameter TG_AVL_DATA_WIDTH                      = 64,
		parameter TG_AVL_ADDR_WIDTH                      = 27,
		parameter TG_AVL_WORD_ADDR_WIDTH                 = 24,
		parameter TG_AVL_SIZE_WIDTH                      = 3,
		parameter TG_AVL_BE_WIDTH                        = 8,
		parameter TG_GEN_BYTE_ADDR                       = 1,
		parameter TG_NUM_DRIVER_LOOP                     = 1,
		parameter TG_RANDOM_BYTE_ENABLE                  = 1,
		parameter TG_ENABLE_READ_COMPARE                 = 1,
		parameter TG_POWER_OF_TWO_BURSTS_ONLY            = 0,
		parameter TG_BURST_ON_BURST_BOUNDARY             = 0,
		parameter TG_TIMEOUT_COUNTER_WIDTH               = 30,
		parameter TG_MAX_READ_LATENCY                    = 20,
		parameter TG_SINGLE_RW_SEQ_ADDR_COUNT            = 32,
		parameter TG_SINGLE_RW_RAND_ADDR_COUNT           = 32,
		parameter TG_SINGLE_RW_RAND_SEQ_ADDR_COUNT       = 32,
		parameter TG_BLOCK_RW_SEQ_ADDR_COUNT             = 8,
		parameter TG_BLOCK_RW_RAND_ADDR_COUNT            = 8,
		parameter TG_BLOCK_RW_RAND_SEQ_ADDR_COUNT        = 8,
		parameter TG_BLOCK_RW_BLOCK_SIZE                 = 8,
		parameter TG_TEMPLATE_STAGE_COUNT                = 4,
		parameter TG_SEQ_ADDR_GEN_MIN_BURSTCOUNT         = 1,
		parameter TG_SEQ_ADDR_GEN_MAX_BURSTCOUNT         = 4,
		parameter TG_RAND_ADDR_GEN_MIN_BURSTCOUNT        = 1,
		parameter TG_RAND_ADDR_GEN_MAX_BURSTCOUNT        = 4,
		parameter TG_RAND_SEQ_ADDR_GEN_MIN_BURSTCOUNT    = 1,
		parameter TG_RAND_SEQ_ADDR_GEN_MAX_BURSTCOUNT    = 4,
		parameter TG_RAND_SEQ_ADDR_GEN_RAND_ADDR_PERCENT = 50
	) (
		input  wire        clk,             // avl_clock.clk
		input  wire        reset_n,         // avl_reset.reset_n
		output wire        pass,            //    status.pass
		output wire        fail,            //          .fail
		output wire        test_complete,   //          .test_complete
		input  wire        avl_ready,       //       avl.waitrequest_n
		output wire [26:0] avl_addr,        //          .address
		output wire [2:0]  avl_size,        //          .burstcount
		output wire [63:0] avl_wdata,       //          .writedata
		input  wire [63:0] avl_rdata,       //          .readdata
		output wire        avl_write_req,   //          .write
		output wire        avl_read_req,    //          .read
		input  wire        avl_rdata_valid, //          .readdatavalid
		output wire [7:0]  avl_be,          //          .byteenable
		output wire        avl_burstbegin   //          .beginbursttransfer
	);

	generate
		// If any of the display statements (or deliberately broken
		// instantiations) within this generate block triggers then this module
		// has been instantiated this module with a set of parameters different
		// from those it was generated for.  This will usually result in a
		// non-functioning system.
		if (DEVICE_FAMILY != "Stratix IV")
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					device_family_check ( .error(1'b1) );
		end
		if (TG_AVL_DATA_WIDTH != 64)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_avl_data_width_check ( .error(1'b1) );
		end
		if (TG_AVL_ADDR_WIDTH != 27)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_avl_addr_width_check ( .error(1'b1) );
		end
		if (TG_AVL_WORD_ADDR_WIDTH != 24)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_avl_word_addr_width_check ( .error(1'b1) );
		end
		if (TG_AVL_SIZE_WIDTH != 3)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_avl_size_width_check ( .error(1'b1) );
		end
		if (TG_AVL_BE_WIDTH != 8)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_avl_be_width_check ( .error(1'b1) );
		end
		if (TG_GEN_BYTE_ADDR != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_gen_byte_addr_check ( .error(1'b1) );
		end
		if (TG_NUM_DRIVER_LOOP != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_num_driver_loop_check ( .error(1'b1) );
		end
		if (TG_RANDOM_BYTE_ENABLE != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_random_byte_enable_check ( .error(1'b1) );
		end
		if (TG_ENABLE_READ_COMPARE != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_enable_read_compare_check ( .error(1'b1) );
		end
		if (TG_POWER_OF_TWO_BURSTS_ONLY != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_power_of_two_bursts_only_check ( .error(1'b1) );
		end
		if (TG_BURST_ON_BURST_BOUNDARY != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_burst_on_burst_boundary_check ( .error(1'b1) );
		end
		if (TG_TIMEOUT_COUNTER_WIDTH != 30)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_timeout_counter_width_check ( .error(1'b1) );
		end
		if (TG_MAX_READ_LATENCY != 20)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_max_read_latency_check ( .error(1'b1) );
		end
		if (TG_SINGLE_RW_SEQ_ADDR_COUNT != 32)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_single_rw_seq_addr_count_check ( .error(1'b1) );
		end
		if (TG_SINGLE_RW_RAND_ADDR_COUNT != 32)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_single_rw_rand_addr_count_check ( .error(1'b1) );
		end
		if (TG_SINGLE_RW_RAND_SEQ_ADDR_COUNT != 32)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_single_rw_rand_seq_addr_count_check ( .error(1'b1) );
		end
		if (TG_BLOCK_RW_SEQ_ADDR_COUNT != 8)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_block_rw_seq_addr_count_check ( .error(1'b1) );
		end
		if (TG_BLOCK_RW_RAND_ADDR_COUNT != 8)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_block_rw_rand_addr_count_check ( .error(1'b1) );
		end
		if (TG_BLOCK_RW_RAND_SEQ_ADDR_COUNT != 8)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_block_rw_rand_seq_addr_count_check ( .error(1'b1) );
		end
		if (TG_BLOCK_RW_BLOCK_SIZE != 8)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_block_rw_block_size_check ( .error(1'b1) );
		end
		if (TG_TEMPLATE_STAGE_COUNT != 4)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_template_stage_count_check ( .error(1'b1) );
		end
		if (TG_SEQ_ADDR_GEN_MIN_BURSTCOUNT != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_seq_addr_gen_min_burstcount_check ( .error(1'b1) );
		end
		if (TG_SEQ_ADDR_GEN_MAX_BURSTCOUNT != 4)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_seq_addr_gen_max_burstcount_check ( .error(1'b1) );
		end
		if (TG_RAND_ADDR_GEN_MIN_BURSTCOUNT != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_rand_addr_gen_min_burstcount_check ( .error(1'b1) );
		end
		if (TG_RAND_ADDR_GEN_MAX_BURSTCOUNT != 4)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_rand_addr_gen_max_burstcount_check ( .error(1'b1) );
		end
		if (TG_RAND_SEQ_ADDR_GEN_MIN_BURSTCOUNT != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_rand_seq_addr_gen_min_burstcount_check ( .error(1'b1) );
		end
		if (TG_RAND_SEQ_ADDR_GEN_MAX_BURSTCOUNT != 4)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_rand_seq_addr_gen_max_burstcount_check ( .error(1'b1) );
		end
		if (TG_RAND_SEQ_ADDR_GEN_RAND_ADDR_PERCENT != 50)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					tg_rand_seq_addr_gen_rand_addr_percent_check ( .error(1'b1) );
		end
	endgenerate

	driver_avl_use_be_avl_use_burstbegin #(
		.DEVICE_FAMILY                          ("Stratix IV"),
		.TG_AVL_DATA_WIDTH                      (64),
		.TG_AVL_ADDR_WIDTH                      (27),
		.TG_AVL_WORD_ADDR_WIDTH                 (24),
		.TG_AVL_SIZE_WIDTH                      (3),
		.TG_AVL_BE_WIDTH                        (8),
		.TG_GEN_BYTE_ADDR                       (1),
		.TG_NUM_DRIVER_LOOP                     (1),
		.TG_RANDOM_BYTE_ENABLE                  (1),
		.TG_ENABLE_READ_COMPARE                 (1),
		.TG_POWER_OF_TWO_BURSTS_ONLY            (0),
		.TG_BURST_ON_BURST_BOUNDARY             (0),
		.TG_TIMEOUT_COUNTER_WIDTH               (30),
		.TG_MAX_READ_LATENCY                    (20),
		.TG_SINGLE_RW_SEQ_ADDR_COUNT            (32),
		.TG_SINGLE_RW_RAND_ADDR_COUNT           (32),
		.TG_SINGLE_RW_RAND_SEQ_ADDR_COUNT       (32),
		.TG_BLOCK_RW_SEQ_ADDR_COUNT             (8),
		.TG_BLOCK_RW_RAND_ADDR_COUNT            (8),
		.TG_BLOCK_RW_RAND_SEQ_ADDR_COUNT        (8),
		.TG_BLOCK_RW_BLOCK_SIZE                 (8),
		.TG_TEMPLATE_STAGE_COUNT                (4),
		.TG_SEQ_ADDR_GEN_MIN_BURSTCOUNT         (1),
		.TG_SEQ_ADDR_GEN_MAX_BURSTCOUNT         (4),
		.TG_RAND_ADDR_GEN_MIN_BURSTCOUNT        (1),
		.TG_RAND_ADDR_GEN_MAX_BURSTCOUNT        (4),
		.TG_RAND_SEQ_ADDR_GEN_MIN_BURSTCOUNT    (1),
		.TG_RAND_SEQ_ADDR_GEN_MAX_BURSTCOUNT    (4),
		.TG_RAND_SEQ_ADDR_GEN_RAND_ADDR_PERCENT (50)
	) traffic_generator_0 (
		.pass                (pass),            //    status.pass
		.fail                (fail),            //          .fail
		.test_complete       (test_complete),   //          .test_complete
		.clk                 (clk),             // avl_clock.clk
		.reset_n             (reset_n),         // avl_reset.reset_n
		.avl_ready           (avl_ready),       //       avl.waitrequest_n
		.avl_addr            (avl_addr),        //          .address
		.avl_size            (avl_size),        //          .burstcount
		.avl_wdata           (avl_wdata),       //          .writedata
		.avl_rdata           (avl_rdata),       //          .readdata
		.avl_write_req       (avl_write_req),   //          .write
		.avl_read_req        (avl_read_req),    //          .read
		.avl_rdata_valid     (avl_rdata_valid), //          .readdatavalid
		.avl_be              (avl_be),          //          .byteenable
		.avl_burstbegin      (avl_burstbegin),  //          .beginbursttransfer
		.pnf_per_bit         (),                // (terminated)
		.pnf_per_bit_persist ()                 // (terminated)
	);

endmodule
