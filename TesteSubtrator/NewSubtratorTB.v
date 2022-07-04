`timescale 1ns/1ns

module NewSubtratorTB;

reg	CLOCK_50;
reg	[0:0] KEY;

NewSubtrator DUV (CLOCK_50, KEY);

always #10 CLOCK_50 = ~CLOCK_50;

initial
begin
	CLOCK_50 = 0;
	KEY[0] = 0;
	#102 KEY[0] = 1;
end

endmodule
