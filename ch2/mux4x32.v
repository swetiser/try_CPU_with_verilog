module mux4x32 (a0, a1, a2, a3, s, y);
  input [31:0] a0, a1, a2, a3;    // inputs, 32bits
  input [1:0] s;                  // input, 2 bits
  output [31:0] y;                // output 32bit
  function [31:0] select;         // function return = select
    input [31:0] a0,a1,a2,a3;
    input [1:0] s;
    case (s)
      2'b00: select = a0;
      2'b01: select = a1;
      2'b10: select = a2;
      2'b11: select = a3;
    endcase
  endfunction
  assign y = select(a0,a1,a2,a3,s);
endmodule
