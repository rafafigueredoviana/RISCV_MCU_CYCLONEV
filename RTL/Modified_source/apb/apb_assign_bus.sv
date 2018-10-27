`include "apb_bus.sv"

module APB_ASSIGN_BUS (

  APB_BUS.Slave     apb_slave,

  APB_BUS.Master    apb_master

);

assign apb_slave.paddr    = apb_master.paddr;
assign apb_slave.pwdata   = apb_master.pwdata;
assign apb_slave.pwrite   = apb_master.pwrite;
assign apb_slave.psel     = apb_master.psel;
assign apb_slave.penable  = apb_master.penable;
assign apb_master.prdata   = apb_slave.prdata;
assign apb_master.pready   = apb_slave.pready;
assign apb_master.pslverr  = apb_slave.pslverr;

endmodule
