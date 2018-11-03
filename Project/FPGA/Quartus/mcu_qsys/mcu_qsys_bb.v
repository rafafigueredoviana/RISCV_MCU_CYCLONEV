
module mcu_qsys (
	clk_clk,
	reset_reset_n,
	memory_mem_a,
	memory_mem_ba,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_ras_n,
	memory_mem_cas_n,
	memory_mem_we_n,
	memory_mem_reset_n,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	memory_mem_odt,
	memory_mem_dm,
	memory_oct_rzqin,
	hps_io_hps_io_gpio_inst_LOANIO49,
	hps_io_hps_io_gpio_inst_LOANIO50,
	hps_0_uart0_cts,
	hps_0_uart0_dsr,
	hps_0_uart0_dcd,
	hps_0_uart0_ri,
	hps_0_uart0_dtr,
	hps_0_uart0_rts,
	hps_0_uart0_out1_n,
	hps_0_uart0_out2_n,
	hps_0_uart0_rxd,
	hps_0_uart0_txd,
	hps_0_h2f_loan_io_in,
	hps_0_h2f_loan_io_out,
	hps_0_h2f_loan_io_oe);	

	input		clk_clk;
	input		reset_reset_n;
	output	[12:0]	memory_mem_a;
	output	[2:0]	memory_mem_ba;
	output		memory_mem_ck;
	output		memory_mem_ck_n;
	output		memory_mem_cke;
	output		memory_mem_cs_n;
	output		memory_mem_ras_n;
	output		memory_mem_cas_n;
	output		memory_mem_we_n;
	output		memory_mem_reset_n;
	inout	[7:0]	memory_mem_dq;
	inout		memory_mem_dqs;
	inout		memory_mem_dqs_n;
	output		memory_mem_odt;
	output		memory_mem_dm;
	input		memory_oct_rzqin;
	inout		hps_io_hps_io_gpio_inst_LOANIO49;
	inout		hps_io_hps_io_gpio_inst_LOANIO50;
	input		hps_0_uart0_cts;
	input		hps_0_uart0_dsr;
	input		hps_0_uart0_dcd;
	input		hps_0_uart0_ri;
	output		hps_0_uart0_dtr;
	output		hps_0_uart0_rts;
	output		hps_0_uart0_out1_n;
	output		hps_0_uart0_out2_n;
	input		hps_0_uart0_rxd;
	output		hps_0_uart0_txd;
	output	[66:0]	hps_0_h2f_loan_io_in;
	input	[66:0]	hps_0_h2f_loan_io_out;
	input	[66:0]	hps_0_h2f_loan_io_oe;
endmodule
