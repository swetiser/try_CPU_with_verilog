module decoder3e (n, ena, d);
  input [2:0] n;
  input ena;
  output [7:0] d;
  reg [7:0] d;
  always @ (ena or n) begin
    d = 8'b0
    d[n] = ena;
  end
endmodule
