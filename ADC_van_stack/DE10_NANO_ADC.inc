-- WARNING: Do NOT edit the input and output ports in this file in a text
-- editor if you plan to continue editing the block that represents it in
-- the Block Editor! File corruption is VERY likely to occur.

-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.


-- Generated by Quartus Prime Version 18.1 (Build Build 625 09/12/2018)
-- Created on Mon Jan  6 11:20:02 2020

FUNCTION DE10_NANO_ADC (ADC_SDO, FPGA_CLK1_50, FPGA_CLK2_50, FPGA_CLK3_50, HDMI_TX_INT, KEY[1..0], SW[3..0])
	RETURNS (ADC_CONVST, ADC_SCK, ADC_SDI, ARDUINO_IO[15..0], ARDUINO_RESET_N, HDMI_I2C_SCL, HDMI_I2C_SDA, HDMI_I2S, HDMI_LRCLK, HDMI_MCLK, HDMI_SCLK, HDMI_TX_CLK, HDMI_TX_D[23..0], HDMI_TX_DE, HDMI_TX_HS, HDMI_TX_VS, LED[7..0]);
