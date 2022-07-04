//`include "Teste_Subtrator.v"

module Teste_Subtrator_Interface(clk, reset_n, done1, done2, writedata1, writedata2, read, readdata);

input clk, reset_n, read, done1, done2;
input [31:0] writedata1, writedata2;
output [31:0] readdata;

Subtracao SB (.clock(clk), .reset_n(reset_n), .done1(done1), .done2(done2), .pixel_a(writedata1), .pixel_b(writedata2), .resultado(readdata));

endmodule
