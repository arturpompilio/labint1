//`include "Reader_Memory.v"

module Reader_Interface (clk, reset_n, write, writedata, read, readdata, read_conduit, done);

input clk, reset_n, write, read;
input [31:0] writedata;
output done;
output [31:0] readdata, read_conduit;

wire [31:0] data;

  Reader REA (.clock(clk), .reset_n(reset_n), .enable(write), .pixel(writedata), .saida_conduit(data), .done(done));
  
assign readdata = data;
assign read_conduit = data;

endmodule
