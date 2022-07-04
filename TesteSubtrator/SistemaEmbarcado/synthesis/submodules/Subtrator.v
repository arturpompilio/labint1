module Subtracao(clock, reset_n, done1, done2, pixel_a, pixel_b, resultado);  

input clock, reset_n, done1, done2;  
input [31:0] pixel_a, pixel_b;  
output reg [31:0] resultado; 
 
always  @(negedge clock) 
begin  
	if (!reset_n)
		resultado <= 0;
	else
      if (done1 && done2)
			resultado <= pixel_a - pixel_b;
  			
end  
endmodule 