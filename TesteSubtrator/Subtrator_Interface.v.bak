module Subtrator_Interface(clk, reset_n, write, writedata1, writedata2, read, readdata, result);

input clk, reset_n, write, read;
input [31:0] writedata1, writedata2;
output [31:0] readdata, result;

wire [31:0] data;

Subtrator SB (.clock(clk), .reset_n(reset_n), .enable(write), .pixel_a(writedata1), .pixel_b(writedata2), .resultado(data));

assign readdata = data;
assign result = data;

endmodule