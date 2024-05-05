module adder_subtractor (
  input wire clk,
  input wire mode,
  input wire [31:0] a,
  input wire [31:0] b,
  output reg [31:0] sum
);

  always @(posedge clk) begin
    if (mode == 1'b0)
      sum <= a + b;
    else
      sum <= a - b;
  end

endmodule