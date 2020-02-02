
module DE10_NANO_QSYS (
	adc_ltc2308_conduit_end_CONVST,
	adc_ltc2308_conduit_end_SCK,
	adc_ltc2308_conduit_end_SDI,
	adc_ltc2308_conduit_end_SDO,
	bal_x_export,
	bal_y_export,
	clk_clk,
	enable_tone_export,
	hdmi_mode_export,
	pll_sys_locked_export,
	pll_sys_outclk2_clk,
	pongbar1_y_export,
	pongbar2_y_export,
	reset_reset_n,
	score_1_export,
	score_2_export,
	sw_external_connection_export,
	tone_export);	

	output		adc_ltc2308_conduit_end_CONVST;
	output		adc_ltc2308_conduit_end_SCK;
	output		adc_ltc2308_conduit_end_SDI;
	input		adc_ltc2308_conduit_end_SDO;
	output	[15:0]	bal_x_export;
	output	[15:0]	bal_y_export;
	input		clk_clk;
	output		enable_tone_export;
	input	[3:0]	hdmi_mode_export;
	output		pll_sys_locked_export;
	output		pll_sys_outclk2_clk;
	output	[15:0]	pongbar1_y_export;
	output	[15:0]	pongbar2_y_export;
	input		reset_reset_n;
	output	[7:0]	score_1_export;
	output	[7:0]	score_2_export;
	input	[9:0]	sw_external_connection_export;
	output	[1:0]	tone_export;
endmodule
