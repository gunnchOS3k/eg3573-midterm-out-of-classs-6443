module up_counter (
  input wire clk,
  input wire resetN,
  output reg [3:0] cnt
);

  always @(posedge clk or negedge resetN) begin
    if (!resetN)
      cnt <= 4'b0000;
    else
      cnt <= cnt + 1;
  end

endmodule