// Copyright 2017 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the “License”); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.


`ifndef CONFIG_SV

package RISCV_MCU_CONFIG;
// `define PULP_FPGA_EMUL
`define CONFIG_SV
`define RISCV
`define SIMULATION
   //`define PULP_FPGA_EMUL
  // always define ASIC when we do a synthesis run
  `ifndef SIMULATION
    `ifndef PULP_FPGA_EMUL
      `ifdef SYNTHESIS
        `define ASIC
      `endif
    `endif
  `endif
  // data and instruction RAM address and word width


  parameter ROM_ADDR_WIDTH      = 12;
  parameter ROM_START_ADDR      = 32'h8000;

  // General defines

  parameter AXI_ADDR_WIDTH       = 32;
  parameter AXI_DATA_WIDTH       = 32;
  parameter DATA_ADDR_WIDTH      = 32;
  parameter AXI_ID_MASTER_WIDTH  = 2;
  parameter AXI_ID_SLAVE_WIDTH   = 4;
  parameter AXI_USER_WIDTH       = 1;
  parameter APB_ADDR_WIDTH       = 32;
  parameter APB_DATA_WIDTH       = 32;
  parameter DATA_RAM_SIZE        = 32768; // in bytes
  parameter INSTR_RAM_SIZE       = 32768; // in bytes
  parameter USE_ZERO_RISCY       = 0;
  parameter RISCY_RV32F          = 1;
  parameter ZERO_RV32M           = 0;
  parameter ZERO_RV32E           = 0;

  // Simulation only stuff
  `ifndef SYNTHESIS
  //`define DATA_STALL_RANDOM
  //`define INSTR_STALL_RANDOM
  `endif

  // File: riscv_alu.sv
  // This was removed from RISCV parameter to allow Quartus II `ifdef macro interpretation. Had to rewrite some portions of the RISCV core design to allow Quartus software to synthesize it.
  //`define FPU            = 0
  //`define SHARED_INT_DIV = 0

  // File: riscv_cs_registers.sv

  //`define PULP_SECURE  = 0

  // //`define APU   = 0

  // File: riscv_int_controller.sv

  //`define PULP_SECURE  = 0

endpackage
`endif
