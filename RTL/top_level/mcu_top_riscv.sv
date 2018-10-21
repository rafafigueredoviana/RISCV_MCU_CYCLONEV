`include "axi_bus.sv"
`include "config.sv"

module mcu_top_riscv (

  // Global signals

  input clock,
  input reset_n,

  // RISCV core control






);

/*
-------------------------------------------------
                  Signals Declaration
-------------------------------------------------
*/

// Synchronous reset

reg reset_n_sync;

// RISCV Core Signals:

// Instruction Memory Signals

wire          instruction_request_output;
wire          instruction_granted_input;
wire          instruction_read_valid_input;
wire [31:0]   instruction_address_output;
wire [31:0]   instruction_read_data_input;

// General Data Memory Signals

wire          data_request_output;
wire          data_granted_input;
wire          data_read_valid_input;
wire          data_write_enable_output;
wire [ 3:0]   data_byte_enable_output;
wire [31:0]   data_address_output;
wire [31:0]   data_write_data_output;
wire [31:0]   data_read_data_input;


// AXI Bus creation

AXI_BUS
#(
  .AXI_ADDR_WIDTH ( `AXI_ADDR_WIDTH     ),
  .AXI_DATA_WIDTH ( `AXI_DATA_WIDTH     ),
  .AXI_ID_WIDTH   ( `AXI_ID_SLAVE_WIDTH ),
  .AXI_USER_WIDTH ( `AXI_USER_WIDTH     )
)
slaves[1:0]();

AXI_BUS
#(
  .AXI_ADDR_WIDTH ( `AXI_ADDR_WIDTH     ),
  .AXI_DATA_WIDTH ( `AXI_DATA_WIDTH     ),
  .AXI_ID_WIDTH   ( `AXI_ID_SLAVE_WIDTH ),
  .AXI_USER_WIDTH ( `AXI_USER_WIDTH     )
)
masters[1:0]();

// AXI2MEM Signals

wire          axi_memory_data_request_output;
wire          axi_memory_data_write_enable_output;
wire [ 3:0]   axi_memory_data_byte_enable_output;
wire [31:0]   axi_memory_data_address_output;
wire [31:0]   axi_memory_data_write_data_output;
wire [31:0]   axi_memory_data_read_data_input;

/*
-------------------------------------------------
                  Reset Register
-------------------------------------------------
*/

always_ff @(posedge clk)
begin
  reset_n_sync <= reset_n;
end

/*
-------------------------------------------------
              RISCV Core instance
-------------------------------------------------
*/

riscv_core_instance
#(
  .N_EXT_PERF_COUNTERS   (     0       ),
  .FPU                   ( RISCY_RV32F ),
  .SHARED_FP             (     0       ),
  .SHARED_FP_DIVSQRT     (     2       )
)
  RISCV_CORE
(
  // Clock and Reset
  .clk_i                 (clock       ),
  .rst_ni                (reset_n_sync),

  .clock_en_i            ('1),    // enable clock, otherwise it is gated
  .test_en_i             ('0),     // enable all clock gates for testing

  // Core ID, Cluster ID and boot address are considered more or less static
  .boot_addr_i           (ROM_START_ADDR),
  .core_id_i             (4'h0          ),
  .cluster_id_i          (6'h0          ),

  // Instruction memory interface
  .instr_req_o           (instruction_request_output    ),
  .instr_gnt_i           (instruction_granted_input     ),
  .instr_rvalid_i        (instruction_read_valid_input  ),
  .instr_addr_o          (instruction_address_output    ),
  .instr_rdata_i         (instruction_read_data_input   ),

  // Data memory interface
  .data_req_o            (data_request_output           ),
  .data_gnt_i            (data_granted_input            ),
  .data_rvalid_i         (data_read_valid_input         ),
  .data_we_o             (data_write_enable_output      ),
  .data_be_o             (data_byte_enable_output       ),
  .data_addr_o           (data_address_output           ),
  .data_wdata_o          (data_write_data_output        ),
  .data_rdata_i          (data_read_data_input          ),
  .data_err_i            (1'b0                          ),

  // apu-interconnect
  // handshake signals
  .apu_master_req_o      (   ),
  .apu_master_ready_o    (   ),
  .apu_master_gnt_i      ('1 ),
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
  .irq_i    (),                 // level sensitive IR lines
  .irq_id_i (),
  .irq_ack_o(),
  .irq_id_o (),
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

  .ext_perf_counters_i  ()
);

/*
-------------------------------------------------
                 Core 2 Axi
-------------------------------------------------
*/

core2axi_wrap
#(
  .AXI_ADDR_WIDTH   ( `AXI_ADDR_WIDTH       ),
  .AXI_ID_WIDTH     ( `AXI_ID_MASTER_WIDTH  ),
  .AXI_DATA_WIDTH   ( `AXI_DATA_WIDTH       ),
  .AXI_USER_WIDTH   ( `AXI_USER_WIDTH       ),
  .REGISTERED_GRANT ( "FALSE"               )
)
core2axi_instance
(
  .clk_i         ( clk                      ),
  .rst_ni        ( reset_n_sync             ),

  .data_req_i    ( data_request_output      ),
  .data_gnt_o    ( data_granted_input       ),
  .data_rvalid_o ( data_read_valid_input    ),
  .data_we_i     ( data_write_enable_output ),
  .data_be_i     ( data_byte_enable_output  ),
  .data_addr_i   ( data_address_output      ),
  .data_wdata_i  ( data_write_data_output   ),
  .data_rdata_o  ( data_read_data_input     ),

  .master        ( masters[0]               )
);

/*
-------------------------------------------------
              AXI Bus Interconnect
-------------------------------------------------
*/

axi_node_intf_wrap
#(
  .NB_MASTER      ( 1                    ),	// AXI Masters: RISCV core
  .NB_SLAVE       ( 2                    ),	// AXI Slaves:  Data Memory, AXI2APB bridge
  .AXI_ADDR_WIDTH ( `AXI_ADDR_WIDTH      ),
  .AXI_DATA_WIDTH ( `AXI_DATA_WIDTH      ),
  .AXI_ID_WIDTH   ( `AXI_ID_MASTER_WIDTH ),
  .AXI_USER_WIDTH ( `AXI_USER_WIDTH      )
) axi_bus_interconnect (

  .clk          (clk),
  .rst_n        (reset_n_sync),
  .test_en_i    ('0),

  .slave        (masters), //CORE2AXI -> AXIBUS

  .master       (slaves), // CORE2AXI -> AXIBUS -> AXIPERIPHERALS

  // Memory map
  .start_addr_i (),
  .end_addr_i   ()

)

/*
-------------------------------------------------
                 AXI2Memory Bridge
-------------------------------------------------
*/

axi_mem_if_SP_wrap
#(
  .AXI_ADDR_WIDTH  ( AXI_ADDR_WIDTH     ),
  .AXI_DATA_WIDTH  ( AXI_DATA_WIDTH     ),
  .AXI_ID_WIDTH    ( AXI_ID_SLAVE_WIDTH ),
  .AXI_USER_WIDTH  ( AXI_USER_WIDTH     ),
  .MEM_ADDR_WIDTH  ( DATA_ADDR_WIDTH    )
)
data_mem_axi_if
(
  .clk         ( clk                                 ),
  .rst_n       ( reset_n_sync                        ),
  .test_en_i   ( '0                                  ),

  .mem_req_o   ( axi_memory_data_request_output      ),
  .mem_we_o    ( axi_memory_data_write_enable_output ),
  .mem_be_o    ( axi_memory_data_byte_enable_output  ),
  .mem_addr_o  ( axi_memory_data_address_output      ),
  .mem_wdata_o ( axi_memory_data_write_data_output   ),
  .mem_rdata_i ( axi_memory_data_read_data_input     ),

  .slave       ( slaves[0]                           )  // CORE2AXI -> AXIBUS -> AXIMEM
);

/*
-------------------------------------------------
             General Data RAM
-------------------------------------------------
*/

sp_ram_wrap
  #(
    .RAM_SIZE   (DATA_RAM_SIZE                      ), // in bytes
    .ADDR_WIDTH ($clog2(RAM_SIZE)                   ),
    .DATA_WIDTH (32                                 )
  )(
    // Clock and Reset
    .clk        (clock                              ),
    .rstn_i     (reset_n_sync                       ),
    .en_i       (axi_memory_data_request_output     ),
    .we_i       (axi_memory_data_write_enable_output),
    .be_i       (axi_memory_data_byte_enable_output ),
    .addr_i     (axi_memory_data_address_output     ),
    .wdata_i    (axi_memory_data_write_data_output  ),
    .rdata_o    (axi_memory_data_read_data_input    ),

    .bypass_en_i('0                                 )
  );

/*
-------------------------------------------------
                AXI2APB Bridge
-------------------------------------------------
*/

axi2apb_wrap
#(
    .AXI_ADDR_WIDTH (AXI_ADDR_WIDTH),
    .AXI_DATA_WIDTH (AXI_DATA_WIDTH),
    .AXI_USER_WIDTH ( AXI_USER_WIDTH),
    .AXI_ID_WIDTH   ( AXI_ID_SLAVE_WIDTH),
    .APB_ADDR_WIDTH (APB_ADDR_WIDTH)
) axi2apb_wrap_instance
(
    .clk_i        (clock),
    .rst_ni       (reset_n_sync),
    .test_en_i    (),

    .axi_slave    (),

    .apb_master   ()

);

/*
-------------------------------------------------
               APB Bus Interconnect
-------------------------------------------------
*/

periph_bus_wrap
  #(
    .APB_ADDR_WIDTH (APB_ADDR_WIDTH),
    .APB_DATA_WIDTH (APB_DATA_WIDTH)
    ) periph_bus_wrap_instance
   (
    .clk_i            (clock),
    .rst_ni           (reset_n_sync),

    .apb_slave        (),

    .uart_master      (),
    .gpio_master      (),
    .spi_master       (),
    .timer_master     (),
    .event_unit_master(),
    .i2c_master       (),
    .fll_master       (),
    .soc_ctrl_master  (),
    .debug_master     ()

    );


/*
-------------------------------------------------
                    APB UART
-------------------------------------------------
*/

apb_uart_sv
#(
    .APB_ADDR_WIDTH (APB_ADDR_WIDTH)  //APB slaves are 4KB by default - 12 bits
) apb_uart_sv_instance
(
    .CLK        (clock)
    .RSTN       (reset_n_sync),
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

/*
-------------------------------------------------
                    APB GPIO
-------------------------------------------------
*/

apb_gpio
#(
    .APB_ADDR_WIDTH (APB_ADDR_WIDTH)  //APB slaves are 4KB by default - 12 bits
) apb_gpio_instance
(
    .HCLK         (clock),
    .HRESETn      (reset_n_sync),
    .PADDR        (),
    .PWDATA       (),
    .PWRITE       (),
    .PSEL         (),
    .PENABLE      (),
    .PRDATA       (),
    .PREADY       (),
    .PSLVERR      (),

    .gpio_in      (),
    .gpio_in_sync (),
    .gpio_out     (),
    .gpio_dir     (),
    .gpio_padcfg  (),
    .power_event  (),
    .interrupt    ()
);

endmodule;
