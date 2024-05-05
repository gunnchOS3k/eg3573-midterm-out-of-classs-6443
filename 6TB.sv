module right_rotate_tb;
  parameter N = 8;
  
  reg [N-1:0] in;
  reg [$clog2(N)-1:0] rfactor;
  wire [N-1:0] out;

  right_rotate #(N) dut (
    .in(in),
    .rfactor(rfactor),
    .out(out)
  );

  initial begin
    $monitor("in = %b, rfactor = %d, out = %b", in, rfactor, out);
    
    in = 8'b11001010; rfactor = 0;
    #10;
    in = 8'b11001010; rfactor = 1;
    #10;
    in = 8'b11001010; rfactor = 2;
    #10;
    in = 8'b11001010; rfactor = 3;
    #10;
    in = 8'b11001010; rfactor = 4;
    #10;
    in = 8'b11001010; rfactor = 5;
    #10;
    in = 8'b11001010; rfactor = 6;
    #10;
    in = 8'b11001010; rfactor = 7;
    #10;
    
    $finish;
  end
endmodule