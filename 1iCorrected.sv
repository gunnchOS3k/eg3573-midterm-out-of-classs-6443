module latch_example_fixed (
  input wire clk,
  input wire [1:0] sel,
  input wire [7:0] data,
  output reg [7:0] out
);

  always @(posedge clk) begin
    case (sel)
      2'b00: out <= data;
      2'b01: out <= out + 1;
      default: out <= out; // Assign the current value to avoid latch inference
    endcase
  end
endmodule