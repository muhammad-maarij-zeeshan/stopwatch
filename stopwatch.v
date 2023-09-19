module stopwatch (
    input wire clk,
    input wire clr,
    output reg [3:0] M,
    output reg [5:0] SS,
    output reg [3:0] D
  );

  always @(posedge clk or posedge clr)
  begin: calculate_tenth_second
    if (clr)
    begin 
      M <= 4'b0000;
      SS <= 6'b000000;
      D <= 4'b0000;
    end
    else
    begin
      D <= D + 1;
      if (D == 4'b1001)
      begin
        D <= 4'b0000;
        SS <= SS + 1;
        if (SS == 6'b111011)
        begin
          SS <= 6'b000000;
          M <= M + 1;
          if (M == 4'b1001)
            M <= 4'b0000;
        end
      end
    end
  end

endmodule
