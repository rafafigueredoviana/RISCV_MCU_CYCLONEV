module mcu_top_level_tb();

reg clk, reset_n;

reg fetch_en;


always #20 clk = ~clk;

reg [31:0] GPIO_OUT;

reg [31:0] GPIO_IN;

initial begin
  clk = 0;
  reset_n = 0;
  fetch_en = 0;
  GPIO_IN[31:0] = 32'd0;
  for (int i = 0; i < 10; i++)
    begin
      @(posedge clk );
    end
  reset_n = 1;
  fetch_en = 1;

end


mcu_top_riscv mcu_top_inst (

  // Global signals

  .clock                (clk),
  .reset_n              (reset_n),

  // RISCV core control

  .fetch_enable_input   (fetch_en),

  // UART signals

  .uart_rx_input        (),
  .uart_tx_output       (),

  // GPIO signals

  .gpio_input           (GPIO_IN),
  .gpio_output          (GPIO_OUT),
  .gpio_direction       ()

);

always @ (posedge GPIO_OUT[0]) begin

  $display("GPIO[0] Edge trigger output sucess!");
  GPIO_IN[1] = 1'd1;


end

endmodule
