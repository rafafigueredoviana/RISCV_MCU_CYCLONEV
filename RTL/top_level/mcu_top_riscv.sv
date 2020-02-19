

`include "axi_bus.sv"
`include "apb_bus.sv"

import RISCV_MCU_CONFIG::*;

module mcu_top_riscv (

  // Global signals

  input     clock,
  input     reset_n,

  // RISCV core control

  input     fetch_enable_input,

  // UART signals

  input     uart_rx_input,
  output    uart_tx_output,

  // GPIO signals

  input [31:0] gpio_input,
  output [31:0] gpio_output,
  output [31:0] gpio_direction

);

localparam INSTR_ADDR_WIDTH = $clog2(INSTR_RAM_SIZE)+1; // to make space for the boot rom
localparam DATA_ADDR_WIDTH  = $clog2(DATA_RAM_SIZE);    // size of data address bus
localparam AXI_B_WIDTH      = $clog2(AXI_DATA_WIDTH/8); // AXI "Byte" width

/*
-------------------------------------------------
                  Signals Declaration
-------------------------------------------------
*/

// Synchronous reset

reg reset_n_sync;

// RISCV Core Signals:

wire [31:0]   boot_address_wire;
// Instruction Memory Signals

wire          core_inst_request_output;
wire          core_inst_granted_input;
reg           core_inst_read_valid_input;
wire [31:0]   core_inst_address_output;
wire [31:0]   core_inst_read_data_input;

// Instruction Memory Signals

wire          inst_mem_enable_output;
wire [INSTR_ADDR_WIDTH-1:0]   inst_mem_address_output;
wire [31:0]   inst_mem_read_data_input;
wire [31:0]   inst_mem_write_data_output;
wire          inst_mem_write_enable_output;
wire [ 3:0]   inst_mem_byte_enable_output;

// AXI2MEM INST Signals

wire          axi_memory_inst_request_input;
wire          axi_memory_inst_granted_output;
wire          axi_memory_inst_valid_output;
wire          axi_memory_inst_write_enable_output;
wire [ 3:0]   axi_memory_inst_byte_enable_output;
wire [INSTR_ADDR_WIDTH-1:0]   axi_memory_inst_address_output;
wire [31:0]   axi_memory_inst_write_data_output;
wire [31:0]   axi_memory_inst_read_data_input;

// AXI2MEM DATA Signals

wire          axi_memory_data_request_output;
wire          axi_memory_data_write_enable_output;
wire [ 3:0]   axi_memory_data_byte_enable_output;
wire [DATA_ADDR_WIDTH-1:0]   axi_memory_data_address_output;
wire [31:0]   axi_memory_data_write_data_output;
wire [31:0]   axi_memory_data_read_data_input;

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
  .AXI_ADDR_WIDTH ( AXI_ADDR_WIDTH     ),
  .AXI_DATA_WIDTH ( AXI_DATA_WIDTH     ),
  .AXI_ID_WIDTH   ( AXI_ID_SLAVE_WIDTH ),
  .AXI_USER_WIDTH ( AXI_USER_WIDTH     )
)
slaves[2:0]();

AXI_BUS
#(
  .AXI_ADDR_WIDTH ( AXI_ADDR_WIDTH     ),
  .AXI_DATA_WIDTH ( AXI_DATA_WIDTH     ),
  .AXI_ID_WIDTH   ( AXI_ID_MASTER_WIDTH ),
  .AXI_USER_WIDTH ( AXI_USER_WIDTH     )
)
masters[1:0]();

// APB Bus creation

APB_BUS apb_bus_master();

APB_BUS apb_bus_slave_uart();

APB_BUS apb_bus_slave_gpio();

APB_BUS apb_bus_slave_event_unit();

APB_BUS apb_bus_slave_soc_control();

// Interrupts signals

wire apb_uart_event;

wire apb_gpio_event;

wire [31:0] interrupt_request_output;

// Misc signals

wire fetch_enable_output;

/*
-------------------------------------------------
                  Reset Register
-------------------------------------------------
*/

always_ff @(posedge clock)
begin
  reset_n_sync <= reset_n;
end

/*
-------------------------------------------------
              RISCV Core instance
-------------------------------------------------
*/

logic [4:0] irq_id;
always_comb begin
  irq_id = '0;
  for (int i = 0; i < 32; i+=1) begin
    if(interrupt_request_output[i]) begin
      irq_id = i[4:0];
    end
  end
end

riscv_core
#(
  .N_EXT_PERF_COUNTERS   (     0       ),
  .FPU                   (     0       ),
  .SHARED_FP             (     0       ),
  .SHARED_FP_DIVSQRT     (     2       )
)
  riscv_core_instance (
  // Clock and Reset
  .clk_i                 (clock       ),
  .rst_ni                (reset_n_sync),

  .clock_en_i            ('1),    // enable clock, otherwise it is gated
  .test_en_i             ('0),     // enable all clock gates for testing

  // Core ID, Cluster ID and boot address are considered more or less static
  .boot_addr_i           (boot_address_wire),
  .core_id_i             (4'h0          ),
  .cluster_id_i          (6'h0          ),

  // Instruction memory interface
  .instr_req_o           (core_inst_request_output    ),
  .instr_gnt_i           (core_inst_granted_input     ),
  .instr_rvalid_i        (core_inst_read_valid_input  ),
  .instr_addr_o          (core_inst_address_output    ),
  .instr_rdata_i         (core_inst_read_data_input   ),

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
  .irq_i    (|interrupt_request_output  ),                 // level sensitive IR lines
  .irq_id_i (irq_id                     ),
  .irq_ack_o(                           ),
  .irq_id_o (                           ),
  .irq_sec_i('0                         ),

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
  .fetch_enable_i       (fetch_enable_output),
  .core_busy_o          (                   ),

  .ext_perf_counters_i  ()
);

/*
-------------------------------------------------
       AXI2Memory Bridge (INST MEMORY)
-------------------------------------------------
*/

axi_mem_if_SP_wrap
#(
  .AXI_ADDR_WIDTH  ( AXI_ADDR_WIDTH           ),
  .AXI_DATA_WIDTH  ( AXI_DATA_WIDTH           ),
  .AXI_ID_WIDTH    ( AXI_ID_SLAVE_WIDTH       ),
  .AXI_USER_WIDTH  ( AXI_USER_WIDTH           ),
  .MEM_ADDR_WIDTH  ( INSTR_ADDR_WIDTH         )
)
inst_mem_axi_interface (
  .clk         ( clock                                 ),
  .rst_n       ( reset_n_sync                          ),
  .test_en_i   ( '0                                    ),

  .mem_req_o   ( axi_memory_inst_request_input         ),
  .mem_we_o    ( axi_memory_inst_write_enable_output   ),
  .mem_be_o    ( axi_memory_inst_byte_enable_output    ),
  .mem_addr_o  ( axi_memory_inst_address_output        ),
  .mem_wdata_o ( axi_memory_inst_write_data_output     ),
  .mem_rdata_i ( axi_memory_inst_read_data_input       ),

  .slave       ( slaves[0]                             )  // RISCV_CORE -> CORE2AXI -> AXIBUS -> AXIINSTMEM
);

/*
-------------------------------------------------
       Mux INST RAM
-------------------------------------------------
*/

 ram_mux
 #(
  .ADDR_WIDTH ( INSTR_ADDR_WIDTH ),
  .IN0_WIDTH  ( AXI_DATA_WIDTH  ),
  .IN1_WIDTH  ( 32              ),
  .OUT_WIDTH  ( AXI_DATA_WIDTH  )
 )
 inst_ram_mux_i
 (
  .clk            ( clock                                                                                   ),
  .rst_n          ( reset_n_sync                                                                            ),

  .port0_req_i    ( axi_memory_inst_request_input                                                           ),
  .port0_gnt_o    (                                                                                         ),
  .port0_rvalid_o (                                                                                         ),
  .port0_addr_i   ( {axi_memory_inst_address_output[INSTR_ADDR_WIDTH-AXI_B_WIDTH-1:0], {AXI_B_WIDTH{1'b0}}} ),
  .port0_we_i     ( axi_memory_inst_write_enable_output                                                     ),
  .port0_be_i     ( axi_memory_inst_byte_enable_output                                                      ),
  .port0_rdata_o  ( axi_memory_inst_read_data_input                                                         ),
  .port0_wdata_i  ( axi_memory_inst_write_data_output                                                       ),

  .port1_req_i    ( core_inst_request_output                                                                ),
  .port1_gnt_o    ( core_inst_granted_input                                                                 ),
  .port1_rvalid_o ( core_inst_read_valid_input                                                              ),
  .port1_addr_i   ( core_inst_address_output  [INSTR_ADDR_WIDTH-1:0]                                        ),
  .port1_we_i     ( '0                                                                                      ),
  .port1_be_i     ( '1                                                                                      ),
  .port1_rdata_o  ( core_inst_read_data_input                                                               ),
  .port1_wdata_i  ( '0                                                                                      ),

  .ram_en_o       ( inst_mem_enable_output                                                                  ),
  .ram_addr_o     ( inst_mem_address_output                                                                 ),
  .ram_we_o       ( inst_mem_write_enable_output                                                            ),
  .ram_be_o       ( inst_mem_byte_enable_output                                                             ),
  .ram_rdata_i    ( inst_mem_read_data_input                                                                ),
  .ram_wdata_o    ( inst_mem_write_data_output                                                              )
 );


/*
-------------------------------------------------
              Instruction RAM
-------------------------------------------------
*/

instr_ram_wrap
  #(
    .RAM_SIZE       (INSTR_RAM_SIZE               ), // in bytes
    .DATA_WIDTH     (AXI_DATA_WIDTH               )
  ) instruction_ram_wrap_instance (
    // Clock and Reset
    .clk            (clock                        ),
    .rst_n          (reset_n_sync                 ),

    .en_i           (inst_mem_enable_output       ),
    .addr_i         (inst_mem_address_output      ),
    .wdata_i        (inst_mem_write_data_output   ),
    .rdata_o        (inst_mem_read_data_input     ),
    .we_i           (inst_mem_write_enable_output ),
    .be_i           (inst_mem_byte_enable_output  ),
    .bypass_en_i    ('0                           )
  );

// always_ff @ (posedge clock, negedge reset_n_sync)
// begin
//   if (!reset_n_sync)
//     begin
//       instruction_read_valid_input <= 1'b0;
//     end
//   else
//     begin
//       instruction_read_valid_input <= instruction_request_output;
//     end

// end

/*
-------------------------------------------------
                 Core 2 Axi
-------------------------------------------------
*/

core2axi_wrap
#(
  .AXI_ADDR_WIDTH   ( AXI_ADDR_WIDTH       ),
  .AXI_ID_WIDTH     ( AXI_ID_MASTER_WIDTH  ),
  .AXI_DATA_WIDTH   ( AXI_DATA_WIDTH       ),
  .AXI_USER_WIDTH   ( AXI_USER_WIDTH       ),
  .REGISTERED_GRANT ( "FALSE"               )
)
core2axi_instance (
  .clk_i         ( clock                      ),
  .rst_ni        ( reset_n_sync             ),

  .data_req_i    ( data_request_output      ),
  .data_gnt_o    ( data_granted_input       ),
  .data_rvalid_o ( data_read_valid_input    ),
  .data_we_i     ( data_write_enable_output ),
  .data_be_i     ( data_byte_enable_output  ),
  .data_addr_i   ( data_address_output      ),
  .data_wdata_i  ( data_write_data_output   ),
  .data_rdata_o  ( data_read_data_input     ),

  .master        ( masters[0]               ) // RISCV_CORE -> CORE2AXI
);

/*
-------------------------------------------------
              AXI Bus Interconnect
-------------------------------------------------
*/

axi_node_intf_wrap
#(
  .NB_MASTER      ( 3                    ),	// AXI Masters: RISCV core
  .NB_SLAVE       ( 2                    ),	// AXI Slaves:  Instruction Memory, Data Memory, AXI2APB bridge
  .AXI_ADDR_WIDTH ( AXI_ADDR_WIDTH      ),
  .AXI_DATA_WIDTH ( AXI_DATA_WIDTH      ),
  .AXI_ID_WIDTH   ( AXI_ID_MASTER_WIDTH ),
  .AXI_USER_WIDTH ( AXI_USER_WIDTH      )
)
  axi_bus_interconnect (

  .clk          (clock),
  .rst_n        (reset_n_sync),
  .test_en_i    ('0),

  .slave        (masters), // RISCV_CORE -> CORE2AXI -> AXIBUS

  .master       (slaves),     // RISCV_CORE -> CORE2AXI -> AXIBUS -> AXIPERIPHERALS (INST RAM, DATA RAM, APB Bridge)

  // Memory map      APB Bridge       DATA MEM      INST MEM 
  .start_addr_i ( { 32'h1A10_0000, 32'h0010_0000, 32'h0000_0000} ),
  .end_addr_i   ( { 32'h1A1F_FFFF, 32'h001F_FFFF, 32'h000F_FFFF} )

);

/*
-------------------------------------------------
       AXI2Memory Bridge (DATA MEMORY)
-------------------------------------------------
*/

axi_mem_if_SP_wrap
#(
  .AXI_ADDR_WIDTH  ( AXI_ADDR_WIDTH           ),
  .AXI_DATA_WIDTH  ( AXI_DATA_WIDTH           ),
  .AXI_ID_WIDTH    ( AXI_ID_SLAVE_WIDTH       ),
  .AXI_USER_WIDTH  ( AXI_USER_WIDTH           ),
  .MEM_ADDR_WIDTH  ( $clog2(DATA_RAM_SIZE)    )
)
data_mem_axi_interface (
  .clk         ( clock                                 ),
  .rst_n       ( reset_n_sync                        ),
  .test_en_i   ( '0                                  ),

  .mem_req_o   ( axi_memory_data_request_output      ),
  .mem_we_o    ( axi_memory_data_write_enable_output ),
  .mem_be_o    ( axi_memory_data_byte_enable_output  ),
  .mem_addr_o  ( axi_memory_data_address_output      ),
  .mem_wdata_o ( axi_memory_data_write_data_output   ),
  .mem_rdata_i ( axi_memory_data_read_data_input     ),

  .slave       ( slaves[1]                           )  // RISCV_CORE -> CORE2AXI -> AXIBUS -> AXIMEM
);

/*
-------------------------------------------------
             General Data RAM
-------------------------------------------------
*/

sp_ram_wrap
  #(
    .RAM_SIZE   (DATA_RAM_SIZE                      ), // in bytes
    .ADDR_WIDTH (DATA_ADDR_WIDTH                    ), // in bits
    .DATA_WIDTH (32                                 )
  )
  single_port_ram_wrap_instance  (
    // Clock and Reset
    .clk        (clock                              ),
    .rstn_i     (reset_n_sync                       ),
    .en_i       (axi_memory_data_request_output     ),
    .we_i       (axi_memory_data_write_enable_output),
    .be_i       (axi_memory_data_byte_enable_output ),
    .addr_i     ({axi_memory_data_address_output[DATA_ADDR_WIDTH-AXI_B_WIDTH-1:0], {AXI_B_WIDTH{1'b0}}} ), // As each word is 4 bytes, the 2 LSB must be grounded. (A RAM fechtes a single byte per address, thus this reconfiguration is necessary to allow direct 32 bit adressing).
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
    .AXI_ADDR_WIDTH (AXI_ADDR_WIDTH     ),
    .AXI_DATA_WIDTH (AXI_DATA_WIDTH     ),
    .AXI_USER_WIDTH ( AXI_USER_WIDTH    ),
    .AXI_ID_WIDTH   ( AXI_ID_SLAVE_WIDTH),
    .APB_ADDR_WIDTH (APB_ADDR_WIDTH     )
)
  axi2apb_bridge_instance (
    .clk_i        (clock                ),
    .rst_ni       (reset_n_sync         ),
    .test_en_i    (                     ),

    .axi_slave    (slaves[2]            ), // RISCV_CORE -> CORE2AXI -> AXIBUS -> AXI2APB

    .apb_master   (apb_bus_master       ) // RISCV_CORE -> CORE2AXI -> AXIBUS -> AXI2APB -> APBBUS

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
    )
    periph_bus_interconnect_instance (
    .clk_i            (clock),
    .rst_ni           (reset_n_sync),

    .apb_slave        (apb_bus_master), // RISCV_CORE -> CORE2AXI -> AXIBUS -> AXI2APB -> APBBUS -> APBBUSPERIPHERALS

    .uart_master      (apb_bus_slave_uart), // RISCV_CORE -> CORE2AXI -> AXIBUS -> AXI2APB -> APBBUS -> UART
    .gpio_master      (apb_bus_slave_gpio), // RISCV_CORE -> CORE2AXI -> AXIBUS -> AXI2APB -> APBBUS -> GPIO
    //.spi_master       (),
    //.timer_master     (),
    .event_unit_master(apb_bus_slave_event_unit), // RISCV_CORE -> CORE2AXI -> AXIBUS -> AXI2APB -> APBBUS -> EVENT_UNIT
    //.i2c_master       (),
    //.fll_master       (),
    .soc_ctrl_master  (apb_bus_slave_soc_control) // RISCV_CORE -> CORE2AXI -> AXIBUS -> AXI2APB -> APBBUS -> SOC CTRL
    //.debug_master     ()

    );


/*
-------------------------------------------------
                    APB UART
-------------------------------------------------
*/

apb_uart_sv
#(
    .APB_ADDR_WIDTH (APB_ADDR_WIDTH)  //APB slaves are 4KB by default - 12 bits
)
  apb_uart_sv_instance (
    .CLK        (clock                        ),
    .RSTN       (reset_n_sync                 ),
    /* verilator lint_off UNUSED */
    .PADDR      (apb_bus_slave_uart.paddr[4:2]),
    /* lint_on */
    .PWDATA     (apb_bus_slave_uart.pwdata    ),
    .PWRITE     (apb_bus_slave_uart.pwrite    ),
    .PSEL       (apb_bus_slave_uart.psel      ),
    .PENABLE    (apb_bus_slave_uart.penable   ),
    .PRDATA     (apb_bus_slave_uart.prdata    ),
    .PREADY     (apb_bus_slave_uart.pready    ),
    .PSLVERR    (apb_bus_slave_uart.pslverr   ),

    .rx_i       ( uart_rx_input                             ),     // Receiver input
    .tx_o       ( uart_tx_output                            ),     // Transmitter output

    .event_o    (apb_uart_event               )      // interrupt/event output
);

/*
-------------------------------------------------
                    APB GPIO
-------------------------------------------------
*/

apb_gpio
#(
    .APB_ADDR_WIDTH (APB_ADDR_WIDTH)  //APB slaves are 4KB by default - 12 bits
)
  apb_gpio_instance (
    .HCLK         (clock                          ),
    .HRESETn      (reset_n_sync                   ),
    .PADDR        (apb_bus_slave_gpio.paddr[11:0] ),
    .PWDATA       (apb_bus_slave_gpio.pwdata      ),
    .PWRITE       (apb_bus_slave_gpio.pwrite      ),
    .PSEL         (apb_bus_slave_gpio.psel        ),
    .PENABLE      (apb_bus_slave_gpio.penable     ),
    .PRDATA       (apb_bus_slave_gpio.prdata      ),
    .PREADY       (apb_bus_slave_gpio.pready      ),
    .PSLVERR      (apb_bus_slave_gpio.pslverr     ),

    .gpio_in      ( gpio_input                    ),
    .gpio_out     ( gpio_output                   ),
    .gpio_dir     ( gpio_direction                ),

    .interrupt    (apb_gpio_event                 )
);


/*
-------------------------------------------------
                    APB Event Unit
-------------------------------------------------
*/
apb_event_unit
apb_event_unit_instance (
  .clk_i            ( clock        ),
  .HCLK             ( clock        ),
  .HRESETn          ( reset_n_sync ),

  .PADDR            ( apb_bus_slave_event_unit.paddr[11:0]),
  .PWDATA           ( apb_bus_slave_event_unit.pwdata     ),
  .PWRITE           ( apb_bus_slave_event_unit.pwrite     ),
  .PSEL             ( apb_bus_slave_event_unit.psel       ),
  .PENABLE          ( apb_bus_slave_event_unit.penable    ),
  .PRDATA           ( apb_bus_slave_event_unit.prdata     ),
  .PREADY           ( apb_bus_slave_event_unit.pready     ),
  .PSLVERR          ( apb_bus_slave_event_unit.pslverr    ),

  .irq_i            ( {6'b0, apb_gpio_event, apb_uart_event, 24'b0} ),
  .event_i          ( {6'b0, apb_gpio_event, apb_uart_event, 24'b0} ),
  .irq_o            ( interrupt_request_output                      ),

  .fetch_enable_i   ( fetch_enable_input      ),
  .fetch_enable_o   ( fetch_enable_output     ),
  .clk_gate_core_o  ( clk_gate_core_o         ),
  .core_busy_i      ( core_busy_i             )
);

/*
-------------------------------------------------
                    APB SoC Control
-------------------------------------------------
*/

 apb_pulpino
 #(
   .BOOT_ADDR ( ROM_START_ADDR )
 )
 apb_pulpino_i
 (
  .HCLK        ( clock       ),
  .HRESETn     ( reset_n_sync        ),
 
  .PADDR       ( apb_bus_slave_soc_control.paddr[11:0]),
  .PWDATA      ( apb_bus_slave_soc_control.pwdata     ),
  .PWRITE      ( apb_bus_slave_soc_control.pwrite     ),
  .PSEL        ( apb_bus_slave_soc_control.psel       ),
  .PENABLE     ( apb_bus_slave_soc_control.penable    ),
  .PRDATA      ( apb_bus_slave_soc_control.prdata     ),
  .PREADY      ( apb_bus_slave_soc_control.pready     ),
  .PSLVERR     ( apb_bus_slave_soc_control.pslverr    ),
 
  .pad_cfg_o   (                                      ),
  .clk_gate_o  (                                      ),
  .pad_mux_o   (                                      ),
  .boot_addr_o ( boot_address_wire                    )
 );


endmodule
