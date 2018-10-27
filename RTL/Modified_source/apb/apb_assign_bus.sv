`include "apb_bus.sv"

module APB_ASSIGN_BUS (

  APB_BUS.Slave     apb_slave,

  APB_BUS.Master    apb_master

);

assign apb_master.paddr    = apb_slave.paddr;
assign apb_master.pwdata   = apb_slave.pwdata;
assign apb_master.pwrite   = apb_slave.pwrite;
assign apb_master.psel     = apb_slave.psel;
assign apb_master.penable  = apb_slave.penable;
assign apb_slave.prdata   = apb_master.prdata;
assign apb_slave.pready   = apb_master.pready;
assign apb_slave.pslverr  = apb_master.pslverr;

endmodule
