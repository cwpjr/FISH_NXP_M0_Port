
//ss	SET	1	// "single-step" switch for debug/shakedown testing
//#define ss

//------------------------------------------------------------------------------
//	Inner Interpreter Macros
//	Beauty is you can put any ISA in a macro and no prob till referenced!

// IF	ss
#ifdef ss
NEXT1	MACRO	
	LDR	x, =ssNEXT1	// meta-single-step for debugging
	BX	x
	ENDM
// LTORG

// ELSE
#else
NEXT1	MACRO	
	LDM	w!, {x}		// contents of cfa, (pfa), -> x, bump w to cfa+4
	BLX	x		// w preserves cfa+4 (pfa) for DOCOL's benefit
	ENDM
#endif
// ENDIF

NEXT	MACRO	
	LDM	i!, {w}	// get cfa addr to w, incr i after
	NEXT1
	ENDM

TPUSH	MACRO	
	PUSHt	// push t to p, pre decrement p
	NEXT
	ENDM

DPUSH	MACRO	
	PUSHw	// push w to p, pre decrement p
	TPUSH
	ENDM

//------------------------------------------------------------------------------
//      FISH STACK MACRO's
//	Beauty is you can put any ISA in a macro and no prob till referenced!
// 	Cortex M0 THUMB only does STMia and LDMia
//	I (rstack value to pstack) expects POP to be post increment
//	Meaning that TOS is = to current p or r
//	Therefore PUSH is pre decrement

PUSHt	MACRO
	SUBS	p, p, #4	// push t to p, pre decrement p
	STR	t, [p]
	ENDM

POP2t	MACRO
#ifndef TOSCT
	LDR	t, [p]		// pop tos to t, post increment p
#endif
        ADDS	p, p, #4
	ENDM

NDPOP2t MACRO           	// macro = copy tos to t, leave it on the stack
	LDR	t, [p]
        ENDM

PUSHn	MACRO
	SUBS	p, p, #4	// push n to p, pre decrement p
	STR	n, [p]
	ENDM

POP2n	MACRO
	LDR	n, [p]
	ADDS	p, p, #4
	ENDM

PUSHw	MACRO
	SUBS	p, p, #4	//  push w to p, pre decrement p
	STR	w, [p]
	ENDM

POP2w	MACRO
	LDR	w, [p]
	ADDS	p, p, #4
	ENDM

NDPOP2w MACRO           	// macro = copy tos to w, leave it on the stack
	LDR	w, [p]
        ENDM

PUSHx	MACRO
	SUBS	p, p, #4	//  push x to p, pre decrement p
	STR	x, [p]
	ENDM

POP2x	MACRO
	LDR	x, [p]
	ADDS	p, p, #4
	ENDM

NDPOP2x MACRO           	// macro = copy tos to w, leave it on the stack
	LDR	x, [p]
        ENDM

PUSHi	MACRO
	SUBS	p, p, #4	// push i to p, pore increment p
	STR	i, [p]
	ENDM

POP2i	MACRO
	LDR	i, [p]
	ADDS	p, p, #4
	ENDM

PUSHt2r	MACRO
	SUBS	r, r, #4	//  push t to r, pre decrement r
	STR	t, [r]
	ENDM

PUSHi2r	MACRO
	SUBS	r, r, #4	//  push i to r, pre decrement r
	STR	i, [r]
	ENDM

POPr2i	MACRO
	LDR i, [r]		//  pop r to i, post increment r
	ADDS	r, r, #4
	ENDM

//POP2p	MACRO
//	ENDM
//POP2PC	MACRO 
//	ENDM

POPr2t	MACRO 
	LDR	t, [r]
	ADDS	r, r, #4
	ENDM

PUSHn2r	MACRO
	SUBS	r, r, #4	//  push t to r, pre decrement r
	STR	n, [r]
	ENDM

PUSHw2r	MACRO
	SUBS	r, r, #4	//  push w to r, pre decrement r
	STR	w, [r]
	ENDM

LIT2t	MACRO
	// as in xeq token at ToS setup for lit
 	LDM	i!, {t}	// fetch memory p points to into {t}, inc i
	ENDM

POPp2w	MACRO
	// as in xeq token at ToS setup for exec
 	LDM	p!, {w}	// fetch memory p points to into {w}, inc p
	ENDM

