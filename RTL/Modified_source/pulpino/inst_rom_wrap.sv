// Code based on boot_rom_wrap.sv, originally developed by ETH Zurich and University of Bologna.

import RISCV_MCU_CONFIG::*;

module inst_rom_wrap
  #(
    parameter ADDR_WIDTH = ROM_ADDR_WIDTH,
    parameter DATA_WIDTH = 32
  )(
    // Clock and Reset
    input  logic                  clk,
    input  logic                  rst_n,
    input  logic                  en_i,
    input  logic [ADDR_WIDTH-1:0] addr_i,
    output logic [DATA_WIDTH-1:0] rdata_o
  );

  inst_ROM 
  inst_ROM_i
  (
    .CLK   ( clk                    ),
    .RSTN  ( rst_n                  ),
    .CSN   ( ~en_i                  ),
    .A     ({{6{1'b0}}, addr_i[ADDR_WIDTH-1:2]}),
  
    .Q     ( rdata_o                )
  );
 
endmodule
