//------------------------------------------------------------------------------
// This include begins the .sym file
$FISH_AUTHOR.h
// This include is for generic IAR stuff
$FISH_IAR.h
//------------------------------------------------------------------------------
// Include FISH SYSTEM, REGISTERS, STACK MACRO's and MESSAGES
$io_NXP_M0+_header.h // from Vic AND MODIFIED FOR 812
// IAR C:\Program Files\IAR Systems\Embedded Workbench 7.1\arm\inc\NXP
//------------------------------------------------------------------------------
$FISH_ARM_CORTEX_M_REGS.h
$FISH_NXP_M0_MACROS.h
//------------------------------------------------------------------------------
// #defines for XON, -1 TRUE, IO2TP, etc.
// COPY OF Assembler Preproccesor Defined Symbols for each configuration
$FISH_RM_CONFIG_#DEFINES.h
//------------------------------------------------------------------------------
// NXP M0 FLASH, RAM, CLOCK Configurations:
// Placed in each configurations ( Debug, etc )'s
$FISH_M0_EQUATES.h // #defines of FISH_M0_CONFIG_DEFINES.s
//$FISH_M0_MEMMAP.s  // SYSTEM AND USER MEMORY MAPPING
//------------------------------------------------------------------------------
// Place (select?) :NONAME's before dynamic content to make CFA addresses static.
$FISH_NXP_M0_SLIB.s
// Main Include
$FISH_NXP_M0_COLD.s     // NVIC startup, PreRun Test, FISH BOOT and ISR code.
$FISH_NXP_M0_MEMMAP.s   // The FISH System Ram Definitions
