module Subtrator(clock, reset_n, enable, pixel_a, pixel_b, resultado);  

input clock, reset_n, enable;  
input [31:0] pixel_a, pixel_b;  
output reg [31:0] resultado; 
 
always  @(negedge clock) 
begin  
	if (!reset_n)
		resultado <= 0;
	else
		if (enable)
			resultado <= pixel_a - pixel_b;
  			
end  
endmodule 