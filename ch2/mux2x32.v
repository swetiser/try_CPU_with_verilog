module mux2x32 (a0,a1,s,y);   // 32 bits multiplexer
  input [31:0] a0, a1;        // inputs, 32 bits
  input s;                    // input, 1 bit
  output [31:0] y;            // output, 32 bits
  assign y = s? a1 : a0;      // if (s == 1) then y = a1; else y = a0;
endmodule
