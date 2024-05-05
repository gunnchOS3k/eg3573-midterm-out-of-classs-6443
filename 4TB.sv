module pattern_detector_moore_tb;
  reg clk;
  reg rst_n;
  reg din;
  wire dout;

  pattern_detector_moore dut (
    .clk(clk),
    .rst_n(rst_n),
    .din(din),
    .dout(dout)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    rst_n = 0;
    din = 0;
    #10;
    rst_n = 1;
    
    // Test pattern: 10101
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    
    // Test pattern: 01011
    #10 din = 0;
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 1;
    
    #10;
    $finish;
  end

endmodule