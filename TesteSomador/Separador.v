module Separador (seletor, seletor_entrada, entrada, saida);

input seletor, seletor_entrada;
input [31:0] entrada;
output reg [15:0] saida;

always @ (*)
begin
	case (seletor_entrada)
		0: if (seletor)
				saida = entrada[31:16];
			else saida = entrada[15:0];
		1: if (seletor)
				saida = entrada[31:16];
			else saida = entrada[15:0];
	endcase
end
endmodule
