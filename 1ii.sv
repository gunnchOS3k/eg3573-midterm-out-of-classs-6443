module ones_counter #(
  parameter DATA_WIDTH = 8
) (
  input wire [DATA_WIDTH-1:0] din,
  output reg [$clog2(DATA_WIDTH):0] dout
);

  always @(*) begin
    dout = 0;
    for (int i = 0; i < DATA_WIDTH; i++) begin
      dout = dout + din[i];
    end
  end
endmodule