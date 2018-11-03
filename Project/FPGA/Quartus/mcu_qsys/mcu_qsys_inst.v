	mcu_qsys u0 (
		.clk_clk                          (<connected-to-clk_clk>),                          //               clk.clk
		.reset_reset_n                    (<connected-to-reset_reset_n>),                    //             reset.reset_n
		.memory_mem_a                     (<connected-to-memory_mem_a>),                     //            memory.mem_a
		.memory_mem_ba                    (<connected-to-memory_mem_ba>),                    //                  .mem_ba
		.memory_mem_ck                    (<connected-to-memory_mem_ck>),                    //                  .mem_ck
		.memory_mem_ck_n                  (<connected-to-memory_mem_ck_n>),                  //                  .mem_ck_n
		.memory_mem_cke                   (<connected-to-memory_mem_cke>),                   //                  .mem_cke
		.memory_mem_cs_n                  (<connected-to-memory_mem_cs_n>),                  //                  .mem_cs_n
		.memory_mem_ras_n                 (<connected-to-memory_mem_ras_n>),                 //                  .mem_ras_n
		.memory_mem_cas_n                 (<connected-to-memory_mem_cas_n>),                 //                  .mem_cas_n
		.memory_mem_we_n                  (<connected-to-memory_mem_we_n>),                  //                  .mem_we_n
		.memory_mem_reset_n               (<connected-to-memory_mem_reset_n>),               //                  .mem_reset_n
		.memory_mem_dq                    (<connected-to-memory_mem_dq>),                    //                  .mem_dq
		.memory_mem_dqs                   (<connected-to-memory_mem_dqs>),                   //                  .mem_dqs
		.memory_mem_dqs_n                 (<connected-to-memory_mem_dqs_n>),                 //                  .mem_dqs_n
		.memory_mem_odt                   (<connected-to-memory_mem_odt>),                   //                  .mem_odt
		.memory_mem_dm                    (<connected-to-memory_mem_dm>),                    //                  .mem_dm
		.memory_oct_rzqin                 (<connected-to-memory_oct_rzqin>),                 //                  .oct_rzqin
		.hps_io_hps_io_gpio_inst_LOANIO49 (<connected-to-hps_io_hps_io_gpio_inst_LOANIO49>), //            hps_io.hps_io_gpio_inst_LOANIO49
		.hps_io_hps_io_gpio_inst_LOANIO50 (<connected-to-hps_io_hps_io_gpio_inst_LOANIO50>), //                  .hps_io_gpio_inst_LOANIO50
		.hps_0_uart0_cts                  (<connected-to-hps_0_uart0_cts>),                  //       hps_0_uart0.cts
		.hps_0_uart0_dsr                  (<connected-to-hps_0_uart0_dsr>),                  //                  .dsr
		.hps_0_uart0_dcd                  (<connected-to-hps_0_uart0_dcd>),                  //                  .dcd
		.hps_0_uart0_ri                   (<connected-to-hps_0_uart0_ri>),                   //                  .ri
		.hps_0_uart0_dtr                  (<connected-to-hps_0_uart0_dtr>),                  //                  .dtr
		.hps_0_uart0_rts                  (<connected-to-hps_0_uart0_rts>),                  //                  .rts
		.hps_0_uart0_out1_n               (<connected-to-hps_0_uart0_out1_n>),               //                  .out1_n
		.hps_0_uart0_out2_n               (<connected-to-hps_0_uart0_out2_n>),               //                  .out2_n
		.hps_0_uart0_rxd                  (<connected-to-hps_0_uart0_rxd>),                  //                  .rxd
		.hps_0_uart0_txd                  (<connected-to-hps_0_uart0_txd>),                  //                  .txd
		.hps_0_h2f_loan_io_in             (<connected-to-hps_0_h2f_loan_io_in>),             // hps_0_h2f_loan_io.in
		.hps_0_h2f_loan_io_out            (<connected-to-hps_0_h2f_loan_io_out>),            //                  .out
		.hps_0_h2f_loan_io_oe             (<connected-to-hps_0_h2f_loan_io_oe>)              //                  .oe
	);

