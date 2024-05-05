module latch_example (
  input wire clk,
  input wire [1:0] sel,
  input wire [7:0] data,
  output reg [7:0] out
);

  always @(posedge clk) begin
    if (sel == 2'b00)
      out <= data;
    else if (sel == 2'b01)
      out <= out + 1;
  end
endmodule