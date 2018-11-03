module de10_top(

  // Global signals

  input   wire          clock,
  input   wire          reset_n,

  // RISCV core control

  input  wire           fetch_enable_input,

  // GPIO signals

  input  wire [31:0]    gpio_input,
  output wire [31:0]    gpio_output,
  output wire [31:0]    gpio_direction,

  // HPS signals

  output wire [12:0] memory_mem_a,                     //            memory.mem_a
  output wire [2:0]  memory_mem_ba,                    //                  .mem_ba
  output wire        memory_mem_ck,                    //                  .mem_ck
  output wire        memory_mem_ck_n,                  //                  .mem_ck_n
  output wire        memory_mem_cke,                   //                  .mem_cke
  output wire        memory_mem_cs_n,                  //                  .mem_cs_n
  output wire        memory_mem_ras_n,                 //                  .mem_ras_n
  output wire        memory_mem_cas_n,                 //                  .mem_cas_n
  output wire        memory_mem_we_n,                  //                  .mem_we_n
  output wire        memory_mem_reset_n,               //                  .mem_reset_n
  inout  wire [7:0]  memory_mem_dq,                    //                  .mem_dq
  inout  wire        memory_mem_dqs,                   //                  .mem_dqs
  inout  wire        memory_mem_dqs_n,                 //                  .mem_dqs_n
  output wire        memory_mem_odt,                   //                  .mem_odt
  output wire        memory_mem_dm,                    //                  .mem_dm
  input  wire        memory_oct_rzqin,                 //                  .oct_rzqin
/*
  output wire [66:0] hps_0_h2f_loan_io_in,             // hps_0_h2f_loan_io.in
  input  wire [66:0] hps_0_h2f_loan_io_out,            //                  .out
  input  wire [66:0] hps_0_h2f_loan_io_oe,             //                  .oe
  input  wire        hps_0_uart0_cts,                  //       hps_0_uart0.cts
  input  wire        hps_0_uart0_dsr,                  //                  .dsr
  input  wire        hps_0_uart0_dcd,                  //                  .dcd
  input  wire        hps_0_uart0_ri,                   //                  .ri
  output wire        hps_0_uart0_dtr,                  //                  .dtr
  output wire        hps_0_uart0_rts,                  //                  .rts
  output wire        hps_0_uart0_out1_n,               //                  .out1_n
  output wire        hps_0_uart0_out2_n,               //                  .out2_n
  input  wire        hps_0_uart0_rxd,                  //                  .rxd
  output wire        hps_0_uart0_txd,                   //                  .txd
*/
  inout wire         hps_io_hps_io_gpio_inst_LOANIO49, // Quartus will assign this pin automatically to PIN_A22 via pin_assignments.tcl script
  inout wire         hps_io_hps_io_gpio_inst_LOANIO50  // Quartus will assign this pin automatically to PIN_B21 via pin_assignments.tcl script
  );

wire UART_RX_LOAN;
wire UART_TX_LOAN;

mcu_top_riscv mcu_instance(

  // Global signals

  .clock (clock),
  .reset_n(reset_n),

  // RISCV core control

  .fetch_enable_input(fetch_enable_input),

  // UART signals

  .uart_rx_input(hps_0_uart0_rxd),
  .uart_tx_output(hps_0_uart0_txd),

  // GPIO signals

  .gpio_input(gpio_input),
  .gpio_output(gpio_output),
  .gpio_direction(gpio_direction)

);

mcu_qsys u0 (
  .clk_clk                  (clock),
  .reset_reset_n                    (reset_n),
  .memory_mem_a                     (memory_mem_a),
  .memory_mem_ba                    (memory_mem_ba),
  .memory_mem_ck                    (memory_mem_ck),
  .memory_mem_ck_n                  (memory_mem_ck_n),
  .memory_mem_cke                   (memory_mem_cke),
  .memory_mem_cs_n                  (memory_mem_cs_n),
  .memory_mem_ras_n                 (memory_mem_ras_n),
  .memory_mem_cas_n                 (memory_mem_cas_n),
  .memory_mem_we_n                  (memory_mem_we_n),
  .memory_mem_reset_n               (memory_mem_reset_n),
  .memory_mem_dq                    (memory_mem_dq),
  .memory_mem_dqs                   (memory_mem_dqs),
  .memory_mem_dqs_n                 (memory_mem_dqs_n),
  .memory_mem_odt                   (memory_mem_odt),
  .memory_mem_dm                    (memory_mem_dm),
  .memory_oct_rzqin                 (memory_oct_rzqin),
  .hps_io_hps_io_gpio_inst_LOANIO49 (hps_io_hps_io_gpio_inst_LOANIO49),
  .hps_io_hps_io_gpio_inst_LOANIO50 (hps_io_hps_io_gpio_inst_LOANIO50),
  .hps_0_uart0_cts                  (hps_0_uart0_cts),
  .hps_0_uart0_dsr                  (hps_0_uart0_dsr),
  .hps_0_uart0_dcd                  (hps_0_uart0_dcd),
  .hps_0_uart0_ri                   (hps_0_uart0_ri),
  .hps_0_uart0_dtr                  (hps_0_uart0_dtr),
  .hps_0_uart0_rts                  (hps_0_uart0_rts),
  .hps_0_uart0_out1_n               (hps_0_uart0_out1_n),
  .hps_0_uart0_out2_n               (hps_0_uart0_out2_n),
  .hps_0_uart0_rxd                  (hps_0_uart0_rxd),
  .hps_0_uart0_txd                  (hps_0_uart0_txd),
  .hps_0_h2f_loan_io_in             (hps_0_h2f_loan_io_in),
  .hps_0_h2f_loan_io_out            (hps_0_h2f_loan_io_out),
  .hps_0_h2f_loan_io_oe             (hps_0_h2f_loan_io_oe)
);

endmodule
