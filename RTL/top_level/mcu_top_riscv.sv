`include "axi_bus.sv"

module mcu_top_riscv ();

/*
--------------------------------------------------
              RISCV Core instance
-------------------------------------------------
*/

riscv_core_instance
#(
  .N_EXT_PERF_COUNTERS (     0       ),
  .FPU                 ( RISCY_RV32F ),
  .SHARED_FP           (     0       ),
  .SHARED_FP_DIVSQRT   (     2       )
)
  RISCV_CORE
(
  // Clock and Reset
  .clk_i(),
  .rst_ni(),

  .clock_en_i(),    // enable clock, otherwise it is gated
  .test_en_i(),     // enable all clock gates for testing

  // Core ID, Cluster ID and boot address are considered more or less static
  .boot_addr_i(),
  .core_id_i(),
  .cluster_id_i(),

  // Instruction memory interface
  .instr_req_o(),
  .instr_gnt_i(),
  .instr_rvalid_i(),
  .instr_addr_o(),
  .instr_rdata_i(),

  // Data memory interface
  .data_req_o(),
  .data_gnt_i(),
  .data_rvalid_i(),
  .data_we_o(),
  .data_be_o(),
  .data_addr_o(),
  .data_wdata_o(),
  .data_rdata_i(),
  .data_err_i(),

  // apu-interconnect
  // handshake signals
  .apu_master_req_o      (   ),
  .apu_master_ready_o    (   ),
  .apu_master_gnt_i      ('0 ),
  // request channel
  .apu_master_operands_o (   ),
  .apu_master_op_o       (   ),
  .apu_master_type_o     (   ),
  .apu_master_flags_o    (   ),
  // response channel
  .apu_master_valid_i    ('0 ),
  .apu_master_result_i   ('0 ),
  .apu_master_flags_i    ('0 ),

  // Interrupt inputs
  .irq_i(),                 // level sensitive IR lines
  .irq_id_i(),
  .irq_ack_o(),
  .irq_id_o(),
  .irq_sec_i(),

  .sec_lvl_o(),

  // Debug Interface
  .debug_req_i          ('0 ),
  .debug_gnt_o          (   ),
  .debug_rvalid_o       (   ),
  .debug_addr_i         ('0 ),
  .debug_we_i           ('0 ),
  .debug_wdata_i        ('0 ),
  .debug_rdata_o        (   ),
  .debug_halted_o       (   ),
  .debug_halt_i         ('0 ),
  .debug_resume_i       ('0 ),

  // CPU Control Signals
  .fetch_enable_i(),
  .core_busy_o(),

  .ext_perf_counters_i
);

/*
--------------------------------------------------
                 Core 2 Axi
-------------------------------------------------
*/

core2axi_wrap
#(
  .AXI_ADDR_WIDTH   ( `AXI_ADDR_WIDTH      ),
  .AXI_ID_WIDTH     ( `AXI_ID_MASTER_WIDTH ),
  .AXI_DATA_WIDTH   ( `AXI_DATA_WIDTH      ),
  .AXI_USER_WIDTH   ( `AXI_USER_WIDTH      ),
  .REGISTERED_GRANT ( "FALSE"             )
)
core2axi_instance
(
  .clk_i         ( clk             ),
  .rst_ni        ( rst_n           ),

  .data_req_i    ( core_axi_req    ),
  .data_gnt_o    ( core_axi_gnt    ),
  .data_rvalid_o ( core_axi_rvalid ),
  .data_addr_i   ( core_axi_addr   ),
  .data_we_i     ( core_axi_we     ),
  .data_be_i     ( core_axi_be     ),
  .data_rdata_o  ( core_axi_rdata  ),
  .data_wdata_i  ( core_axi_wdata  ),

  .master        ( core_master_int )
);

/*
--------------------------------------------------
              AXI Bus Interconnect
-------------------------------------------------
*/

axi_node_intf_wrap
#(
  .NB_MASTER      ( 2                    ),	// AXI Masters: RISCV core
  .NB_SLAVE       ( 2                    ),	// AXI Slaves:  Data Memory, UART
  .AXI_ADDR_WIDTH ( `AXI_ADDR_WIDTH      ),
  .AXI_DATA_WIDTH ( `AXI_DATA_WIDTH      ),
  .AXI_ID_WIDTH   ( `AXI_ID_MASTER_WIDTH ),
  .AXI_USER_WIDTH ( `AXI_USER_WIDTH      )
) axi_bus_interconnect (

  .clk          (),
  .rst_n        (),
  .test_en_i    (),

  .slave        (),

  .master       (),

  // Memory map
  .start_addr_i (),
  .end_addr_i   ()

)

/*
--------------------------------------------------
                AXI2APB Bridge
-------------------------------------------------
*/

axi2apb_wrap
#(
    parameter AXI_ADDR_WIDTH   = 32,
    parameter AXI_DATA_WIDTH   = 32,
    parameter AXI_USER_WIDTH   = 6,
    parameter AXI_ID_WIDTH     = 6,
    parameter APB_ADDR_WIDTH   = 32
) axi2apb_wrap_instance
(
    .clk_i        (),
    .rst_ni       (),
    .test_en_i    (),

    .axi_slave    (),

    .apb_master   ()

);

/*
-------------------------------------------------
                    APB UART
-------------------------------------------------
*/

apb_uart_sv
#(
    parameter APB_ADDR_WIDTH = 12  //APB slaves are 4KB by default
) apb_uart_sv_instance
(
    .CLK        ()
    .RSTN       (),
    /* verilator lint_off UNUSED */
    .PADDR      (),
    /* lint_on */
    .PWDATA     (),
    .PWRITE     (),
    .PSEL       (),
    .PENABLE    (),
    .PRDATA     (),
    .PREADY     (),
    .PSLVERR    (),

    .rx_i       (),     // Receiver input
    .tx_o       (),     // Transmitter output

    .event_o    ()      // interrupt/event output
);


endmodule;
