// FISH_NXP_M0_SYSTEM.s
//------------------------------------------------------------------------------
// FISH FORTH for the NXP ARM Cortex M0 series SystemsOnaChip (SoC).
// Tested: NXP UM11049 board and NXP LPC1114FD/102 chip with 32kFlash and 4kRam.
//      RESERVE SPACE FOR FISH SYSTEM VARS AND BUFFERS IN .bss

   SECTION FISH_Ram_MemMap : DATA (2)
// RAM_START and RAM_END defined in FISH_M0_EQUATES.H
SYSCLOCK        DS32    1               // MUST BE SET AT STARTUP = FULL MHZ #
FPA:            DS32    1               // FPADDR 0 = NO FLASH AVAILABLE
FPC:            DS32    1               // FPCURR
FPSV:           DS32    1               // FP System VAR
// The above 4 words are the SIGNATURE for saved code in a flash pages.
// The FISH Dictionary starts 0x10 bytes after RBASE (RAMstart)

DICTSPACE_START:
#ifdef NXP_M0_004kRam
ORIG:           DS8     2600		// Dictionary at beginning of RAM
DICTSPACE_END:                          // For DICTSPACE calculation
#endif
#ifdef NXP_M0_008kRam
ORIG:           DS8     4000		// Dictionary at beginning of RAM
DICTSPACE_END:                          // For DICTSPACE calculation
#endif

PAD:		DS8	IOBUFSIZE	// +4 to protect following VAR's
TIB:		DS8	IOBUFSIZE       // +4 to protect following VAR's
STICKER:        DS32    1               // SYSTICK INTERRUPT ACCUMULATOR

RAMVARSPACE_START:
RAMVARSPACE:    DS8     24*4            // VAR's are in RAM
                        // For VARSPACE calculation
 ALIGNRAM 2
// REARRANGE LATER FOR TASKING AND SIZE BASED OFFSETS!!
// ZERO
END_RAMVARSPACE_SV_START:
// BYTE VALUES
NBASE:          DS32    1       // BASE_SV for number conversion
IN:             DS32    1       // IN_SV Offset into tib
OUT:            DS32    1       // OUT_SV Offset into pad
CSTATE:         DS32    1       // STATE_SV Compile STATE
// ADDRESS VALUES
INITSO:         DS32    1       // INITS0_SV Parameter Stack Addr
INITRO:         DS32    1       // INITR0_SV Return Stack Addr
INITTIB:        DS32    1       // TIB_SV TIB Addr
UP:             DS32    1       // UP_SV See VARALLOT
DP:         	DS32    1	// DP_SV IS See LATEST, COMMA, ALLOT AND CALLOT
CSDP            DS32    1       // Create saves DP here to restore if errors 
FENCE:      	DS32    1       // FENCE_SV See FORGET
CURRENT:        DS32    1       // CURRENT_SV See LATEST
PROMPT:         DS32    1       // Init in FWARM TO msg_MY_OK, $ OR 0 (QUIT)!
ERROR_HALT:	DS32	1	// Init in FWARM - ERROR, ABORT and COLD
// THESE ARE INITIALIZED WHEN USED AT RUN-TIME
CSP:            DS32    1       // CSP_SV SCSP saves stack pos here
NDPL:           DS32    1       // DPL_SV for number conversion
NHLD:           DS32    1       // HLD_SV for number conversion
// BUFFERS
// 0x1FFF1FF1      // Call Address of IAP routine
FLASHCMD:	DS32    4*5	// IAP Command Slot + 4 words of arguments
FLASHRET:	DS32    4*4     // IAP Results Slot + 3 words of arguments
I2CCMD:         DS32    1       // 
I2CROLE:        DS32    1       // 
I2CSTATE:       DS32    1       // 
I2CBUFFER:      DS8     12      //
SV_END:
// BE CAREFUL: Uninitialized RAM is between CSTACK$$Limit and END_RAMVARSPACE-4

