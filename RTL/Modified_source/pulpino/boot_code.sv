
module boot_code
(
    input  logic        CLK,
    input  logic        RSTN,

    input  logic        CSN,
    input  logic [9:0]  A,
    output logic [31:0] Q
  );

  const logic [0:799] [31:0] mem = {
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h0100006F,
    32'h0100006F,
    32'h0080006F,
    32'h0040006F,
    32'h0000006F,
    32'h00000093,
    32'h81868106,
    32'h82868206,
    32'h83868306,
    32'h84868406,
    32'h85868506,
    32'h86868606,
    32'h87868706,
    32'h88868806,
    32'h89868906,
    32'h8A868A06,
    32'h8B868B06,
    32'h8C868C06,
    32'h8D868D06,
    32'h8E868E06,
    32'h8F868F06,
    32'h00100117,
    32'hF3010113,
    32'h00000D17,
    32'h4B8D0D13,
    32'h00000D97,
    32'h4B0D8D93,
    32'h01BD5763,
    32'h000D2023,
    32'hDDE30D11,
    32'h0513FFAD,
    32'h05930000,
    32'h00EF0000,
    32'h00004460,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h11410000,
    32'h0800C622,
    32'h1141A001,
    32'h0800C622,
    32'h1141A001,
    32'h0800C622,
    32'h7179A001,
    32'h1800D622,
    32'hFCA42E23,
    32'hFCB42C23,
    32'h1A1077B7,
    32'h2623439C,
    32'h2783FEF4,
    32'h4705FDC4,
    32'h00F717B3,
    32'hFFF7C713,
    32'hFEC42783,
    32'h26238FF9,
    32'h2783FEF4,
    32'h2703FDC4,
    32'h1733FD84,
    32'h278300F7,
    32'h8FD9FEC4,
    32'hFEF42623,
    32'h1A1077B7,
    32'hFEC42703,
    32'h0001C398,
    32'h61455432,
    32'h71798082,
    32'h1800D622,
    32'hFCA42E23,
    32'h1A1077B7,
    32'h2623439C,
    32'h2703FEF4,
    32'h2783FEC4,
    32'h57B3FDC4,
    32'h8B8540F7,
    32'hFEF42623,
    32'hFEC42783,
    32'h5432853E,
    32'h80826145,
    32'hD6227179,
    32'h2E231800,
    32'h2C23FCA4,
    32'h17B7FCB4,
    32'h439C1A10,
    32'hFEF42623,
    32'hFD842783,
    32'h2783EF91,
    32'h4705FDC4,
    32'h00F717B3,
    32'hFFF7C713,
    32'hFEC42783,
    32'h26238FF9,
    32'hA819FEF4,
    32'hFDC42783,
    32'h17334705,
    32'h278300F7,
    32'h8FD9FEC4,
    32'hFEF42623,
    32'h1A1017B7,
    32'hFEC42703,
    32'h0001C398,
    32'h61455432,
    32'h71798082,
    32'h1800D622,
    32'hFCA42E23,
    32'h1A1017B7,
    32'h2623439C,
    32'h2703FEF4,
    32'h2783FEC4,
    32'h0786FDC4,
    32'h40F757B3,
    32'h26238B85,
    32'h2783FEF4,
    32'h853EFEC4,
    32'h61455432,
    32'h71798082,
    32'h1800D622,
    32'hFCA42E23,
    32'hFCB42C23,
    32'h1A1017B7,
    32'h439C07A1,
    32'hFEF42623,
    32'hFD842783,
    32'h2783EF91,
    32'h4705FDC4,
    32'h00F717B3,
    32'hFFF7C713,
    32'hFEC42783,
    32'h26238FF9,
    32'hA819FEF4,
    32'hFDC42783,
    32'h17334705,
    32'h278300F7,
    32'h8FD9FEC4,
    32'hFEF42623,
    32'h1A1017B7,
    32'h270307A1,
    32'hC398FEC4,
    32'h54320001,
    32'h80826145,
    32'hD6227179,
    32'h2E231800,
    32'h17B7FCA4,
    32'h07911A10,
    32'h2623439C,
    32'h2703FEF4,
    32'h2783FEC4,
    32'h57B3FDC4,
    32'h8B8540F7,
    32'hFEF42623,
    32'hFEC42783,
    32'h5432853E,
    32'h80826145,
    32'hD6227179,
    32'h2E231800,
    32'h2C23FCA4,
    32'h17B7FCB4,
    32'h07B11A10,
    32'h2623439C,
    32'h2783FEF4,
    32'hEF91FD84,
    32'hFDC42783,
    32'h17B34705,
    32'hC79300F7,
    32'h2703FFF7,
    32'h8FF9FEC4,
    32'hFEF42623,
    32'h2783A819,
    32'h4705FDC4,
    32'h00F717B3,
    32'hFEC42703,
    32'h26238FD9,
    32'h17B7FEF4,
    32'h07B11A10,
    32'hFEC42703,
    32'h0001C398,
    32'h61455432,
    32'h71798082,
    32'h1800D622,
    32'hFCA42E23,
    32'hFCB42C23,
    32'h1A1017B7,
    32'h439C07C1,
    32'hFEF42623,
    32'h1A1017B7,
    32'h439C07D1,
    32'hFEF42423,
    32'hFD842783,
    32'hEF918B85,
    32'hFDC42783,
    32'h17B34705,
    32'hC79300F7,
    32'h2703FFF7,
    32'h8FF9FEC4,
    32'hFEF42623,
    32'h2783A819,
    32'h4705FDC4,
    32'h00F717B3,
    32'hFEC42703,
    32'h26238FD9,
    32'h2783FEF4,
    32'h8B89FD84,
    32'h2783EF91,
    32'h4705FDC4,
    32'h00F717B3,
    32'hFFF7C793,
    32'hFE842703,
    32'h24238FF9,
    32'hA819FEF4,
    32'hFDC42783,
    32'h17B34705,
    32'h270300F7,
    32'h8FD9FE84,
    32'hFEF42423,
    32'h1A1017B7,
    32'h270307C1,
    32'hC398FEC4,
    32'h1A1017B7,
    32'h270307D1,
    32'hC398FE84,
    32'h54320001,
    32'h80826145,
    32'hC6221141,
    32'h17B70800,
    32'h07E11A10,
    32'h853E439C,
    32'h01414432,
    32'h11418082,
    32'h0800C622,
    32'h1141A001,
    32'h0800C622,
    32'h1141A001,
    32'h0800C622,
    32'h1141A001,
    32'h0800C622,
    32'h1141A001,
    32'h0800C622,
    32'h1141A001,
    32'h0800C622,
    32'h1141A001,
    32'h0800C622,
    32'h1141A001,
    32'h0800C622,
    32'h1141A001,
    32'h0800C622,
    32'h1141A001,
    32'h0800C622,
    32'h1A1037B7,
    32'h0007A023,
    32'h44320001,
    32'h80820141,
    32'hC6221141,
    32'h37B70800,
    32'h07911A10,
    32'hC3984705,
    32'h44320001,
    32'h80820141,
    32'hC6221141,
    32'h37B70800,
    32'h07911A10,
    32'h0007A023,
    32'h44320001,
    32'h80820141,
    32'hC6221141,
    32'h37B70800,
    32'h439C1A10,
    32'h4432853E,
    32'h80820141,
    32'hCE061101,
    32'h1000CC22,
    32'hFEA42623,
    32'hFEC42503,
    32'hA0012011,
    32'hCE061101,
    32'h1000CC22,
    32'hFEA42623,
    32'hFEC42783,
    32'h77B7C799,
    32'h07D11A10,
    32'hC3984705,
    32'h77B7A031,
    32'h07D11A10,
    32'h0007A023,
    32'h1A1077B7,
    32'h43980791,
    32'h1A1077B7,
    32'h67130791,
    32'hC3980047,
    32'h45214585,
    32'h4585313D,
    32'h394D4521,
    32'h45214585,
    32'h00013B3D,
    32'h446240F2,
    32'h80826105,
    32'hD6227179,
    32'h2E231800,
    32'h2623FCA4,
    32'hA039FE04,
    32'h27830001,
    32'h0785FEC4,
    32'hFEF42623,
    32'hFDC42783,
    32'hFEC42703,
    32'hFEF746E3,
    32'h54320001,
    32'h80826145,
    32'hC6061141,
    32'h0800C422,
    32'h1A1077B7,
    32'hA02307A1,
    32'h45850007,
    32'h31F54501,
    32'h08000513,
    32'h47812039,
    32'h40B2853E,
    32'h01414422,
    32'h11018082,
    32'h1000CE22,
    32'hFEA42623,
    32'hFEC42783,
    32'h00078067,
    32'h00010001,
    32'h00010001,
    32'h61054472,
    32'h00008082,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000};

  logic [9:0] A_Q;

  always_ff @(posedge CLK, negedge RSTN)
  begin
    if (~RSTN)
      A_Q <= '0;
    else
      if (~CSN)
        A_Q <= A;
  end

  assign Q = mem[A_Q];

endmodule