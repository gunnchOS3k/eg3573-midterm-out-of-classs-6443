module freq_divider_tb;
  reg clk;
  reg rst_n;
  wire clk_div;

  freq_divider dut (
    .clk(clk),
    .rst_n(rst_n),
    .clk_div(clk_div)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    rst_n = 0;
    #10;
    rst_n = 1;
    #100;
    $finish;
  end
endmodule