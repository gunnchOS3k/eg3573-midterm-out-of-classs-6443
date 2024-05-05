module ones_counter_tb;
  parameter DATA_WIDTH = 8;
  
  reg [DATA_WIDTH-1:0] din;
  wire [$clog2(DATA_WIDTH):0] dout;
  
  ones_counter #(DATA_WIDTH) dut (
    .din(din),
    .dout(dout)
  );
  
  initial begin
    $monitor("din=%b, dout=%d", din, dout);
    
    din = 8'b00000000;
    #5;
    din = 8'b00000001;
    #5;
    din = 8'b00000011;
    #5;
    din = 8'b00000111;
    #5;
    din = 8'b00001111;
    #5;
    din = 8'b00011111;
    #5;
    din = 8'b00111111;
    #5;
    din = 8'b01111111;
    #5;
    din = 8'b11111111;
    #5;
    
    $finish;
  end
endmodule