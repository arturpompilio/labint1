//`include "Clock_Counter.v"

module Clock_Counter_Interface (clk, reset_n, write, writedata, read, readdata);

input clk, reset_n, write, read;
input [31:0] writedata;
output [31:0] readdata;

wire [31:0] data;

Clock_Counter CC (.clk(clk), .reset_n(reset_n), .enable(write), .command(writedata), .clk_count(readdata));

endmodule
