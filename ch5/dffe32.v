// the 32-bit register with enable control
module dffe32 (d,clk,clrn,e,q);   // a 32-bit register
  input       [31:0]  d;          // input d 
  input               e;          // enable
  input               clk, clrn;  // clock, clear(reset)
  output  reg [31:0]  q;          // output q
  always @(negedge clrn or posedge clk)
    if  (!clrn) q <= 0;           // if q = 0, then reset
    else if (e) q <= d;           // if enabled, then save d
endmodule
