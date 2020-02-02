/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2_qsys' in SOPC Builder design 'DE10_NANO_QSYS'
 * SOPC Builder design path: D:/Saxion/Final_Embedded_Systems/ADC_HDMI_potmeter_met_scherm_magistraal_met_pongbars_van_beide_ADC/ADC_van_stack/DE10_NANO_QSYS.sopcinfo
 *
 * Generated: Wed Jan 22 15:10:47 CET 2020
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00080820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 100000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0x14
#define ALT_CPU_DCACHE_BYPASS_MASK 0x80000000
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 2048
#define ALT_CPU_EXCEPTION_ADDR 0x00040020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 100000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_EXTRA_EXCEPTION_INFO
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 4096
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0x14
#define ALT_CPU_NAME "nios2_qsys"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x00040000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00080820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 100000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0x14
#define NIOS2_DCACHE_BYPASS_MASK 0x80000000
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 2048
#define NIOS2_EXCEPTION_ADDR 0x00040020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_EXTRA_EXCEPTION_INFO
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 4096
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0x14
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x00040000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ADC_LTC2308
#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_NIOS2_GEN2


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone V"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x810b0
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x810b0
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x810b0
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "DE10_NANO_QSYS"


/*
 * adc_ltc2308 configuration
 *
 */

#define ADC_LTC2308_BASE 0x810a0
#define ADC_LTC2308_IRQ -1
#define ADC_LTC2308_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ADC_LTC2308_NAME "/dev/adc_ltc2308"
#define ADC_LTC2308_SPAN 8
#define ADC_LTC2308_TYPE "adc_ltc2308"
#define ALT_MODULE_CLASS_adc_ltc2308 adc_ltc2308


/*
 * bal_x configuration
 *
 */

#define ALT_MODULE_CLASS_bal_x altera_avalon_pio
#define BAL_X_BASE 0x81030
#define BAL_X_BIT_CLEARING_EDGE_REGISTER 0
#define BAL_X_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BAL_X_CAPTURE 0
#define BAL_X_DATA_WIDTH 16
#define BAL_X_DO_TEST_BENCH_WIRING 0
#define BAL_X_DRIVEN_SIM_VALUE 0
#define BAL_X_EDGE_TYPE "NONE"
#define BAL_X_FREQ 50000000
#define BAL_X_HAS_IN 0
#define BAL_X_HAS_OUT 1
#define BAL_X_HAS_TRI 0
#define BAL_X_IRQ -1
#define BAL_X_IRQ_INTERRUPT_CONTROLLER_ID -1
#define BAL_X_IRQ_TYPE "NONE"
#define BAL_X_NAME "/dev/bal_x"
#define BAL_X_RESET_VALUE 0
#define BAL_X_SPAN 16
#define BAL_X_TYPE "altera_avalon_pio"


/*
 * bal_y configuration
 *
 */

#define ALT_MODULE_CLASS_bal_y altera_avalon_pio
#define BAL_Y_BASE 0x81020
#define BAL_Y_BIT_CLEARING_EDGE_REGISTER 0
#define BAL_Y_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BAL_Y_CAPTURE 0
#define BAL_Y_DATA_WIDTH 16
#define BAL_Y_DO_TEST_BENCH_WIRING 0
#define BAL_Y_DRIVEN_SIM_VALUE 0
#define BAL_Y_EDGE_TYPE "NONE"
#define BAL_Y_FREQ 50000000
#define BAL_Y_HAS_IN 0
#define BAL_Y_HAS_OUT 1
#define BAL_Y_HAS_TRI 0
#define BAL_Y_IRQ -1
#define BAL_Y_IRQ_INTERRUPT_CONTROLLER_ID -1
#define BAL_Y_IRQ_TYPE "NONE"
#define BAL_Y_NAME "/dev/bal_y"
#define BAL_Y_RESET_VALUE 0
#define BAL_Y_SPAN 16
#define BAL_Y_TYPE "altera_avalon_pio"


/*
 * enable_tone configuration
 *
 */

#define ALT_MODULE_CLASS_enable_tone altera_avalon_pio
#define ENABLE_TONE_BASE 0x81000
#define ENABLE_TONE_BIT_CLEARING_EDGE_REGISTER 0
#define ENABLE_TONE_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ENABLE_TONE_CAPTURE 0
#define ENABLE_TONE_DATA_WIDTH 1
#define ENABLE_TONE_DO_TEST_BENCH_WIRING 0
#define ENABLE_TONE_DRIVEN_SIM_VALUE 0
#define ENABLE_TONE_EDGE_TYPE "NONE"
#define ENABLE_TONE_FREQ 50000000
#define ENABLE_TONE_HAS_IN 0
#define ENABLE_TONE_HAS_OUT 1
#define ENABLE_TONE_HAS_TRI 0
#define ENABLE_TONE_IRQ -1
#define ENABLE_TONE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ENABLE_TONE_IRQ_TYPE "NONE"
#define ENABLE_TONE_NAME "/dev/enable_tone"
#define ENABLE_TONE_RESET_VALUE 0
#define ENABLE_TONE_SPAN 16
#define ENABLE_TONE_TYPE "altera_avalon_pio"


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * hdmi_mode configuration
 *
 */

#define ALT_MODULE_CLASS_hdmi_mode altera_avalon_pio
#define HDMI_MODE_BASE 0x81010
#define HDMI_MODE_BIT_CLEARING_EDGE_REGISTER 0
#define HDMI_MODE_BIT_MODIFYING_OUTPUT_REGISTER 0
#define HDMI_MODE_CAPTURE 0
#define HDMI_MODE_DATA_WIDTH 4
#define HDMI_MODE_DO_TEST_BENCH_WIRING 0
#define HDMI_MODE_DRIVEN_SIM_VALUE 0
#define HDMI_MODE_EDGE_TYPE "NONE"
#define HDMI_MODE_FREQ 50000000
#define HDMI_MODE_HAS_IN 1
#define HDMI_MODE_HAS_OUT 0
#define HDMI_MODE_HAS_TRI 0
#define HDMI_MODE_IRQ -1
#define HDMI_MODE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define HDMI_MODE_IRQ_TYPE "NONE"
#define HDMI_MODE_NAME "/dev/hdmi_mode"
#define HDMI_MODE_RESET_VALUE 0
#define HDMI_MODE_SPAN 16
#define HDMI_MODE_TYPE "altera_avalon_pio"


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x810b0
#define JTAG_UART_IRQ 0
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * onchip_memory2 configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory2 altera_avalon_onchip_memory2
#define ONCHIP_MEMORY2_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY2_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY2_BASE 0x40000
#define ONCHIP_MEMORY2_CONTENTS_INFO ""
#define ONCHIP_MEMORY2_DUAL_PORT 0
#define ONCHIP_MEMORY2_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY2_INIT_CONTENTS_FILE "DE10_NANO_QSYS_onchip_memory2"
#define ONCHIP_MEMORY2_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY2_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY2_IRQ -1
#define ONCHIP_MEMORY2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY2_NAME "/dev/onchip_memory2"
#define ONCHIP_MEMORY2_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY2_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY2_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY2_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY2_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY2_SIZE_VALUE 160000
#define ONCHIP_MEMORY2_SPAN 160000
#define ONCHIP_MEMORY2_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY2_WRITABLE 1


/*
 * pongBar1_y configuration
 *
 */

#define ALT_MODULE_CLASS_pongBar1_y altera_avalon_pio
#define PONGBAR1_Y_BASE 0x81080
#define PONGBAR1_Y_BIT_CLEARING_EDGE_REGISTER 0
#define PONGBAR1_Y_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PONGBAR1_Y_CAPTURE 0
#define PONGBAR1_Y_DATA_WIDTH 16
#define PONGBAR1_Y_DO_TEST_BENCH_WIRING 0
#define PONGBAR1_Y_DRIVEN_SIM_VALUE 0
#define PONGBAR1_Y_EDGE_TYPE "NONE"
#define PONGBAR1_Y_FREQ 50000000
#define PONGBAR1_Y_HAS_IN 0
#define PONGBAR1_Y_HAS_OUT 1
#define PONGBAR1_Y_HAS_TRI 0
#define PONGBAR1_Y_IRQ -1
#define PONGBAR1_Y_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PONGBAR1_Y_IRQ_TYPE "NONE"
#define PONGBAR1_Y_NAME "/dev/pongBar1_y"
#define PONGBAR1_Y_RESET_VALUE 0
#define PONGBAR1_Y_SPAN 16
#define PONGBAR1_Y_TYPE "altera_avalon_pio"


/*
 * pongBar2_y configuration
 *
 */

#define ALT_MODULE_CLASS_pongBar2_y altera_avalon_pio
#define PONGBAR2_Y_BASE 0x81070
#define PONGBAR2_Y_BIT_CLEARING_EDGE_REGISTER 0
#define PONGBAR2_Y_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PONGBAR2_Y_CAPTURE 0
#define PONGBAR2_Y_DATA_WIDTH 16
#define PONGBAR2_Y_DO_TEST_BENCH_WIRING 0
#define PONGBAR2_Y_DRIVEN_SIM_VALUE 0
#define PONGBAR2_Y_EDGE_TYPE "NONE"
#define PONGBAR2_Y_FREQ 50000000
#define PONGBAR2_Y_HAS_IN 0
#define PONGBAR2_Y_HAS_OUT 1
#define PONGBAR2_Y_HAS_TRI 0
#define PONGBAR2_Y_IRQ -1
#define PONGBAR2_Y_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PONGBAR2_Y_IRQ_TYPE "NONE"
#define PONGBAR2_Y_NAME "/dev/pongBar2_y"
#define PONGBAR2_Y_RESET_VALUE 0
#define PONGBAR2_Y_SPAN 16
#define PONGBAR2_Y_TYPE "altera_avalon_pio"


/*
 * score_1 configuration
 *
 */

#define ALT_MODULE_CLASS_score_1 altera_avalon_pio
#define SCORE_1_BASE 0x81050
#define SCORE_1_BIT_CLEARING_EDGE_REGISTER 0
#define SCORE_1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SCORE_1_CAPTURE 0
#define SCORE_1_DATA_WIDTH 8
#define SCORE_1_DO_TEST_BENCH_WIRING 0
#define SCORE_1_DRIVEN_SIM_VALUE 0
#define SCORE_1_EDGE_TYPE "NONE"
#define SCORE_1_FREQ 50000000
#define SCORE_1_HAS_IN 0
#define SCORE_1_HAS_OUT 1
#define SCORE_1_HAS_TRI 0
#define SCORE_1_IRQ -1
#define SCORE_1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SCORE_1_IRQ_TYPE "NONE"
#define SCORE_1_NAME "/dev/score_1"
#define SCORE_1_RESET_VALUE 0
#define SCORE_1_SPAN 16
#define SCORE_1_TYPE "altera_avalon_pio"


/*
 * score_2 configuration
 *
 */

#define ALT_MODULE_CLASS_score_2 altera_avalon_pio
#define SCORE_2_BASE 0x81040
#define SCORE_2_BIT_CLEARING_EDGE_REGISTER 0
#define SCORE_2_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SCORE_2_CAPTURE 0
#define SCORE_2_DATA_WIDTH 8
#define SCORE_2_DO_TEST_BENCH_WIRING 0
#define SCORE_2_DRIVEN_SIM_VALUE 0
#define SCORE_2_EDGE_TYPE "NONE"
#define SCORE_2_FREQ 50000000
#define SCORE_2_HAS_IN 0
#define SCORE_2_HAS_OUT 1
#define SCORE_2_HAS_TRI 0
#define SCORE_2_IRQ -1
#define SCORE_2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SCORE_2_IRQ_TYPE "NONE"
#define SCORE_2_NAME "/dev/score_2"
#define SCORE_2_RESET_VALUE 0
#define SCORE_2_SPAN 16
#define SCORE_2_TYPE "altera_avalon_pio"


/*
 * sw configuration
 *
 */

#define ALT_MODULE_CLASS_sw altera_avalon_pio
#define SW_BASE 0x81090
#define SW_BIT_CLEARING_EDGE_REGISTER 0
#define SW_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SW_CAPTURE 1
#define SW_DATA_WIDTH 10
#define SW_DO_TEST_BENCH_WIRING 0
#define SW_DRIVEN_SIM_VALUE 0
#define SW_EDGE_TYPE "ANY"
#define SW_FREQ 100000000
#define SW_HAS_IN 1
#define SW_HAS_OUT 0
#define SW_HAS_TRI 0
#define SW_IRQ 1
#define SW_IRQ_INTERRUPT_CONTROLLER_ID 0
#define SW_IRQ_TYPE "EDGE"
#define SW_NAME "/dev/sw"
#define SW_RESET_VALUE 0
#define SW_SPAN 16
#define SW_TYPE "altera_avalon_pio"


/*
 * sysid_qsys configuration
 *
 */

#define ALT_MODULE_CLASS_sysid_qsys altera_avalon_sysid_qsys
#define SYSID_QSYS_BASE 0x810a8
#define SYSID_QSYS_ID 0
#define SYSID_QSYS_IRQ -1
#define SYSID_QSYS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_QSYS_NAME "/dev/sysid_qsys"
#define SYSID_QSYS_SPAN 8
#define SYSID_QSYS_TIMESTAMP 1579700663
#define SYSID_QSYS_TYPE "altera_avalon_sysid_qsys"


/*
 * tone configuration
 *
 */

#define ALT_MODULE_CLASS_tone altera_avalon_pio
#define TONE_BASE 0x81060
#define TONE_BIT_CLEARING_EDGE_REGISTER 0
#define TONE_BIT_MODIFYING_OUTPUT_REGISTER 0
#define TONE_CAPTURE 0
#define TONE_DATA_WIDTH 2
#define TONE_DO_TEST_BENCH_WIRING 0
#define TONE_DRIVEN_SIM_VALUE 0
#define TONE_EDGE_TYPE "NONE"
#define TONE_FREQ 50000000
#define TONE_HAS_IN 0
#define TONE_HAS_OUT 1
#define TONE_HAS_TRI 0
#define TONE_IRQ -1
#define TONE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define TONE_IRQ_TYPE "NONE"
#define TONE_NAME "/dev/tone"
#define TONE_RESET_VALUE 0
#define TONE_SPAN 16
#define TONE_TYPE "altera_avalon_pio"

#endif /* __SYSTEM_H_ */
