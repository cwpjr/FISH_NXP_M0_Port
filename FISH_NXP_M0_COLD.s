//-----------------------------------FM0_COLD-----------------------------------

 SECTION .text : CODE (2)
 PUBLIC FM0_COLD
#ifdef USE_CMAIN
 PUBLIC RET2c
__iar_program_start
#endif
// No MAIN() entry point!
// :NONAME FM0_COLD ( -- ) Reset Vector entry point. Setup FISH Virtual Machine.
FM0_COLD:

//	Set BOD (Power-up Threshold) register to max values.
//	UM 10398 3.5.26 BOD control register

//	ldr	t, = BODCTRL		// Set power-up threshold to 2.63v
//	ldr	n, = 13h		// 10h = enable reset 3 = 2.63v
//	str	n, [t]

// Initialize RAM

	ldr	n, = 0x11111111	        // fill pattern
	ldr	t, = RAM_START
	ldr	y, = DBAUD  	        // START OF UNINT RAM, @ END OF  CSTACK
_fillRAM:
	str	n, [t]
	adds	t, t, #4
	cmp	t, y
	blo	_fillRAM

// Preserve some uninitialized RAM for system use such as MYBAUD

        ldr	t, = ALL_UNINITRAM_END
	ldr	y, = RAM_END
_fillSTACKS:
	str	n, [t]
	adds	t, t, #4
	cmp	t, y
	blo	_fillSTACKS

#ifdef USE_CMAIN
//	PUSH lr to sp for BYE
	SUB	sp, sp, #4
	MOV	t, lr
	STR	t, [sp]
#endif

	LDR  	p, =PINIT
	LDR  	r, =RINIT
	ADR	i, FM0_WARM
	PUSHi2r
	NEXT

 LTORG

//---------------------------------FM0_WARM-------------------------------------
// :NONAME FM0_WARM ( -- ) Start up FISH interpretation, then outer interpreter.
 SECTION .text : CONST (2)
FM0_WARM:
#ifdef TESTRAM
        DC32    flogRAM
#endif
        DC32	FWARM		        // FISH Init
        DC32	SoCinit		        // SYSCLK, systick, MS
        DC32    UART0_INIT    // TEMP TEST FISH_NXP_M0_81x_IRC12_9600BAUDONLY.s
        DC32	CR
WTEST:  // TEST CODE GOES HERE
//        DC32    ILA
//        DC32    DOTS            // SHOW ANY STACK ARTIFACTS HERE
        // TEST CODE END
	DC32	LIT, 0xFB, EMIT // ANSI ASCII CheckMark
	DC32	LIT, 0xF7, EMIT // ANSI ASCII 2 wavy's
	DC32	COLD	// WARM ABORT THEN QUIT
#ifdef USE_CMAIN
	DC32	RET2c	// shouldnt get here, return to c main and restart
#endif
//------------------------ for meta-single-stepping ----------------------------
//:NONAME ssNEXT ( -- ) System Internal hi level breakpoint.
 SECTION .text : CODE (2)
 ALIGNROM 2,0xFFFFFFFF
ssNEXT1:
	LDM	w!, {x}		// contents of cfa, (pfa), -> x, bump w to cfa+4
	MOV     pc, x		// w preserves cfa+4 (pfa) for DOCOL's benefit

// STI_ON: 7 E000E010h !  STI_OFF: 5 E000E010h !

// If BX not ued here and in SUBR's OR LDR t, 7 vs LDR t, =7 CAUSES:
// Error[Lp002]: relocation failed: value out of range or illegal: 0xfffff457 

// #define required for #if / #ifdef in M0!!!
// DC32 .+5 or 10...
//#define ast
 PUBLIC FM0_SYSTICK_ISR
 SECTION .text : CODE (2)
 ALIGNROM 2,0xFFFFFFFF
FM0_SYSTICK_ISR:
#ifdef ast      // this is asm prim #else is hi level
// Start of the working asm isr-------------------------------------------------
// save what you use
       PUSH    { t, n, lr}
       LDR     n, = STICKER
       LDR     t, [n]
       ADDS    t, t, #1
       STR     t, [n]
// restore what was being used
       POP     { t, n, pc } // exec lr -> pc
// End of the working asm isr---------------------------------------------------
 LTORG

// Cortex MO PUSH and POP is limited r0-r7!!!
//  PUSH  {r0-r5, lr }
//  POP   {r0-r5, pc }
// LABEL FOR HI-LEVEL WORD ISR CREATE WORD!
 SECTION .text : CONST (2)
 ALIGNROM 2,0xFFFFFFFF
ISR_SEMIS:
	DC32	.+5 // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 SECTION .text : CODE (2)
	POPr2i	// SEMIS to balance DOCOL!!!
// needed!        POP     { r0-r5, r10-r12, pc }
        POP   {r0-r5, pc }
#else
// Start of the Hi-Level WORD ISR Test------------------------------------------

// Exceptions show mostly this:
// R12 = BASE
// R11 & R1 (n) = 10000010 b DICTSPACE_START
// R10 & R0 (t) = 00003BC7 Close to LR value in Debugger upon entry!!!

// R6 (r) = 7FFFFFFC Typically
// R7 (s) = 0 Typically

// ST CTR ? ST ? NOT WORD OR NUMBER   ok, go fish in BASE []
// Multiple CR exceptions simular, it stops at      ^^^^^^^ !!!!
// Implicating PFIND and BASE_TO_R12/BASE_FROM_R12  !!!!!!!!!!!!!!!


// The Hi-Level WORD ISR Pre amble.
 SECTION .text : CODE (2)
 ALIGNROM 2,0xFFFFFFFF
DOCOL_ISR:
// needed!        PUSH    { r0-r5, r10-r12, lr }
        PUSH    {r0-r5, lr }
        MOV     r0, r10
        MOV     r1, r11
        MOV     r2, r12
        PUSH    {r0-r2}

        LDR     w, [PC, #0X4] //= MY_LTORG The High Level Target
	NEXT1   // -> SEMIS_ISR RETURN required instead of SEMIS!

// LTORG
// The Hi-Level WORD ISR Post amble.
 SECTION .text : CONST (2)
 ALIGNROM 2,0xFFFFFFFF
        DC32    NONAME_STCTR_INCR
MY_LTORG_ISR_SEMIS:
	DC32	.+5 // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 SECTION .text : CODE (2)
	POPr2i	// SEMIS to balance DOCOL!!!
// needed!        POP     { r0-r5, r10-r12, pc }
        POP     {r0-r2}
        MOV     r10, r0
        MOV     r11, r1
        MOV     r12, r2
        POP     {r0-r5, pc }

// The test Hi-Level target WORD.
 SECTION .text : CONST (2)
 ALIGNROM 2,0xFFFFFFFF
NONAME_STCTR_INCR:
        DC32    DOCOL
        DC32    ONE, STCTR, PSTORE      // Incr STICKER
//        DC32    STCTR, QUES   // Works showing longer execution can be done.
//        DC32    DOTSHEX, CR
        DC32    MY_LTORG_ISR_SEMIS
// End of the Hi-Level WORD ISR Test--------------------------------------------
// NOTE: LTORG manual in this section!
#endif


/*
//:NONAME ILA
 SECTION .text : CONST (2)
 ALIGNROM 2,0xFFFFFFFF
ILA:
	DC32	DOCOL
        DC32    NOOP
//	DC32	ASM_START	// HW ISSUE
//	NOP
//      DC32    ASM_END
	DC32	SEMIS
*/
