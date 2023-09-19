module stopwatch_tb;
  reg clk;
  reg clr;
  wire [3:0] M;
  wire [5:0] SS;
  wire [3:0] D;

  stopwatch dut (
              .clk(clk),
              .clr(clr),
              .M(M),
              .SS(SS),
              .D(D)
            );

  always
  begin
    #5 clk = ~clk;
  end

  initial
  begin
    $dumpfile("stopwatch_waveform.vcd");
    $dumpvars(0,stopwatch_tb);

    clk = 0;
    clr = 1;
    #10 clr = 0;
    #65000;
    clr = 1;
    #10 clr = 0;
    $finish;
  end

endmodule
