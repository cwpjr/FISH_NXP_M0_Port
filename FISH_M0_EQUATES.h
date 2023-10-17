// FISH NXP M0/M1+ VARIANTS FOR THIS SOURCE
// #def are placed in the Assembler Preproccesor Defined Symbols section.
// EQUATES are for REAL VALUES used in FISH assembly code
#ifdef NXP_M0_11xx_XRC10_50MHZ
SYSTEMCLOCK     EQU     50000000        // Use 10mhz XRC for 50mhz
#endif
#ifdef NXP_M0_11xx_IRC12_48MHZ
SYSTEMCLOCK     EQU     48000000        // Use 12mhz IRC for 48mhz
#endif
#ifdef NXP_M0_81x_IRC12_12MHZ
SYSTEMCLOCK     EQU     12000000        // Use 12mhz IRC for 12mhz
#endif
#ifdef NXP_M0_81x_IRC12_24MHZ
SYSTEMCLOCK     EQU     24000000        // Use 12mhz IRC for 24mhz 16E3600h
#endif

//---------------------------------NXP M0/M1+ Flash Equates --------------------------------
// Starting and Last Page cannot equal FLASH_PPAGE - which may be reserved and fault if read
// FLASH_UPAGE1 = 0 = NO FLASH AVAILABLE

// This section for NXP M0 1115 64k Flash parts
#ifdef NXP_M0_064kFlash_4KWrite
FLASH_WR_SIZE   EQU     0x1000          // Smallest writeable page size
FLASH_SPAGE     EQU     0x4000          // Start of Free Flash Page(s)
FLASH_LPAGE     EQU     0xF000          // Last Page for user FLASH storage
// FOR LOOP CONTROL AND BOUNDS CHECKING
FLASH_PPAGE     EQU     0x10000         // Past Last Page
#endif  // NXP_M0_064kFlash_4KWrite

// This section for NXP M0 1114 32k Flash parts
#ifdef NXP_M0_032kFlash_4KWrite
FLASH_WR_SIZE   EQU     0x1000          // Smallest writeable page size
FLASH_SPAGE     EQU     0x4000          // Start of Free Flash Page(s)
FLASH_LPAGE     EQU     0x7000          // Last Page for user FLASH storage
// FOR LOOP CONTROL AND BOUNDS CHECKING
FLASH_PPAGE     EQU     0x8000          // Past Last Page
#endif  // NXP_M0_032kFlash_4KWrite

// This section for NXP M1 812 16k Flash parts
#ifdef NXP_M0_016kFlash_1KWrite
FLASH_WR_SIZE   EQU     0x0400          // Smallest writeable page size
#ifndef SRM
FLASH_SPAGE     EQU     0x3C00          // 1K FREE
#else
FLASH_SPAGE     EQU     0x3800          // 2K FREE
//FLASH_SPAGE     EQU     0x3400          // 3K FREE
//FLASH_SPAGE     EQU     0x3000          // 4K FREE
#endif  // SRM
FLASH_LPAGE     EQU     0x3C00          // Last Page for user FLASH storage
// FOR LOOP CONTROL AND BOUNDS CHECKING
FLASH_PPAGE     EQU     0x4000          // Past Last Page
#endif  // NXP_M0_016kFlash_1KWrite

// Various RAM sizes set here
// This is universal in NXP, Cortex M0/M1+'s !?!
RAM_START	EQU	0x10000000

#ifdef NXP_M0_004kRam
RAM_END		EQU	0x10001000	// LPC1114FD/102 32k/4k STP ATEAM BOARD
#endif
#ifdef NXP_M0_008kRam			// STP NXP 32k/8k, 64k/8k and LPCxpresso Boards:
RAM_END         EQU	0x10002000	// LPC1114/301/302 (0M11049) & LPC1115 (OM13035)
#endif

DEFAULT_BAUD    EQU     9600            // 9600 until UART0_INIT USED
DEFAULT_BASE    EQU     10              // BASE at powerup
XON_CHAR        EQU     17              // ASCII DECIMAL XON_CHAR
XOFF_CHAR       EQU     19              // ASCII DECIMAL XOFF_CHAR
IOBUFSIZE       EQU     96              // For Tib and Pad
MAXWORDLEN	EQU     31              // magic!!! for ID. <<<<<<<<<<<<<<<<<<<<

// RESERVE SPACE FOR IAP PROGRAMMING execution and STACK:
/* UM10398 LPC111x/LPC11Cxx User manual
26.4.7 Interrupts during IAP
The on-chip flash memory is not accessible during erase/write operations. When the user 
application code starts executing the interrupt vectors from the user flash area are active. 
Before making any IAP call, either disable the interrupts or ensure that the user interrupt 
vectors are active in RAM and that the interrupt handlers reside in RAM. The IAP code 
does not use or disable interrupts.
26.4.8 RAM used by ISP command handler
ISP commands use on-chip RAM from 0x1000 017C to 0x1000 025B. The user could use 
this area, but the contents may be lost upon reset. Flash programming commands use the 
top 32 bytes of on-chip RAM. The stack is located at (RAM top - 32). The maximum stack 
usage is 256 bytes and it grows downwards.
26.4.9 RAM used by IAP command handler
Flash programming commands use the top 32bytes of on-chip RAM. The maximum stack 
usage in the user allocated stack space is 128 bytes and it grows downwards.
*/

// So (RAM top - 32) + 256 byte stack needs to be provided!
// By section IAP-ISP_Reserved in memap and .icf (The 32 bytes)
// - Verify SP? (is it sp or cstack?) has 256 bytes available

// IAR PROJECT->LINKER->COMFIG->EDIT->MEMORY REGIONS->RAM->END<<<<<<<<<<<<<<<<<<
// RESERVE SPACE FOR CSTACK
// IAR PROJECT->LINKER->COMFIG->EDIT->STACK/HEAP SIZES<<<<<<<<<<<<<<<<<<<<<<<<<<
// FISH SETS THESE VALUES TO 0x40
IAPCALL         EQU     0x1FFF1FF1      // Call Address of IAP routine
/*
#ifdef NXP_M0_004kRam
BOTTOM_IAPSTACK	EQU	0x10000FE0      // 0x10000FE0 VALUES SET BY FISH
TOP_IAPSTACK    EQU     BOTTOM_IAPSTACK+32
#endif
#ifdef NXP_M0_008kRam
BOTTOM_IAPSTACK	EQU	0x10001FE0      // 0x10000FE0 VALUES SET BY FISH
TOP_IAPSTACK    EQU     BOTTOM_IAPSTACK+32
#endif
*/
STACKSIZE       EQU     32*4            // SHOOULD BE GOOD - 120 BYTES 0x78

//------------------------------------------------------------------------------
// RESERVE SPACE AFTER .bss FOR FISH STACKS, AND UNINITIALIZED RAM

PINIT	EQU	(RAM_END-16)           // FISH PARAMETER STACK in register p
RINIT	EQU	(PINIT - STACKSIZE)	// FISH RETURN STACK in register r
BOTTOM_RSTACK   EQU     (RINIT - STACKSIZE)	// FISH END OF RETURN STACK ADDR

// Uninitialized RAM is between CSTACK$$Limit and RINIT-(size)
// RECALCULATE IF ANY NEW _SV'S ADDED OR STACKSIZE CHANGED<<<<<<<<<<<<<<<<<<<<<<
// CSTACK AND HEAP IF ALLOCATED FOLLOWS .bss ( FOLLOWING FROM SYM FILE )

// 10000c78 B CSTACK$$Limit
// 10000c80 a UNINITRAMBASE
// 10000edc a UNINITRAMEND 592 BYTES
// 10000ee0 a BOTTOM_RSTACK
#ifdef NXP_M0_004kRam
ALL_UNINITRAM_START     EQU     0x10000D40      // ROUND UP CSTACK$$Limit
// USED FOR SAVING BAUDRATE BETWEEN RESETS AND HARD FAULT RESETS
#define DBAUD	ALL_UNINITRAM_START	// .bss zeroing out one word past WARNING
#define UBAUD	ALL_UNINITRAM_START+4
// Define space for user use of this resource - After DBAUD and UBAUD so far!
ALL_UNINITRAM_FREE_START        EQU     ALL_UNINITRAM_START+8
ALL_UNINITRAM_END               EQU     BOTTOM_RSTACK-4         // UNINT TO HERE
#endif  // NXP_M0_004kRam

#ifdef NXP_M0_008kRam
ALL_UNINITRAM_START     EQU     0x10001300     // ROUND UP CSTACK$$Limit
// USED FOR SAVING BAUDRATE BETWEEN RESETS AND HARD FAULT RESETS
#define DBAUD	ALL_UNINITRAM_START	// .bss zeroing out one word past WARNING
#define UBAUD	ALL_UNINITRAM_START+4
// Define space for user use of this resource - After DBAUD and UBAUD so far!
ALL_UNINITRAM_FREE_START        EQU     ALL_UNINITRAM_START+8
ALL_UNINITRAM_END               EQU     BOTTOM_RSTACK-4         // UNINT TO HERE
#endif  // NXP_M0_008kRam

DBAUDADDR       EQU     DBAUD
UBAUDADDR       EQU     UBAUD
