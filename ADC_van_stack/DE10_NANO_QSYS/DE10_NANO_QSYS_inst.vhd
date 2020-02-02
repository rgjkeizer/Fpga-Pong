	component DE10_NANO_QSYS is
		port (
			adc_ltc2308_conduit_end_CONVST : out std_logic;                                        -- CONVST
			adc_ltc2308_conduit_end_SCK    : out std_logic;                                        -- SCK
			adc_ltc2308_conduit_end_SDI    : out std_logic;                                        -- SDI
			adc_ltc2308_conduit_end_SDO    : in  std_logic                     := 'X';             -- SDO
			bal_x_export                   : out std_logic_vector(15 downto 0);                    -- export
			bal_y_export                   : out std_logic_vector(15 downto 0);                    -- export
			clk_clk                        : in  std_logic                     := 'X';             -- clk
			enable_tone_export             : out std_logic;                                        -- export
			hdmi_mode_export               : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			pll_sys_locked_export          : out std_logic;                                        -- export
			pll_sys_outclk2_clk            : out std_logic;                                        -- clk
			pongbar1_y_export              : out std_logic_vector(15 downto 0);                    -- export
			pongbar2_y_export              : out std_logic_vector(15 downto 0);                    -- export
			reset_reset_n                  : in  std_logic                     := 'X';             -- reset_n
			score_1_export                 : out std_logic_vector(7 downto 0);                     -- export
			score_2_export                 : out std_logic_vector(7 downto 0);                     -- export
			sw_external_connection_export  : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- export
			tone_export                    : out std_logic_vector(1 downto 0)                      -- export
		);
	end component DE10_NANO_QSYS;

	u0 : component DE10_NANO_QSYS
		port map (
			adc_ltc2308_conduit_end_CONVST => CONNECTED_TO_adc_ltc2308_conduit_end_CONVST, -- adc_ltc2308_conduit_end.CONVST
			adc_ltc2308_conduit_end_SCK    => CONNECTED_TO_adc_ltc2308_conduit_end_SCK,    --                        .SCK
			adc_ltc2308_conduit_end_SDI    => CONNECTED_TO_adc_ltc2308_conduit_end_SDI,    --                        .SDI
			adc_ltc2308_conduit_end_SDO    => CONNECTED_TO_adc_ltc2308_conduit_end_SDO,    --                        .SDO
			bal_x_export                   => CONNECTED_TO_bal_x_export,                   --                   bal_x.export
			bal_y_export                   => CONNECTED_TO_bal_y_export,                   --                   bal_y.export
			clk_clk                        => CONNECTED_TO_clk_clk,                        --                     clk.clk
			enable_tone_export             => CONNECTED_TO_enable_tone_export,             --             enable_tone.export
			hdmi_mode_export               => CONNECTED_TO_hdmi_mode_export,               --               hdmi_mode.export
			pll_sys_locked_export          => CONNECTED_TO_pll_sys_locked_export,          --          pll_sys_locked.export
			pll_sys_outclk2_clk            => CONNECTED_TO_pll_sys_outclk2_clk,            --         pll_sys_outclk2.clk
			pongbar1_y_export              => CONNECTED_TO_pongbar1_y_export,              --              pongbar1_y.export
			pongbar2_y_export              => CONNECTED_TO_pongbar2_y_export,              --              pongbar2_y.export
			reset_reset_n                  => CONNECTED_TO_reset_reset_n,                  --                   reset.reset_n
			score_1_export                 => CONNECTED_TO_score_1_export,                 --                 score_1.export
			score_2_export                 => CONNECTED_TO_score_2_export,                 --                 score_2.export
			sw_external_connection_export  => CONNECTED_TO_sw_external_connection_export,  --  sw_external_connection.export
			tone_export                    => CONNECTED_TO_tone_export                     --                    tone.export
		);

