module sequence_detector_mealy_tb;
  reg clk;
  reg rst_n;
  reg din;
  wire dout;

  sequence_detector_mealy dut (
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
    
    // Test pattern: 101010
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 0;
    
    // Test pattern: 10110
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 1;
    #10 din = 0;
    
    #10;
    $finish;
  end

endmodule