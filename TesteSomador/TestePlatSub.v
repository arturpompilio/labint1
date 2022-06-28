// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Mon Jun 27 09:59:23 2022"

module TestePlatSub(
	CLOCK_50,
	KEY,
	SW,
	LEDR
);


input wire	CLOCK_50;
input wire	[0:0] KEY;
input wire	[1:0] SW;
output wire	[15:0] LEDR;

wire	[31:0] SYNTHESIZED_WIRE_0;





Separador	b2v_inst(
	.seletor(SW[0]),
	.seletor_entrada(SW[1]),
	.entrada(SYNTHESIZED_WIRE_0),
	.saida(LEDR));


SistemaEmbarcadoSubtrator	b2v_inst1(
	.clk_clk(CLOCK_50),
	.reset_reset_n(KEY),
	.medidordesempenho_conduit_readdata(SYNTHESIZED_WIRE_0));


endmodule
