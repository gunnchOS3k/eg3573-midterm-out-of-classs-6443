module freq_divider (
  input wire clk,
  input wire rst_n,
  output wire clk_div
);

  reg [1:0] counter;

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      counter <= 2'b00;
    else
      counter <= counter + 1;
  end

  assign clk_div = counter[1];

endmodule