module pattern_detector_moore (
  input wire clk,
  input wire rst_n,
  input wire din,
  output reg dout
);

  parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
  reg [1:0] state, next_state;

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      state <= S0;
    else
      state <= next_state;
  end

  always @(*) begin
    case (state)
      S0: begin
        if (din)
          next_state = S1;
        else
          next_state = S0;
      end
      S1: begin
        if (din)
          next_state = S1;
        else
          next_state = S2;
      end
      S2: begin
        if (din)
          next_state = S3;
        else
          next_state = S0;
      end
      S3: begin
        if (din)
          next_state = S1;
        else
          next_state = S0;
      end
    endcase
  end

  always @(state) begin
    case (state)
      S0: dout = 1'b0;
      S1: dout = 1'b0;
      S2: dout = 1'b0;
      S3: dout = 1'b1;
    endcase
  end

endmodule