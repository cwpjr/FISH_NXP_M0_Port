/**************************************************
 *
 * This file contains an interrupt vector for Cortex-M written in C.
 * The actual interrupt functions must be provided by the application developer.
 *
 * Copyright 2007 IAR Systems. All rights reserved.
 *
 * $Revision: 66254 $
 *
 **************************************************/
#include "LPC11xx.h"    // $PROG_DIR version
//#include <LPC11xx.h>  // $TOOL_DIR version
//#include <core_cm0.h> // NVIC_SystemReset()
#include "core_cm0.h"   // $PROG_DIR version
#pragma language=extended
#pragma segment="CSTACK"

extern void __iar_program_start( void );

extern void NMI_Handler( void );
extern void HardFault_Handler( void );
extern void MemManage_Handler( void );
extern void BusFault_Handler( void );
extern void UsageFault_Handler( void );
extern void SVC_Handler( void );
extern void DebugMon_Handler( void );
extern void PendSV_Handler( void );
extern void SysTick_Handler( void );
// FISH_NXP_M0_SYSTEM.s
extern void FM0_COLD( void );
extern void FM0_SYSTICK_ISR ( void );

typedef void( *intfunc )( void );
typedef union { intfunc __fun; void * __ptr; } intvec_elem;

// The vector table is normally located at address 0.
// When debugging in RAM, it can be located in RAM, aligned to at least 2^6.
// If you need to define interrupt service routines,
// make a copy of this file and include it in your project.
// The name "__vector_table" has special meaning for C-SPY, which
// is where to find the SP start value.
// If vector table is not located at address 0, the user has to initialize
// the  NVIC vector table register (VTOR) before using interrupts.

#pragma location = ".intvec"
const intvec_elem __vector_table[] =
{
  { .__ptr = __sfe( "CSTACK" ) },
  //__iar_program_start,
  FM0_COLD,

  NMI_Handler,
  HardFault_Handler,
  MemManage_Handler,
  BusFault_Handler,
  UsageFault_Handler,
  0,
  0,
  0,
  0,
  SVC_Handler,
  DebugMon_Handler,
  0,
  PendSV_Handler,
  SysTick_Handler       // FM0_SYSTICK_ISR       // SysTick_Handler
};

#pragma call_graph_root = "interrupt"
__weak void NMI_Handler( void ) { while (1) {} }
#pragma call_graph_root = "interrupt"
//__weak void HardFault_Handler( void ) { while (1) {} }
__weak void HardFault_Handler( void ) { NVIC_SystemReset(); }
#pragma call_graph_root = "interrupt"
__weak void MemManage_Handler( void ) { while (1) {} }
#pragma call_graph_root = "interrupt"
__weak void BusFault_Handler( void ) { while (1) {} }
#pragma call_graph_root = "interrupt"
__weak void UsageFault_Handler( void ) { while (1) {} }
#pragma call_graph_root = "interrupt"
__weak void SVC_Handler( void ) { while (1) {} }
#pragma call_graph_root = "interrupt"
__weak void DebugMon_Handler( void ) { while (1) {} }
#pragma call_graph_root = "interrupt"
__weak void PendSV_Handler( void ) { while (1) {} }
#pragma call_graph_root = "interrupt"
__weak void SysTick_Handler( void )  { FM0_SYSTICK_ISR(); /* while (0) {} */ }
/* At this level STCTR t and n not usable...
#define t       r0      //                          AX
#define n	r1      // v4th
__weak void SysTick_Handler( void )  { asm ("\n"
// save what you use
        " PUSH    { t, n } \n"
        " LDR     n, = STICKER \n"
        " LDR     t, [n] \n"
        " ADDS    t, #1 \n"
        " STR     t, [n] \n"
// restore what was being used
        " POP   { n, t } \n"
        " BX      lr \n"
); }
*/
void __cmain( void );
__weak void __iar_init_core( void );
__weak void __iar_init_vfp( void );

#pragma required=__vector_table
void __iar_program_start( void )
{
#ifdef USE_CMAIN
  __iar_init_core();
  __iar_init_vfp();
  __cmain();
#endif
}
