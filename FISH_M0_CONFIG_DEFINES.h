// FISH #defines for system wide control
// this define must keep RESET!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//#define USE_CMAIN     // Affects cstartup_M.c FM0_COLD and RET2c
#define XON_XOFF        // Use XON_XOFF Flow Control
#define TRUE_EQU_NEG_ONE
#define STDLED          // Special chars in QUIT and error messages for STDLED
//#define DEFAULT_BAUD_TEST
//#define IOBUFS_DEBUG
//#define CTS_RTS       // Use Hardware Flow Control
//#define IO2TP         // for ports before i/o done - enable PADCLR and TIBCLR
//#define TOSCT         // TOS Cache Testing QUERY BACKSPACING OVER INPUT!!!
//#define SLOW_POWERUP  // For slow power supply
//#define CLKOUT        // PIO0_1 is CLKOUT
//#define TESTRAM       // run flogram at start-up
//#define DEBUG_FLASH   // 

//IOBUFS_DEBUG #define:
//NOOP & .SH IN EXPECT AFTER LEAVE 
//TIB DUMP OF EXPECT IN QUERY
//HERE DUMP IN INTERPRET'S DFIND
//WORD PARSES USING SPACE - DOES SPACE AFTER? 

// FISH NXP M0 VARIANTS FOR THIS SOURCE

// NEED TO?:
//      - use Flash Magic chip categories which are simular to IAR/NXP
//      - NXP LPC1114FN28_102 for 32kFlash 4kWrite and 4kRam
//      - NXP LPC1114

//      - NXP LPC812M101 for 16kFlash 1kWrite 4kRam

// Placed in each configurations ( Debug, etc )'s
// Assembler Preproccesor Defined Symbols section.
// Place release wordset type, and a Flash, Ram and Clock there.

// VARIATIONS OF THIS!
//SRM
//NXP_M0_81x
//NXP_812_mBed_MAX
//FISH_Debug_WORDSET
//FISH_PubRel_WORDSET
//NXP_M0_81x_IRC12_12MHZ
//NXP_M0_032kFlash_4KWrite
//NXP_M0_008kRam
//NXP_M0_004kRam

// IN THIS ORDER:

//NXP_M0_11xx
//NXP_M0_81x
//NXP_M0_1115

// NXO_11xx32x4_PUBREL
//NXP_M0_11xx
//FISH_PubRel_WORDSET
//NXP_M0_11xx_IRC12_48MHZ
//NXP_M0_032kFlash_4KWrite
//NXP_M0_004kRam

//FISH_Debug_WORDSET    // Change SIGNON msg
//FISH_PubRel_WORDSET   // Set CURRENT to WC_FISH_PubRel_NFA
//FISH_NXP_M0_PRO_WORDCAT  // Set CURRENT to WC_FISH_PRO_NFA

//NXP_M0_11xx_IRC12_12MHZ
//NXP_M0_11xx_IRC12_48MHZ
//NXP_M0_11xx_XRC10_50MHZ

//NXP_M0_81x_IRC12_12MHZ
//NXP_M0_81x_IRC12_24MHZ
//NXP_M0_81x_IRC12_30MHZ

//NXP_M0_016kFlash_1KWrite
//NXP_M0_032kFlash_4KWrite
//NXP_M0_056kFlash_4KWrite

//NXP_M0_004kRam
//NXP_M0_008kRam

