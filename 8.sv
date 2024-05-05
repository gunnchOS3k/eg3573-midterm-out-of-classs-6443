module sipo_register #(
  parameter N = 8
) (
  input wire clk,
  input wire rst_n,
  input wire sin,
  output wire [N-1:0] pout
);

  reg [N-1:0] shift_reg;

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      shift_reg <= 0;
    else
      shift_reg <= {shift_reg[N-2:0], sin};
  end

  assign pout = shift_reg;

endmodule