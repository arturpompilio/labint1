// SistemaEmbarcadoSubtrator_tb.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module SistemaEmbarcadoSubtrator_tb (
	);

	wire         sistemaembarcadosubtrator_inst_clk_bfm_clk_clk;                    // SistemaEmbarcadoSubtrator_inst_clk_bfm:clk -> [SistemaEmbarcadoSubtrator_inst:clk_clk, SistemaEmbarcadoSubtrator_inst_medidordesempenho_conduit_bfm:clk, SistemaEmbarcadoSubtrator_inst_reset_bfm:clk]
	wire  [31:0] sistemaembarcadosubtrator_inst_medidordesempenho_conduit_readdata; // SistemaEmbarcadoSubtrator_inst:medidordesempenho_conduit_readdata -> SistemaEmbarcadoSubtrator_inst_medidordesempenho_conduit_bfm:sig_readdata
	wire         sistemaembarcadosubtrator_inst_reset_bfm_reset_reset;              // SistemaEmbarcadoSubtrator_inst_reset_bfm:reset -> SistemaEmbarcadoSubtrator_inst:reset_reset_n

	SistemaEmbarcadoSubtrator sistemaembarcadosubtrator_inst (
		.clk_clk                            (sistemaembarcadosubtrator_inst_clk_bfm_clk_clk),                    //                       clk.clk
		.medidordesempenho_conduit_readdata (sistemaembarcadosubtrator_inst_medidordesempenho_conduit_readdata), // medidordesempenho_conduit.readdata
		.reset_reset_n                      (sistemaembarcadosubtrator_inst_reset_bfm_reset_reset)               //                     reset.reset_n
	);

	altera_avalon_clock_source #(
		.CLOCK_RATE (50000000),
		.CLOCK_UNIT (1)
	) sistemaembarcadosubtrator_inst_clk_bfm (
		.clk (sistemaembarcadosubtrator_inst_clk_bfm_clk_clk)  // clk.clk
	);

	altera_conduit_bfm sistemaembarcadosubtrator_inst_medidordesempenho_conduit_bfm (
		.clk          (sistemaembarcadosubtrator_inst_clk_bfm_clk_clk),                    //     clk.clk
		.sig_readdata (sistemaembarcadosubtrator_inst_medidordesempenho_conduit_readdata), // conduit.readdata
		.reset        (1'b0)                                                               // (terminated)
	);

	altera_avalon_reset_source #(
		.ASSERT_HIGH_RESET    (0),
		.INITIAL_RESET_CYCLES (50)
	) sistemaembarcadosubtrator_inst_reset_bfm (
		.reset (sistemaembarcadosubtrator_inst_reset_bfm_reset_reset), // reset.reset_n
		.clk   (sistemaembarcadosubtrator_inst_clk_bfm_clk_clk)        //   clk.clk
	);

endmodule