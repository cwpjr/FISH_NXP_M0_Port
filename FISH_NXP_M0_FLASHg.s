// FISH_NXP_FLASH.s
// FLASH_SAVE, FLASH_FORGET, FLASH_SCAN and support :NONAME's 

//	FLASH_SAVE FLASH_SAVE:	( -- ) Save RAM to Flash

 SECTION .text : CONST (2)
FLASH_SAVE_NFA:
	DC8	0x80+10
	DC8	'FLASH_SAV'
	DC8	'E'+0x80
 ALIGNROM 2,0xFFFFFFFF
//#ifdef SRM
//	DC32	WC_UARTx_NFA
//#else
        DC32    WC_IRQ_NFA
//#endif
FLASH_SAVE:
	DC32	DOCOL   // LAST FPA WILL BE LESS THAN FPC
// SOMETHING TO SAVE TEST - IF LATEST IS NOT IN ROM
	DC32	LATEST, DBASE, LESSTHAN
	DC32	ZBRAN
        DC32     FLPT-.

        DC32    CR
        DC32    PDOTQ
        DC8     15D
        DC8     'NOTHING TO SAVE'
 ALIGNROM 2,0xFFFFFFFF
	DC32	SEMIS

// SAVE PAGE IF 
FLPT:
// LAST PAGE USED TEST - PPAGE = PAST PAGE
        DC32    FPADDR, AT
        DC32    LIT, FLASH_PPAGE
        DC32    EQUAL
// DC32 NOOP
        DC32    ZBRAN           // then save it
        DC32     FSAVE-.
        
FSLASTPAGE:
        DC32    CR
        DC32    PDOTQ
        DC8     20D
        DC8     'LAST FLASH PAGE USED'
 ALIGNROM 2,0xFFFFFFFF
        DC32    SEMIS

// Setup for saving - Assumes no error in relocation
// Based on relocating UP and Latest to FPVAR and FPCURR
FSAVE:
// FPA SHOULD BE SET BY FLASH_SCAN IN WARM OR BY FISH OR FISH_ONLY
// FPCURR AND FPVAR SAVE
	DC32	UP_SV, AT, FPVAR, STORE
	DC32	LATEST, TOFA, FPCURR, STORE

// KEEP RELOCATING ONE WORD AT A TIME UNTIL RECHING FIRST WORD (DBASE)
FS_BEGIN:
	DC32	LATEST, DBASE, EQUAL
        DC32	ZBRAN
        DC32     FS_RWORD-.

// AFTER LAST WORD RELOCATED
FS_WRITE:
	DC32	FLASHWRITE                      // Write page
	DC32	DBASE, DP_SV, STORE             // Reset DP
	DC32	FPVAR, AT, UP_SV, STORE         // and UP
	DC32	FPCURR, AT, CURRENT_SV, STORE   // and CURRENT to nothing in RAM

// UPDATE FPADDR - WILL BE FLASH_PPAGE WHEN ALL PAGES USED
	DC32	LIT, FLASH_WR_SIZE, FPADDR, PSTORE

// FLASH_SAVE Finish
FS_EXIT:
        DC32    FLASH_SCAN      // Show Save done via Flash Page status
#ifndef SRM
        DC32    CR, DOTVARSPACE, DOTDICTSPACE
#endif
	DC32	SEMIS

FS_RWORD:
	DC32	LATEST, RWORD   // Relocate this word, unlink it
	DC32	BRAN            // Repeat until LATEST = DBASE
        DC32     FS_BEGIN-.


//:NONAME	FPADDR:	( -- addr ) Flash Page Addreess to operate on.
 SECTION .text : CONST (2)
FPADDR:
	DC32	DOCON, FPA


//:NONAME	FPCURR:	( -- addr ) Flash Page CURRENT is NFA of last word saved in Flash.
 SECTION .text : CONST (2)
FPCURR:
	DC32	DOCON, FPC


//:NONAME	FPVAR:	( -- addr ) Flash Page VAR is UP value when Flash page saved.
 SECTION .text : CONST (2)
FPVAR:
	DC32	DOCON, FPSV

//:NONAME >FA >FA:	( addr -- raddr ) Relocate address relative to FPADDR.
//	Convert address to raddr using FPADDR, which must be initialized.
 SECTION .text : CONST (2)
TOFA:
	DC32	.+5
 SECTION .text : CODE (2)
	POP2t
	LDR	w, = 0x0FFF
	ANDS	t, t, w
	LDR	w, = FPA
	LDR	w, [w]
        ADDS    t, t, w 
	TPUSH
 LTORG	 //Always outside of code, else data in words


//:NONAME RWORD:	( nfa -- ) Relocate this word relative to FPADDR
//	Relocate word specified by it's NFA to FPADDR relative addresses
//	Handle case of CON/VAR, CREATE_DOES_GOTO, PDOTQ and LIT by not relocating them.
//      RLIT's WILL BE RELOCATED - LIT's WILL NOT.
 SECTION .text : CONST (2)
RWORD:
	DC32	DOCOL
	DC32	PFA, DUP, TOR	// SAVE FOR RELOCATING LFA
	DC32	CFA             // REAL CFA OF THSI WORD

CFA_CREATE_DOES_GOTO:
        DC32	DUP, AT
        DC32    LIT, CREATE_DOES_GOTO
        DC32    EQUAL
        DC32	ZBRAN           // IF NOT CREATE_DOES_GOTO
        DC32     RW_DOCONVAR-.	// PROCESS WORD UNTIL SEMIS

        DC32    FOURP, DUP, DUP // INCR TO ADDR
        DC32    AT, TOFA        // TO RELOCATE
        DC32    SWAP, STORE     // AND 
	DC32	BRAN            // THEN
        DC32     RW_UNTIL-.     // DONE SO GO FIX LFA

RW_DOCONVAR:
// CHECK FOR DOCON AND DOVAR
        DC32    DUP, AT
	DC32	LIT, DOCON
	DC32	EQUAL

        DC32    OVER, AT        // COPY CFA AGAIN
	DC32	LIT, DOVAR
	DC32	EQUAL
        
        DC32    OR              // DOCON OR DOVAR
        DC32	ZBRAN           // IF NOT DOCON OR DOVAR
        DC32     RW_BEGIN-.	// PROCESS WORD UNTIL SEMIS
// IS DOCON OR DOVAR
	DC32	DROP            // CFA
	DC32	BRAN
        DC32     RW_LFA-.	// THIS WORD DONE - FIX LFA

// CFA -- BECOMES EACH WORD IN BODY OF THIS DEFINITION
RW_BEGIN:
	DC32	FOURP, DUP, AT	// Next WORD in body to evaluate
// RLIT's WILL BE RELOCATED - LIT's WILL NOT
CFA_LIT:
	DC32	LIT, LIT, EQUAL
	DC32	ZBRAN           // IF NOT LITERAL
        DC32     CFA_PDOTQ-.    // CHECK FOR PDOTQ
// IS LITERAL SO SKIP TO NEXT WORD IN THIS DEFINITION
	DC32	FOURP           
	DC32	BRAN
        DC32     RW_BEGIN-.

CFA_PDOTQ:
	DC32	DUP, AT
	DC32	LIT, PDOTQ, EQUAL
	DC32	ZBRAN           // IF NOT PDOTQ
        DC32     CFA_SEMIS-.    // LOOK FOR SEMIS
// PDOTQ SO BYPASS TEXT AND LOOK FOR NEXT WORD IN THIS DEFINITION
	DC32	DUP, FOURP, CAT
	DC32	PLUS
	DC32	ALIGNED
	DC32	BRAN
        DC32     RW_BEGIN-.

CFA_SEMIS:
	DC32	DUP, AT         // USE THIS AS UNTIL FLAG TO FINISH
	DC32	LIT, SEMIS, EQUAL
	DC32	ZEQU, ZBRAN     // IF AT SEMIS
        DC32     RW_UNTIL-.     // DONE SO GO FIX LFA

RELOC_THIS_WORD:
// NOT AT SEMIS - IS THIS A ADDRESS TO RELOCATE?
	DC32	DUP, AT         // IF THIS IS NOT IN RAM
	DC32	DBASE, GREATERTHAN
	DC32	ZBRAN           // THEN CHECK NEXT WORD IN THIS DEFINITION
        DC32     RW_BEGIN-.
// THIS IS A RAM ADDRESS THAT NEEDS TO BE RELOCATED TO A FLASH ADDRESS
	DC32	DUP, DUP, AT    // PICKUP RAM ADDRESS
	DC32	TOFA            // RELOCATE THIS ADDRESS TO A FLASH ADDRESS
        DC32    SWAP, STORE     // PUT IT BACK
	DC32	BRAN
        DC32     RW_BEGIN-.	// THEN CHECK NEXT WORD IN THIS DEFINITION

RW_UNTIL:
// ADDRESS OF SEMI OR LAST WORD IN THIS DEFINITION
	DC32	DROP            // COME FROM SEMIS MATCH
RW_LFA:	// RELOCATE LFA AND SET CURRENT/LATEST TO Next WORD
	DC32	RFROM           // PFA OF THIS DEFINITION
	DC32	LFA, DUP, AT    // GET IT'S LFA
	DC32	DUP             // AND STORE TO CURRENT AND THIS DEF'S LFA
	DC32	CURRENT_SV, STORE
	DC32	TOFA, SWAP, STORE
	DC32	SEMIS


//:NONAME FLASHPREP:	( -- ) Prepare FPADDR Flash page for writing
//	PREPARE SECTORS FOR WRITE OPERATION USING FPADDR
 SECTION .text : CONST (2)
FLASHPREP:
	DC32 .+5
 SECTION .text : CODE (2)
#ifdef TOSCT
        MOV     k, t    // save TOS
#endif
	LDR	t, = FLASHCMD		// t and n DO NOT SURVIVE FLASHCALL
	LDR	n, = FLASHRET
	LDR	w, = 50			// Prepare sector to write
	STR	w, [t]
	LDR	x, = FPA		// DERIVE SECTOR
	LDR	w, [x]			// FROM PAGE ADDR
#ifdef NXP_M0_032kFlash_4KWrite
	LSRS	w, w, #12	// BY SHIFTING RIGHT BY 12
#endif
#ifdef NXP_M0_016kFlash_1KWrite
	LSRS	w, w, #10	// BY SHIFTING RIGHT BY 10
#endif
	STR	w, [t,#4]
	STR	w, [t,#8]
	LDR	x, = IAPCALL
	BLX	x
#ifdef TOSCT
        MOV     t, k    // restore TOS
#endif
	NEXT    // FLASHPREP
 LTORG	 //Always outside of code, else data in words


//:NONAME FLASHESEC:	( -- ) Erase Flash sectors using FPADDR - flashprep 1rst!
//	MUST USE FLASHPREP FIRST.
 SECTION .text : CONST (2)
FLASHESEC:
	DC32 .+5
 SECTION .text : CODE (2)
#ifdef TOSCT
        MOV     k, t    // save TOS
#endif
	LDR	t, = FLASHCMD	// t and n DO NOT SURVIVE FLASHCALL
	LDR	n, = FLASHRET
	LDR	w, = 52		// Prepare sector to write
	STR	w, [t]
	LDR	x, = FPA	// DERIVE SECTOR
	LDR	w, [x]		// FROM PAGE ADDR
#ifdef NXP_M0_032kFlash_4KWrite
	LSRS	w, w, #12	// BY SHIFTING RIGHT BY 12
#endif
#ifdef NXP_M0_016kFlash_1KWrite
	LSRS	w, w, #10	// BY SHIFTING RIGHT BY 10
#endif
	STR	w, [t,#4]
	STR	w, [t,#8]
	LDR	w, = (SYSTEMCLOCK / 1000)       // in Khz
	STR	w, [t,#12]
	LDR	x, = IAPCALL
	BLX	x
#ifdef TOSCT
        MOV     t, k    // restore TOS
#endif
	NEXT    // FLASHESEC
 LTORG	 //Always outside of code, else data in words


//:NONAME FLASHCRTF:	( -- ) Copy Ram to Flash using FPADDR
//	FLASH COPY RAM TO FLASH COMMAND USING FPADDR and FLASH_WR_SIZE
 SECTION .text : CONST (2)
FLASHCRTF:
	DC32 .+5
 SECTION .text : CODE (2)
#ifdef TOSCT
        MOV     k, t    // save TOS
#endif
	LDR	t, = FLASHCMD
	LDR	n, = FLASHRET
	LDR	w, = 51	        // Copy Ram to Flash
	STR	w, [t]
	LDR	w, = FPA
	LDR	w, [w]
	STR	w, [t,#4]
	LDR	w, = RAM_START  // START OF RAM NOT ORIG (START OF DICTIONARY)
	STR	w, [t,#8]
	LDR	w, = FLASH_WR_SIZE      // Smallest writeable page size
	STR	w, [t,#0x0C]
	LDR	w, = (SYSTEMCLOCK / 1000)       // in Khz
	STR	w, [t,#0x10]
	LDR	x, = IAPCALL
	BLX	x
#ifdef TOSCT
        MOV     t, k    // restore TOS
#endif
	NEXT    // FLASHCRTF	// NO RETURN VALUE
//	LDR	t, [n]		// RETURN STATUS CODE
//	APUSH
 LTORG	 //Always outside of code, else data in words

//------------------------------------------------------------------------------
//	FLASH_FORGET FLASH_FORGET:	( --  ) Erase Flash Pages

 SECTION .text : CONST (2)
FLASH_FORGET_NFA:
	DC8	0x80+12
	DC8	'FLASH_FORGE'
	DC8	'T'+0x80
 ALIGNROM 2,0xFFFFFFFF
	DC32	FLASH_SAVE_NFA
FLASH_FORGET:
        DC32    DOCOL
// FF Setup starting page
        DC32    STRVA, FLASH_SPAGE, FPA 
        
FF_LOOP:
// IF at last page Branch to FF_FINISH
        DC32    FPADDR, AT              // When FPADDR
        DC32    LIT, FLASH_PPAGE        // and Last Flash Page
        DC32    EQUAL, ZEQU             // are Equal
        DC32    ZBRAN                   // Branch to Finish
        DC32      FF_FINISH-.             // Else fall thru and 

// Erase a page at a time using current FPA value
        DC32    CMSIS_DISABLE_IRQS
	DC32	FLASHPREP, FLASHESEC
        DC32    CMSIS_ENABLE_IRQS
//        DC32    FPADDR, AT, DOTHEX
        DC32    LIT, FLASH_WR_SIZE
        DC32    FPADDR, PSTORE
        DC32    BRAN
        DC32      FF_LOOP-.

//      RESET DICTIONARY POINTERS APPROPRIATELY 
FF_FINISH:
// IF NO WORDS IN RAM TEST
	DC32	RBASE, LATEST   // If Latest is GT RBASE ( Latest is in ram )
        DC32    GREATERTHAN     // This will be zero
        DC32    ZBRAN           // Meaning there are
        DC32     RAMWORDS-.     // words in Ram
// RESET ALL POINTERS
        DC32    FISH_ONLY       // No words so clean up
// RESET FPA
        DC32    BRAN
        DC32      FFDONE-.

// WORDS IN RAM NEED TO BE RELINKED TO FLASH
RAMWORDS:
//        DC32    LIT, TASK_NFA         // Fish WITH TASKER IN RAM starts here
#ifdef FISH_PubRel_WORDSET
        DC32    LIT, WC_FISH_PubRel_NFA // FISH in flash starts here
#endif
#ifdef FISH_NXP_M0_PRO_WORDCAT
        DC32    LIT, WC_FISH_PRO_NFA    // OR HERE
#endif
        DC32    DBASE, PFA, LFA         // RELINK THIS lfa, i.e.
        DC32    STORE                   // repatch to Fish in flash

// FLASH_FORGET Finish
FFDONE:
        DC32    STRVA, FLASH_SPAGE, FPA
        DC32    LIT, 11111111h, DUP, FPCURR, STORE, FPVAR, STORE
// Show results
        DC32    FLASH_SCAN      // Show Erase done via Flash Page status
#ifndef SRM
        DC32    CR, DOTVARSPACE, DOTDICTSPACE
#endif
        DC32	SEMIS


//:NONAME FLASHWRITE:	( --  ) Commands to save Ram to Flash using FPADDR.
//	FLASH SEQ OF CMDS TO COPY 4K RAM USING FPADDR
 SECTION .text : CONST (2)
FLASHWRITE:
	DC32	DOCOL
	DC32	HERE			// FILL
	DC32	LIT, DICTSPACE_END-1	// REST OF DICTIONAIRY
	DC32	HERE, SUBB
	DC32	LIT, 0xFF		// WITH FF SO
	DC32	FILL    		// End OF DICT VISIBLE IN FLASH
        DC32    CMSIS_DISABLE_IRQS
	DC32	FLASHPREP, FLASHESEC	// PREP AND ERSASE SECTOR
	DC32	FLASHPREP, FLASHCRTF	// PREP AND COPY RAM TO SECTOR
        DC32    CMSIS_ENABLE_IRQS
	DC32	SEMIS

//------------------------------------------------------------------------------
//:NONAME FLASH_SCAN:       ( -- ) SCAN FLASH PAGES FOR SAVED CODE
//      Patch in FLASH_SAVE'd Code.
 SECTION .text : CONST (2)
FLASH_SCAN:
	DC32	DOCOL

// First page available must be at least equal to last page
// FLASH_PPAGE can be reserved and Hard_fault if accessed!
        DC32    LIT, FLASH_SPAGE        // Start at first page available
        DC32    DUP, FPADDR, STORE

FLSCLP:
        DC32    DUP, TOR                // EACH PAGE
        DC32    AT                      // Verify SYSCLK signature
        DC32    SYSCLK
        DC32    EQUAL                   // Or this with other checks
/*
        DC32    R, LIT, 8, PLUS         // Verify FPC is .lt. FPADDR??? END PAGE
        DC32    AT, FPADDR, AT  // LIT, FLASH_PPAGE    // PAST WRITE-ABLE PAGES
        DC32    GREATERTHAN
        DC32    OR                      // Signature not valid
*/
        DC32    ZBRAN                   // make sure
        DC32     CHECKPAGE-.            // page is erased

//      PAGE PASSES VERIFICATION, LINK IT
        DC32    R, LIT, 8, PLUS         // fpa
        DC32    DUP, AT
        DC32    CURRENT_SV              // TO DP
        DC32    STORE
        DC32    FOURP, AT               // fpu
        DC32    UP_SV, STORE            // TO UP
        DC32    CR
        DC32    PDOTQ
        DC8     23D
        DC8     'ADDED WORDS FROM PAGE '
 ALIGNROM 2,0xFFFFFFFF
        DC32    R
        DC32    DOTHEX

        DC32    R, LIT, FLASH_WR_SIZE   // PAGE SIZE WERE WRITING
        DC32    PLUS, FPADDR, STORE     // Set as next free page

        DC32    BRAN
        DC32     FSNEXT-.

CHECKPAGE:
        DC32    R, ASSUREPAGE   // VERIFY PAGE IS FULLY ERASE

FSNEXT:
        DC32    R, LIT, FLASH_WR_SIZE   // PAGE SIZE WERE WRITING
        DC32    PLUS
        DC32    DUP
        DC32    LIT, FLASH_PPAGE        // PAST WRITE-ABLE PAGES
        DC32    SUBB
        DC32    ZBRAN
        DC32     FSDONE-.

        DC32    DROP
        DC32    RFROM, LIT, FLASH_WR_SIZE   // PAGE SIZE WERE WRITING
        DC32    PLUS
        DC32    BRAN
        DC32     FLSCLP-.

FSDONE:
        DC32    DROP
	DC32	RFROM, DROP
        DC32    SEMIS


//:NONAME ASSUREPAGE: ( fpa -- next-fpa) Verify this Flash page has code or is empty.
//      Make sure PAGE IN fpa page is erased and let user know what you do.
//      Works in 812 SRM!!!

// 2 STACK ITEMS LEFT ON EXIT, BOTH ARE fpa+1000H LIKE WHATS PUT ON r<<<<<<<<<<<

 SECTION .text : CONST (2)
ASSUREPAGE:
        DC32    DOCOL                   // verified ONLY fpa ON STACK Here
        DC32    DUP                     // fpa fpa
        DC32    LIT, FLASH_WR_SIZE      // PAGE SIZE WERE WRITING
        DC32    PLUS                    // fpa fpa+frs
        DC32    TOR                     // End of this page
        DC32    DUP                     // Begin -- fpa fpa

APNEXT:
        DC32    AT                      // Should be fpa -1
        DC32    ONEP                    // if so make zero
        DC32    ZBRAN                   // zero is good
        DC32     APCONT-.               // keep going

//      ERASE THIS PAGE                 // fpa
//        DC32    FPADDR, AT, DOTHEX
        
        DC32    CMSIS_DISABLE_IRQS
        DC32    FLASHPREP
        DC32    FLASHESEC
        DC32    CMSIS_ENABLE_IRQS
        DC32    CR
        DC32    PDOTQ
        DC8     23D
        DC8     'ERASED BAD FLASH PAGE  '
 ALIGNROM 2,0xFFFFFFFF
        DC32    DOTHEX                  // consumed fpa

//        DC32    CR, DOTS // DEBUG
        DC32    DROP                    // so why this drop here?

        DC32    RFROM, DROP
        DC32    SEMIS

//      SO FAR SO GOOD
APCONT:                                 // addr
        DC32    FOURP, DUP              // addr addr
        DC32    DUP, R, SWAP            // addr addr r addr
        DC32    SUBB                    // addr addr f - End of this Page?
        DC32    ZBRAN                   // looped thru whole page?
        DC32     APGOOD-.

        DC32    BRAN
        DC32     APNEXT-.               // check every word for all f's

APGOOD:                                 // addr addr
        DC32    CR
        DC32    PDOTQ
        DC8     14D
        DC8     'FLASH PAGE OK '
 ALIGNROM 2,0xFFFFFFFF
        DC32    DROP, LIT, FLASH_WR_SIZE      // PAGE SIZE WERE WRITING
        DC32    SUBB
        DC32    DOTHEX

APDONE:
        DC32    RFROM, DROP
        DC32    SEMIS

