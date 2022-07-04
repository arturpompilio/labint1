module Reader(clock, reset_n, enable, pixel, saida_conduit, done);  

input clock, reset_n, enable;  
input [31:0] pixel;
output reg done;
output reg [31:0] saida_conduit; 
 
always  @(negedge clock) 
begin  
	if (!reset_n)
      begin
     	done = 0;
		saida_conduit = 0;
      end
	else
      begin
        if (enable)
          begin
			saida_conduit = pixel;
  			done = 1;
          end
  		else
          	done = 0;
      end	
end

endmodule
