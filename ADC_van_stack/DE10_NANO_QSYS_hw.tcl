# _hw.tcl file for DE10_NANO_QSYS
package require -exact qsys 14.0

# module properties
set_module_property NAME {DE10_NANO_QSYS_export}
set_module_property DISPLAY_NAME {DE10_NANO_QSYS_export_display}

# default module properties
set_module_property VERSION {1.0}
set_module_property GROUP {default group}
set_module_property DESCRIPTION {default description}
set_module_property AUTHOR {author}

set_module_property COMPOSITION_CALLBACK compose
set_module_property opaque_address_map false

proc compose { } {
    # Instances and instance parameters
    # (disabled instances are intentionally culled)
    add_instance adc_ltc2308 adc_ltc2308 1.1

    add_instance clk_50 clock_source 18.1
    set_instance_parameter_value clk_50 {clockFrequency} {50000000.0}
    set_instance_parameter_value clk_50 {clockFrequencyKnown} {1}
    set_instance_parameter_value clk_50 {resetSynchronousEdges} {NONE}

    add_instance jtag_uart altera_avalon_jtag_uart 18.1
    set_instance_parameter_value jtag_uart {allowMultipleConnections} {0}
    set_instance_parameter_value jtag_uart {hubInstanceID} {0}
    set_instance_parameter_value jtag_uart {readBufferDepth} {64}
    set_instance_parameter_value jtag_uart {readIRQThreshold} {8}
    set_instance_parameter_value jtag_uart {simInputCharacterStream} {}
    set_instance_parameter_value jtag_uart {simInteractiveOptions} {NO_INTERACTIVE_WINDOWS}
    set_instance_parameter_value jtag_uart {useRegistersForReadBuffer} {0}
    set_instance_parameter_value jtag_uart {useRegistersForWriteBuffer} {0}
    set_instance_parameter_value jtag_uart {useRelativePathForSimFile} {0}
    set_instance_parameter_value jtag_uart {writeBufferDepth} {64}
    set_instance_parameter_value jtag_uart {writeIRQThreshold} {8}

    add_instance nios2_qsys altera_nios2_gen2 18.1
    set_instance_parameter_value nios2_qsys {bht_ramBlockType} {Automatic}
    set_instance_parameter_value nios2_qsys {breakOffset} {32}
    set_instance_parameter_value nios2_qsys {breakSlave} {nios2_qsys.jtag_debug_module}
    set_instance_parameter_value nios2_qsys {cdx_enabled} {0}
    set_instance_parameter_value nios2_qsys {cpuArchRev} {1}
    set_instance_parameter_value nios2_qsys {cpuID} {0}
    set_instance_parameter_value nios2_qsys {cpuReset} {0}
    set_instance_parameter_value nios2_qsys {data_master_high_performance_paddr_base} {0}
    set_instance_parameter_value nios2_qsys {data_master_high_performance_paddr_size} {0.0}
    set_instance_parameter_value nios2_qsys {data_master_paddr_base} {0}
    set_instance_parameter_value nios2_qsys {data_master_paddr_size} {0.0}
    set_instance_parameter_value nios2_qsys {dcache_bursts} {false}
    set_instance_parameter_value nios2_qsys {dcache_numTCDM} {0}
    set_instance_parameter_value nios2_qsys {dcache_ramBlockType} {Automatic}
    set_instance_parameter_value nios2_qsys {dcache_size} {2048}
    set_instance_parameter_value nios2_qsys {dcache_tagramBlockType} {Automatic}
    set_instance_parameter_value nios2_qsys {dcache_victim_buf_impl} {ram}
    set_instance_parameter_value nios2_qsys {debug_OCIOnchipTrace} {_128}
    set_instance_parameter_value nios2_qsys {debug_assignJtagInstanceID} {0}
    set_instance_parameter_value nios2_qsys {debug_datatrigger} {0}
    set_instance_parameter_value nios2_qsys {debug_debugReqSignals} {0}
    set_instance_parameter_value nios2_qsys {debug_enabled} {1}
    set_instance_parameter_value nios2_qsys {debug_hwbreakpoint} {0}
    set_instance_parameter_value nios2_qsys {debug_jtagInstanceID} {0}
    set_instance_parameter_value nios2_qsys {debug_traceStorage} {onchip_trace}
    set_instance_parameter_value nios2_qsys {debug_traceType} {none}
    set_instance_parameter_value nios2_qsys {debug_triggerArming} {1}
    set_instance_parameter_value nios2_qsys {dividerType} {no_div}
    set_instance_parameter_value nios2_qsys {exceptionOffset} {32}
    set_instance_parameter_value nios2_qsys {exceptionSlave} {onchip_memory2.s1}
    set_instance_parameter_value nios2_qsys {fa_cache_line} {2}
    set_instance_parameter_value nios2_qsys {fa_cache_linesize} {0}
    set_instance_parameter_value nios2_qsys {flash_instruction_master_paddr_base} {0}
    set_instance_parameter_value nios2_qsys {flash_instruction_master_paddr_size} {0.0}
    set_instance_parameter_value nios2_qsys {icache_burstType} {None}
    set_instance_parameter_value nios2_qsys {icache_numTCIM} {0}
    set_instance_parameter_value nios2_qsys {icache_ramBlockType} {Automatic}
    set_instance_parameter_value nios2_qsys {icache_size} {4096}
    set_instance_parameter_value nios2_qsys {icache_tagramBlockType} {Automatic}
    set_instance_parameter_value nios2_qsys {impl} {Fast}
    set_instance_parameter_value nios2_qsys {instruction_master_high_performance_paddr_base} {0}
    set_instance_parameter_value nios2_qsys {instruction_master_high_performance_paddr_size} {0.0}
    set_instance_parameter_value nios2_qsys {instruction_master_paddr_base} {0}
    set_instance_parameter_value nios2_qsys {instruction_master_paddr_size} {0.0}
    set_instance_parameter_value nios2_qsys {io_regionbase} {0}
    set_instance_parameter_value nios2_qsys {io_regionsize} {0}
    set_instance_parameter_value nios2_qsys {master_addr_map} {0}
    set_instance_parameter_value nios2_qsys {mmu_TLBMissExcOffset} {0}
    set_instance_parameter_value nios2_qsys {mmu_TLBMissExcSlave} {None}
    set_instance_parameter_value nios2_qsys {mmu_autoAssignTlbPtrSz} {1}
    set_instance_parameter_value nios2_qsys {mmu_enabled} {0}
    set_instance_parameter_value nios2_qsys {mmu_processIDNumBits} {8}
    set_instance_parameter_value nios2_qsys {mmu_ramBlockType} {Automatic}
    set_instance_parameter_value nios2_qsys {mmu_tlbNumWays} {16}
    set_instance_parameter_value nios2_qsys {mmu_tlbPtrSz} {7}
    set_instance_parameter_value nios2_qsys {mmu_udtlbNumEntries} {6}
    set_instance_parameter_value nios2_qsys {mmu_uitlbNumEntries} {4}
    set_instance_parameter_value nios2_qsys {mpu_enabled} {0}
    set_instance_parameter_value nios2_qsys {mpu_minDataRegionSize} {12}
    set_instance_parameter_value nios2_qsys {mpu_minInstRegionSize} {12}
    set_instance_parameter_value nios2_qsys {mpu_numOfDataRegion} {8}
    set_instance_parameter_value nios2_qsys {mpu_numOfInstRegion} {8}
    set_instance_parameter_value nios2_qsys {mpu_useLimit} {0}
    set_instance_parameter_value nios2_qsys {mpx_enabled} {0}
    set_instance_parameter_value nios2_qsys {mul_32_impl} {2}
    set_instance_parameter_value nios2_qsys {mul_64_impl} {0}
    set_instance_parameter_value nios2_qsys {mul_shift_choice} {0}
    set_instance_parameter_value nios2_qsys {ocimem_ramBlockType} {Automatic}
    set_instance_parameter_value nios2_qsys {ocimem_ramInit} {0}
    set_instance_parameter_value nios2_qsys {regfile_ramBlockType} {Automatic}
    set_instance_parameter_value nios2_qsys {register_file_por} {0}
    set_instance_parameter_value nios2_qsys {resetOffset} {0}
    set_instance_parameter_value nios2_qsys {resetSlave} {onchip_memory2.s1}
    set_instance_parameter_value nios2_qsys {resetrequest_enabled} {1}
    set_instance_parameter_value nios2_qsys {setting_HBreakTest} {0}
    set_instance_parameter_value nios2_qsys {setting_HDLSimCachesCleared} {1}
    set_instance_parameter_value nios2_qsys {setting_activateMonitors} {1}
    set_instance_parameter_value nios2_qsys {setting_activateTestEndChecker} {0}
    set_instance_parameter_value nios2_qsys {setting_activateTrace} {1}
    set_instance_parameter_value nios2_qsys {setting_allow_break_inst} {0}
    set_instance_parameter_value nios2_qsys {setting_alwaysEncrypt} {1}
    set_instance_parameter_value nios2_qsys {setting_asic_add_scan_mode_input} {0}
    set_instance_parameter_value nios2_qsys {setting_asic_enabled} {0}
    set_instance_parameter_value nios2_qsys {setting_asic_synopsys_translate_on_off} {0}
    set_instance_parameter_value nios2_qsys {setting_asic_third_party_synthesis} {0}
    set_instance_parameter_value nios2_qsys {setting_avalonDebugPortPresent} {0}
    set_instance_parameter_value nios2_qsys {setting_bhtPtrSz} {8}
    set_instance_parameter_value nios2_qsys {setting_bigEndian} {0}
    set_instance_parameter_value nios2_qsys {setting_branchpredictiontype} {Dynamic}
    set_instance_parameter_value nios2_qsys {setting_breakslaveoveride} {0}
    set_instance_parameter_value nios2_qsys {setting_clearXBitsLDNonBypass} {1}
    set_instance_parameter_value nios2_qsys {setting_dc_ecc_present} {0}
    set_instance_parameter_value nios2_qsys {setting_disable_tmr_inj} {0}
    set_instance_parameter_value nios2_qsys {setting_disableocitrace} {0}
    set_instance_parameter_value nios2_qsys {setting_dtcm_ecc_present} {0}
    set_instance_parameter_value nios2_qsys {setting_ecc_present} {0}
    set_instance_parameter_value nios2_qsys {setting_ecc_sim_test_ports} {0}
    set_instance_parameter_value nios2_qsys {setting_exportHostDebugPort} {0}
    set_instance_parameter_value nios2_qsys {setting_exportPCB} {0}
    set_instance_parameter_value nios2_qsys {setting_export_large_RAMs} {0}
    set_instance_parameter_value nios2_qsys {setting_exportdebuginfo} {0}
    set_instance_parameter_value nios2_qsys {setting_exportvectors} {0}
    set_instance_parameter_value nios2_qsys {setting_fast_register_read} {0}
    set_instance_parameter_value nios2_qsys {setting_ic_ecc_present} {1}
    set_instance_parameter_value nios2_qsys {setting_interruptControllerType} {Internal}
    set_instance_parameter_value nios2_qsys {setting_itcm_ecc_present} {0}
    set_instance_parameter_value nios2_qsys {setting_mmu_ecc_present} {1}
    set_instance_parameter_value nios2_qsys {setting_oci_export_jtag_signals} {0}
    set_instance_parameter_value nios2_qsys {setting_oci_version} {1}
    set_instance_parameter_value nios2_qsys {setting_preciseIllegalMemAccessException} {0}
    set_instance_parameter_value nios2_qsys {setting_removeRAMinit} {0}
    set_instance_parameter_value nios2_qsys {setting_rf_ecc_present} {1}
    set_instance_parameter_value nios2_qsys {setting_shadowRegisterSets} {0}
    set_instance_parameter_value nios2_qsys {setting_showInternalSettings} {0}
    set_instance_parameter_value nios2_qsys {setting_showUnpublishedSettings} {0}
    set_instance_parameter_value nios2_qsys {setting_support31bitdcachebypass} {1}
    set_instance_parameter_value nios2_qsys {setting_tmr_output_disable} {0}
    set_instance_parameter_value nios2_qsys {setting_usedesignware} {0}
    set_instance_parameter_value nios2_qsys {shift_rot_impl} {1}
    set_instance_parameter_value nios2_qsys {tightly_coupled_data_master_0_paddr_base} {0}
    set_instance_parameter_value nios2_qsys {tightly_coupled_data_master_0_paddr_size} {0.0}
    set_instance_parameter_value nios2_qsys {tightly_coupled_data_master_1_paddr_base} {0}
    set_instance_parameter_value nios2_qsys {tightly_coupled_data_master_1_paddr_size} {0.0}
    set_instance_parameter_value nios2_qsys {tightly_coupled_data_master_2_paddr_base} {0}
    set_instance_parameter_value nios2_qsys {tightly_coupled_data_master_2_paddr_size} {0.0}
    set_instance_parameter_value nios2_qsys {tightly_coupled_data_master_3_paddr_base} {0}
    set_instance_parameter_value nios2_qsys {tightly_coupled_data_master_3_paddr_size} {0.0}
    set_instance_parameter_value nios2_qsys {tightly_coupled_instruction_master_0_paddr_base} {0}
    set_instance_parameter_value nios2_qsys {tightly_coupled_instruction_master_0_paddr_size} {0.0}
    set_instance_parameter_value nios2_qsys {tightly_coupled_instruction_master_1_paddr_base} {0}
    set_instance_parameter_value nios2_qsys {tightly_coupled_instruction_master_1_paddr_size} {0.0}
    set_instance_parameter_value nios2_qsys {tightly_coupled_instruction_master_2_paddr_base} {0}
    set_instance_parameter_value nios2_qsys {tightly_coupled_instruction_master_2_paddr_size} {0.0}
    set_instance_parameter_value nios2_qsys {tightly_coupled_instruction_master_3_paddr_base} {0}
    set_instance_parameter_value nios2_qsys {tightly_coupled_instruction_master_3_paddr_size} {0.0}
    set_instance_parameter_value nios2_qsys {tmr_enabled} {0}
    set_instance_parameter_value nios2_qsys {tracefilename} {}
    set_instance_parameter_value nios2_qsys {userDefinedSettings} {}

    add_instance onchip_memory2 altera_avalon_onchip_memory2 18.1
    set_instance_parameter_value onchip_memory2 {allowInSystemMemoryContentEditor} {0}
    set_instance_parameter_value onchip_memory2 {blockType} {AUTO}
    set_instance_parameter_value onchip_memory2 {copyInitFile} {0}
    set_instance_parameter_value onchip_memory2 {dataWidth} {32}
    set_instance_parameter_value onchip_memory2 {dataWidth2} {32}
    set_instance_parameter_value onchip_memory2 {dualPort} {0}
    set_instance_parameter_value onchip_memory2 {ecc_enabled} {0}
    set_instance_parameter_value onchip_memory2 {enPRInitMode} {0}
    set_instance_parameter_value onchip_memory2 {enableDiffWidth} {0}
    set_instance_parameter_value onchip_memory2 {initMemContent} {1}
    set_instance_parameter_value onchip_memory2 {initializationFileName} {onchip_mem.hex}
    set_instance_parameter_value onchip_memory2 {instanceID} {NONE}
    set_instance_parameter_value onchip_memory2 {memorySize} {160000.0}
    set_instance_parameter_value onchip_memory2 {readDuringWriteMode} {DONT_CARE}
    set_instance_parameter_value onchip_memory2 {resetrequest_enabled} {1}
    set_instance_parameter_value onchip_memory2 {simAllowMRAMContentsFile} {0}
    set_instance_parameter_value onchip_memory2 {simMemInitOnlyFilename} {0}
    set_instance_parameter_value onchip_memory2 {singleClockOperation} {0}
    set_instance_parameter_value onchip_memory2 {slave1Latency} {1}
    set_instance_parameter_value onchip_memory2 {slave2Latency} {1}
    set_instance_parameter_value onchip_memory2 {useNonDefaultInitFile} {0}
    set_instance_parameter_value onchip_memory2 {useShallowMemBlocks} {0}
    set_instance_parameter_value onchip_memory2 {writable} {1}

    add_instance pll_sys altera_pll 18.1
    set_instance_parameter_value pll_sys {debug_print_output} {0}
    set_instance_parameter_value pll_sys {debug_use_rbc_taf_method} {0}
    set_instance_parameter_value pll_sys {gui_active_clk} {0}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency0} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency1} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency10} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency11} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency12} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency13} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency14} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency15} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency16} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency17} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency2} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency3} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency4} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency5} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency6} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency7} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency8} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_output_clock_frequency9} {0 MHz}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift0} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift1} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift10} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift11} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift12} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift13} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift14} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift15} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift16} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift17} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift2} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift3} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift4} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift5} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift6} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift7} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift8} {0}
    set_instance_parameter_value pll_sys {gui_actual_phase_shift9} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter0} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter1} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter10} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter11} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter12} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter13} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter14} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter15} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter16} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter17} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter2} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter3} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter4} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter5} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter6} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter7} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter8} {0}
    set_instance_parameter_value pll_sys {gui_cascade_counter9} {0}
    set_instance_parameter_value pll_sys {gui_cascade_outclk_index} {0}
    set_instance_parameter_value pll_sys {gui_channel_spacing} {0.0}
    set_instance_parameter_value pll_sys {gui_clk_bad} {0}
    set_instance_parameter_value pll_sys {gui_device_speed_grade} {2}
    set_instance_parameter_value pll_sys {gui_divide_factor_c0} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c1} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c10} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c11} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c12} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c13} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c14} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c15} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c16} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c17} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c2} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c3} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c4} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c5} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c6} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c7} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c8} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_c9} {1}
    set_instance_parameter_value pll_sys {gui_divide_factor_n} {1}
    set_instance_parameter_value pll_sys {gui_dps_cntr} {C0}
    set_instance_parameter_value pll_sys {gui_dps_dir} {Positive}
    set_instance_parameter_value pll_sys {gui_dps_num} {1}
    set_instance_parameter_value pll_sys {gui_dsm_out_sel} {1st_order}
    set_instance_parameter_value pll_sys {gui_duty_cycle0} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle1} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle10} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle11} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle12} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle13} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle14} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle15} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle16} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle17} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle2} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle3} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle4} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle5} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle6} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle7} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle8} {50}
    set_instance_parameter_value pll_sys {gui_duty_cycle9} {50}
    set_instance_parameter_value pll_sys {gui_en_adv_params} {0}
    set_instance_parameter_value pll_sys {gui_en_dps_ports} {0}
    set_instance_parameter_value pll_sys {gui_en_phout_ports} {0}
    set_instance_parameter_value pll_sys {gui_en_reconf} {0}
    set_instance_parameter_value pll_sys {gui_enable_cascade_in} {0}
    set_instance_parameter_value pll_sys {gui_enable_cascade_out} {0}
    set_instance_parameter_value pll_sys {gui_enable_mif_dps} {0}
    set_instance_parameter_value pll_sys {gui_feedback_clock} {Global Clock}
    set_instance_parameter_value pll_sys {gui_frac_multiply_factor} {1.0}
    set_instance_parameter_value pll_sys {gui_fractional_cout} {32}
    set_instance_parameter_value pll_sys {gui_mif_generate} {0}
    set_instance_parameter_value pll_sys {gui_multiply_factor} {1}
    set_instance_parameter_value pll_sys {gui_number_of_clocks} {3}
    set_instance_parameter_value pll_sys {gui_operation_mode} {normal}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency0} {100.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency1} {40.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency10} {100.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency11} {100.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency12} {100.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency13} {100.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency14} {100.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency15} {100.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency16} {100.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency17} {100.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency2} {200.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency3} {120.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency4} {100.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency5} {100.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency6} {100.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency7} {100.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency8} {100.0}
    set_instance_parameter_value pll_sys {gui_output_clock_frequency9} {100.0}
    set_instance_parameter_value pll_sys {gui_phase_shift0} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift1} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift10} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift11} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift12} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift13} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift14} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift15} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift16} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift17} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift2} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift3} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift4} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift5} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift6} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift7} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift8} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift9} {0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg0} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg1} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg10} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg11} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg12} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg13} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg14} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg15} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg16} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg17} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg2} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg3} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg4} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg5} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg6} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg7} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg8} {0.0}
    set_instance_parameter_value pll_sys {gui_phase_shift_deg9} {0.0}
    set_instance_parameter_value pll_sys {gui_phout_division} {1}
    set_instance_parameter_value pll_sys {gui_pll_auto_reset} {Off}
    set_instance_parameter_value pll_sys {gui_pll_bandwidth_preset} {Auto}
    set_instance_parameter_value pll_sys {gui_pll_cascading_mode} {Create an adjpllin signal to connect with an upstream PLL}
    set_instance_parameter_value pll_sys {gui_pll_mode} {Integer-N PLL}
    set_instance_parameter_value pll_sys {gui_ps_units0} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units1} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units10} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units11} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units12} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units13} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units14} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units15} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units16} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units17} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units2} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units3} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units4} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units5} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units6} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units7} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units8} {ps}
    set_instance_parameter_value pll_sys {gui_ps_units9} {ps}
    set_instance_parameter_value pll_sys {gui_refclk1_frequency} {100.0}
    set_instance_parameter_value pll_sys {gui_refclk_switch} {0}
    set_instance_parameter_value pll_sys {gui_reference_clock_frequency} {50.0}
    set_instance_parameter_value pll_sys {gui_switchover_delay} {0}
    set_instance_parameter_value pll_sys {gui_switchover_mode} {Automatic Switchover}
    set_instance_parameter_value pll_sys {gui_use_locked} {1}

    add_instance sw altera_avalon_pio 18.1
    set_instance_parameter_value sw {bitClearingEdgeCapReg} {0}
    set_instance_parameter_value sw {bitModifyingOutReg} {0}
    set_instance_parameter_value sw {captureEdge} {1}
    set_instance_parameter_value sw {direction} {Input}
    set_instance_parameter_value sw {edgeType} {ANY}
    set_instance_parameter_value sw {generateIRQ} {1}
    set_instance_parameter_value sw {irqType} {EDGE}
    set_instance_parameter_value sw {resetValue} {0.0}
    set_instance_parameter_value sw {simDoTestBenchWiring} {0}
    set_instance_parameter_value sw {simDrivenValue} {0.0}
    set_instance_parameter_value sw {width} {10}

    add_instance sysid_qsys altera_avalon_sysid_qsys 18.1
    set_instance_parameter_value sysid_qsys {id} {0}

    # connections and connection parameters
    add_connection clk_50.clk pll_sys.refclk clock

    add_connection clk_50.clk_reset adc_ltc2308.reset_sink reset

    add_connection clk_50.clk_reset jtag_uart.reset reset

    add_connection clk_50.clk_reset nios2_qsys.reset reset

    add_connection clk_50.clk_reset onchip_memory2.reset1 reset

    add_connection clk_50.clk_reset pll_sys.reset reset

    add_connection clk_50.clk_reset sw.reset reset

    add_connection clk_50.clk_reset sysid_qsys.reset reset

    add_connection nios2_qsys.data_master adc_ltc2308.slave avalon
    set_connection_parameter_value nios2_qsys.data_master/adc_ltc2308.slave arbitrationPriority {1}
    set_connection_parameter_value nios2_qsys.data_master/adc_ltc2308.slave baseAddress {0x00081010}
    set_connection_parameter_value nios2_qsys.data_master/adc_ltc2308.slave defaultConnection {0}

    add_connection nios2_qsys.data_master jtag_uart.avalon_jtag_slave avalon
    set_connection_parameter_value nios2_qsys.data_master/jtag_uart.avalon_jtag_slave arbitrationPriority {1}
    set_connection_parameter_value nios2_qsys.data_master/jtag_uart.avalon_jtag_slave baseAddress {0x00081000}
    set_connection_parameter_value nios2_qsys.data_master/jtag_uart.avalon_jtag_slave defaultConnection {0}

    add_connection nios2_qsys.data_master nios2_qsys.debug_mem_slave avalon
    set_connection_parameter_value nios2_qsys.data_master/nios2_qsys.debug_mem_slave arbitrationPriority {1}
    set_connection_parameter_value nios2_qsys.data_master/nios2_qsys.debug_mem_slave baseAddress {0x00080800}
    set_connection_parameter_value nios2_qsys.data_master/nios2_qsys.debug_mem_slave defaultConnection {0}

    add_connection nios2_qsys.data_master onchip_memory2.s1 avalon
    set_connection_parameter_value nios2_qsys.data_master/onchip_memory2.s1 arbitrationPriority {1}
    set_connection_parameter_value nios2_qsys.data_master/onchip_memory2.s1 baseAddress {0x00040000}
    set_connection_parameter_value nios2_qsys.data_master/onchip_memory2.s1 defaultConnection {0}

    add_connection nios2_qsys.data_master sw.s1 avalon
    set_connection_parameter_value nios2_qsys.data_master/sw.s1 arbitrationPriority {1}
    set_connection_parameter_value nios2_qsys.data_master/sw.s1 baseAddress {0x0000}
    set_connection_parameter_value nios2_qsys.data_master/sw.s1 defaultConnection {0}

    add_connection nios2_qsys.data_master sysid_qsys.control_slave avalon
    set_connection_parameter_value nios2_qsys.data_master/sysid_qsys.control_slave arbitrationPriority {1}
    set_connection_parameter_value nios2_qsys.data_master/sysid_qsys.control_slave baseAddress {0x00081008}
    set_connection_parameter_value nios2_qsys.data_master/sysid_qsys.control_slave defaultConnection {0}

    add_connection nios2_qsys.debug_reset_request nios2_qsys.reset reset

    add_connection nios2_qsys.instruction_master nios2_qsys.debug_mem_slave avalon
    set_connection_parameter_value nios2_qsys.instruction_master/nios2_qsys.debug_mem_slave arbitrationPriority {1}
    set_connection_parameter_value nios2_qsys.instruction_master/nios2_qsys.debug_mem_slave baseAddress {0x00080800}
    set_connection_parameter_value nios2_qsys.instruction_master/nios2_qsys.debug_mem_slave defaultConnection {0}

    add_connection nios2_qsys.instruction_master onchip_memory2.s1 avalon
    set_connection_parameter_value nios2_qsys.instruction_master/onchip_memory2.s1 arbitrationPriority {1}
    set_connection_parameter_value nios2_qsys.instruction_master/onchip_memory2.s1 baseAddress {0x00040000}
    set_connection_parameter_value nios2_qsys.instruction_master/onchip_memory2.s1 defaultConnection {0}

    add_connection nios2_qsys.irq jtag_uart.irq interrupt
    set_connection_parameter_value nios2_qsys.irq/jtag_uart.irq irqNumber {0}

    add_connection nios2_qsys.irq sw.irq interrupt
    set_connection_parameter_value nios2_qsys.irq/sw.irq irqNumber {1}

    add_connection pll_sys.outclk0 adc_ltc2308.clock_sink clock

    add_connection pll_sys.outclk0 jtag_uart.clk clock

    add_connection pll_sys.outclk0 nios2_qsys.clk clock

    add_connection pll_sys.outclk0 onchip_memory2.clk1 clock

    add_connection pll_sys.outclk0 sw.clk clock

    add_connection pll_sys.outclk0 sysid_qsys.clk clock

    add_connection pll_sys.outclk1 adc_ltc2308.clock_sink_adc clock

    # exported interfaces
    add_interface adc_ltc2308_conduit_end conduit end
    set_interface_property adc_ltc2308_conduit_end EXPORT_OF adc_ltc2308.conduit_end
    add_interface clk clock sink
    set_interface_property clk EXPORT_OF clk_50.clk_in
    add_interface pll_sys_locked conduit end
    set_interface_property pll_sys_locked EXPORT_OF pll_sys.locked
    add_interface pll_sys_outclk2 clock source
    set_interface_property pll_sys_outclk2 EXPORT_OF pll_sys.outclk2
    add_interface reset reset sink
    set_interface_property reset EXPORT_OF clk_50.clk_in_reset
    add_interface sw_external_connection conduit end
    set_interface_property sw_external_connection EXPORT_OF sw.external_connection

    # interconnect requirements
    set_interconnect_requirement {$system} {qsys_mm.clockCrossingAdapter} {HANDSHAKE}
    set_interconnect_requirement {$system} {qsys_mm.maxAdditionalLatency} {1}
}
