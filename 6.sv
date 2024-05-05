module right_rotate #(
  parameter N = 8
) (
  input wire [N-1:0] in,
  input wire [$clog2(N)-1:0] rfactor,
  output wire [N-1:0] out
);
  
  assign out = {in, in} >> rfactor;

endmodule