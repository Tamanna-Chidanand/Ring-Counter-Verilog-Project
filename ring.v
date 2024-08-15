module ring_counter (
  input wire clk,
  input wire rst,
  output wire [3:0] out
);

reg [3:0] counter;

always @(posedge clk or posedge rst) begin
  if (rst) begin
    counter <= 4'b0001; // Initialize counter to 0001 on reset
  end else begin
    counter <= counter << 1; // Shift the counter left
    if (counter == 4'b1000) begin
      counter <= 4'b0001; // Reset to 0001 when it reaches 1000
    end
  end
end

assign out = counter;

endmodule
