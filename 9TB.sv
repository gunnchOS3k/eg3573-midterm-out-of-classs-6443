module adder_subtractor_tb;
  reg clk;
  reg mode;
  reg [31:0] a;
  reg [31:0] b;
  wire [31:0] sum;

  adder_subtractor dut (
    .clk(clk),
    .mode(mode),
    .a(a),
    .b(b),
    .sum(sum)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    mode = 0;
    a = 32'h00000000;
    b = 32'h00000000;
    
    #10;
    mode = 0;
    a = 32'h12345678;
    b = 32'h87654321;
    
    #10;
    mode = 1;
    a = 32'hFFFFFFFF;
    b = 32'h00000001;
    
    #10;
    mode = 0;
    a = 32'hAAAAAAAA;
    b = 32'h55555555;
    
    #10;
    mode = 1;
    a = 32'h7FFFFFFF;
    b = 32'h80000000;
    
    #10;
    $finish;
  end

  initial begin
    $monitor("mode = %b, a = %h, b = %h, sum = %h", mode, a, b, sum);
  end
endmodule