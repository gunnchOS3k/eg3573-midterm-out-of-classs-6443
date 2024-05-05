module up_counter_tb;
  reg clk;
  reg resetN;
  wire [3:0] cnt;

  up_counter dut (
    .clk(clk),
    .resetN(resetN),
    .cnt(cnt)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    resetN = 0;
    #10;
    resetN = 1;
    #200;
    resetN = 0;
    #20;
    resetN = 1;
    #100;
    $finish;
  end

  initial begin
    $monitor("resetN = %b, cnt = %b", resetN, cnt);
  end
endmodule