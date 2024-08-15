module test_ring_counter;

  reg clk;
  reg rst;
  wire [3:0] out;

  // Clock generation (you can replace this with your actual clock source)
  always begin
    #5 clk = ~clk; // Toggle the clock every 5 time units
  end

  initial begin
    clk = 0;
    rst = 0;
    $dumpfile("ring_counter.vcd");
    $dumpvars(0, test_ring_counter);
    $display("\t\tTime  clk rst out");
    $monitor("%d    %b   %b   %b", $time, clk, rst, out);

    // Simulate for 20 time units
    #20 rst = 1; // Assert reset
    #20 rst = 0; // Deassert reset
    #100 $finish; // Finish simulation
  end

  ring_counter uut (
    .clk(clk),
    .rst(rst),
    .out(out)
  );

endmodule
