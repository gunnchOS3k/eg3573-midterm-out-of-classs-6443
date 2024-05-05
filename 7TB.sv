
module ripple_carry_adder_16bit_tb;
  reg [15:0] a;
  reg [15:0] b;
  wire [15:0] sum;
  wire cout;

  ripple_carry_adder_16bit dut (
    .a(a),
    .b(b),
    .sum(sum),
    .cout(cout)
  );

  initial begin
    $monitor("a = %h, b = %h, sum = %h, cout = %b", a, b, sum, cout);
    
    a = 16'h0000; b = 16'h0000;
    #10;
    a = 16'h1234; b = 16'h5678;
    #10;
    a = 16'hABCD; b = 16'hEF01;
    #10;
    a = 16'hFFFF; b = 16'h0001;
    #10;
    a = 16'h7FFF; b = 16'h8000;
    #10;
    
    $finish;
  end
endmodule