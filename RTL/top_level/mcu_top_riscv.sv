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

endmodule;
