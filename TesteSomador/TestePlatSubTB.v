`timescale 1ns/1ns

module TestePlatSubTB;

reg	CLOCK_50;
reg	[0:0] KEY;
reg	[1:0] SW;
wire	[15:0] LEDR;

wire	[31:0] SYNTHESIZED_WIRE_0;

TestePlatSub DUV (CLOCK_50, KEY, SW, LEDR);

always #10 CLOCK_50 = ~CLOCK_50;

initial
begin

	CLOCK_50 = 0;
	KEY[0] = 0;
	SW[0] = 0;
	SW[1] = 0;
	#102 KEY[0] = 1;

end

endmodule
