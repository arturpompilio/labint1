/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'Processador' in SOPC Builder design 'SistemaEmbarcadoSubtrator'
 * SOPC Builder design path: ../../SistemaEmbarcadoSubtrator.sopcinfo
 *
 * Generated: Mon Jun 27 14:09:09 BRT 2022
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
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x14
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x00020020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x14
#define ALT_CPU_NAME "Processador"
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x00020000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00080820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x14
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x00020020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x14
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x00020000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_NIOS2_GEN2
#define __MEDIDORDESEMPENHO


/*
 * MedidorDesempenho_Escrita configuration
 *
 */

#define ALT_MODULE_CLASS_MedidorDesempenho_Escrita MedidorDesempenho
#define MEDIDORDESEMPENHO_ESCRITA_BASE 0x8100c
#define MEDIDORDESEMPENHO_ESCRITA_IRQ -1
#define MEDIDORDESEMPENHO_ESCRITA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MEDIDORDESEMPENHO_ESCRITA_NAME "/dev/MedidorDesempenho_Escrita"
#define MEDIDORDESEMPENHO_ESCRITA_SPAN 4
#define MEDIDORDESEMPENHO_ESCRITA_TYPE "MedidorDesempenho"


/*
 * MedidorDesempenho_Leitura configuration
 *
 */

#define ALT_MODULE_CLASS_MedidorDesempenho_Leitura MedidorDesempenho
#define MEDIDORDESEMPENHO_LEITURA_BASE 0x81008
#define MEDIDORDESEMPENHO_LEITURA_IRQ -1
#define MEDIDORDESEMPENHO_LEITURA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MEDIDORDESEMPENHO_LEITURA_NAME "/dev/MedidorDesempenho_Leitura"
#define MEDIDORDESEMPENHO_LEITURA_SPAN 4
#define MEDIDORDESEMPENHO_LEITURA_TYPE "MedidorDesempenho"


/*
 * MemoriaImagem1 configuration
 *
 */

#define ALT_MODULE_CLASS_MemoriaImagem1 altera_avalon_onchip_memory2
#define MEMORIAIMAGEM1_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 1
#define MEMORIAIMAGEM1_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define MEMORIAIMAGEM1_BASE 0x60000
#define MEMORIAIMAGEM1_CONTENTS_INFO ""
#define MEMORIAIMAGEM1_DUAL_PORT 0
#define MEMORIAIMAGEM1_GUI_RAM_BLOCK_TYPE "AUTO"
#define MEMORIAIMAGEM1_INIT_CONTENTS_FILE "imagem1"
#define MEMORIAIMAGEM1_INIT_MEM_CONTENT 1
#define MEMORIAIMAGEM1_INSTANCE_ID "IMG1"
#define MEMORIAIMAGEM1_IRQ -1
#define MEMORIAIMAGEM1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MEMORIAIMAGEM1_NAME "/dev/MemoriaImagem1"
#define MEMORIAIMAGEM1_NON_DEFAULT_INIT_FILE_ENABLED 1
#define MEMORIAIMAGEM1_RAM_BLOCK_TYPE "AUTO"
#define MEMORIAIMAGEM1_READ_DURING_WRITE_MODE "DONT_CARE"
#define MEMORIAIMAGEM1_SINGLE_CLOCK_OP 0
#define MEMORIAIMAGEM1_SIZE_MULTIPLE 1
#define MEMORIAIMAGEM1_SIZE_VALUE 81920
#define MEMORIAIMAGEM1_SPAN 81920
#define MEMORIAIMAGEM1_TYPE "altera_avalon_onchip_memory2"
#define MEMORIAIMAGEM1_WRITABLE 0


/*
 * MemoriaImagem2 configuration
 *
 */

#define ALT_MODULE_CLASS_MemoriaImagem2 altera_avalon_onchip_memory2
#define MEMORIAIMAGEM2_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 1
#define MEMORIAIMAGEM2_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define MEMORIAIMAGEM2_BASE 0x40000
#define MEMORIAIMAGEM2_CONTENTS_INFO ""
#define MEMORIAIMAGEM2_DUAL_PORT 0
#define MEMORIAIMAGEM2_GUI_RAM_BLOCK_TYPE "AUTO"
#define MEMORIAIMAGEM2_INIT_CONTENTS_FILE "imagem2"
#define MEMORIAIMAGEM2_INIT_MEM_CONTENT 1
#define MEMORIAIMAGEM2_INSTANCE_ID "IMG2"
#define MEMORIAIMAGEM2_IRQ -1
#define MEMORIAIMAGEM2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MEMORIAIMAGEM2_NAME "/dev/MemoriaImagem2"
#define MEMORIAIMAGEM2_NON_DEFAULT_INIT_FILE_ENABLED 1
#define MEMORIAIMAGEM2_RAM_BLOCK_TYPE "AUTO"
#define MEMORIAIMAGEM2_READ_DURING_WRITE_MODE "DONT_CARE"
#define MEMORIAIMAGEM2_SINGLE_CLOCK_OP 0
#define MEMORIAIMAGEM2_SIZE_MULTIPLE 1
#define MEMORIAIMAGEM2_SIZE_VALUE 81920
#define MEMORIAIMAGEM2_SPAN 81920
#define MEMORIAIMAGEM2_TYPE "altera_avalon_onchip_memory2"
#define MEMORIAIMAGEM2_WRITABLE 0


/*
 * MemoriaPrograma configuration
 *
 */

#define ALT_MODULE_CLASS_MemoriaPrograma altera_avalon_onchip_memory2
#define MEMORIAPROGRAMA_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define MEMORIAPROGRAMA_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define MEMORIAPROGRAMA_BASE 0x20000
#define MEMORIAPROGRAMA_CONTENTS_INFO ""
#define MEMORIAPROGRAMA_DUAL_PORT 0
#define MEMORIAPROGRAMA_GUI_RAM_BLOCK_TYPE "AUTO"
#define MEMORIAPROGRAMA_INIT_CONTENTS_FILE "SistemaEmbarcadoSubtrator_MemoriaPrograma"
#define MEMORIAPROGRAMA_INIT_MEM_CONTENT 1
#define MEMORIAPROGRAMA_INSTANCE_ID "NONE"
#define MEMORIAPROGRAMA_IRQ -1
#define MEMORIAPROGRAMA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MEMORIAPROGRAMA_NAME "/dev/MemoriaPrograma"
#define MEMORIAPROGRAMA_NON_DEFAULT_INIT_FILE_ENABLED 0
#define MEMORIAPROGRAMA_RAM_BLOCK_TYPE "AUTO"
#define MEMORIAPROGRAMA_READ_DURING_WRITE_MODE "DONT_CARE"
#define MEMORIAPROGRAMA_SINGLE_CLOCK_OP 0
#define MEMORIAPROGRAMA_SIZE_MULTIPLE 1
#define MEMORIAPROGRAMA_SIZE_VALUE 131072
#define MEMORIAPROGRAMA_SPAN 131072
#define MEMORIAPROGRAMA_TYPE "altera_avalon_onchip_memory2"
#define MEMORIAPROGRAMA_WRITABLE 1


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone IV E"
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
#define ALT_STDERR_BASE 0x81000
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x81000
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x81000
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "SistemaEmbarcadoSubtrator"


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x81000
#define JTAG_UART_IRQ 9
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8

#endif /* __SYSTEM_H_ */
