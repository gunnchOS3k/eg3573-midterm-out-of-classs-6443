module sipo_register_tb;
  parameter N = 8;

  reg clk;
  reg rst_n;
  reg sin;
  wire [N-1:0] pout;

  sipo_register #(N) dut (
    .clk(clk),
    .rst_n(rst_n),
    .sin(sin),
    .pout(pout)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    rst_n = 0;
    sin = 0;
    #10;
    rst_n = 1;
    
    // Load data: 10110101
    sin = 1; #10;
    sin = 0; #10;
    sin = 1; #10;
    sin = 1; #10;
    sin = 0; #10;
    sin = 1; #10;
    sin = 0; #10;
    sin = 1; #10;
    
    // Load data: 01010011
    sin = 0; #10;
    sin = 1; #10;
    sin = 0; #10;
    sin = 1; #10;
    sin = 0; #10;
    sin = 0; #10;
    sin = 1; #10;
    sin = 1; #10;
    
    #10;
    $finish;
  end
endmodule