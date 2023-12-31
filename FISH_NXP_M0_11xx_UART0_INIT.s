//      FISH_NXP_M0_11xx_UART0_INIT.s

//	UART0_INIT UART0_INIT: ( -- )
//	If setting BAUD MYBAUD MUST BE USED FIRST
//	THIS IS TO PRESERVE YOUR BAUD DURING HARD FAULT RESET
//	UseDEFAULT_BAUD UNLESS DBAUD IS ZERO, THEN USE UBAUD VALUE
//	WHEN DBAUD IS NOT ZERO USE DEFAULT_BAUD	        // pwrup
//	WHEN DBAUD IS ZERO USE UBAUD			// RESET

 SECTION .text : CONST (2)
UART0_INIT_NFA:
	DC8	0x8A
	DC8	'UART0_INI'
	DC8	'T'+0x80
 ALIGNROM 2,0xFFFFFFFF
	DC32	WC_NUMBERS_NFA
UART0_INIT:
	DC32	DOCOL

#ifndef DEFAULT_BAUD_TEST
  DC32	LIT, DBAUD, AT, ZEQU
  DC32	ZBRAN
  DC32    BAUDDEFAULT-.	        // IF DBAUD not ZERO SET DEFAULT_BAUD
  DC32	LIT, UBAUD, AT          // IARBUG , TOR
  DC32    TOR		        // ELSE USE UBAUD
  DC32	BRAN
  DC32    BAUD1-.		        // SET UBAUD TO ZERO TO PRESERVE UBAUD
#endif

BAUDDEFAULT:			        // ELSE
	DC32	LIT, DEFAULT_BAUD       // IARBUG , TOR
        DC32    TOR	                // SET
BAUD1:
	DC32	LIT, IOCON_PIO1_6	// RX w/ hysteresus
        DC32    LIT, 39h, SETBITS

	DC32	LIT, IOCON_PIO1_7	// TX
	DC32	ONE, SETBITS

        DC32    STRVA, 1, UARTCLKDIV    // UARTCLKDIV = 1

        DC32    STRVA, 0x83, U0LCR      // DLAB = 1 8n1

//	regVal = LPC_SYSCON->UARTCLKDIV//
//	Fdiv = (((SystemCoreClock*LPC_SYSCON->SYSAHBCLKDIV)/regVal)/16)/baudrate
//	LPC_UART->DLM = Fdiv / 256//
//	LPC_UART->DLL = Fdiv % 256//
//	LPC_UART->LCR = 0x03//		// DLAB = 0 8n1

	// DIV BY UARTCLKDIV 1RST IF NOT 1 !
	// SYSCLK 16 / R>  /  256  /MOD

	DC32	SYSCLK, LIT, 16, SLASH
	DC32	RFROM   		// Baud
	DC32	SLASH
	DC32	LIT, 256, SLMOD
DLM:
//        DC32    NOOP
	DC32	UART0_RX, FOURP, STORE	// DLM = TOS = 1 FOR 9600 @ 48MHZ
DLL:        
        DC32	UART0_RX, STORE		// DLL = NOS - 38h FOR 9600 @ 48MHZ

        DC32    STRVA, 3, U0LCR         // DLAB = 0 8n1

        DC32    STRVA, 0, U0FCR         // FIFO'S OFF
        DC32    STRVA, 7, U0FCR         // FIFO'S ON

	DC32	UART0_LSR, DROP		// Clear Line Status Register
//	DC32	CLRUART
#ifdef DEFAULT_BAUD_TEST
        DC32    STRVA, 0X31, UART0_TX   // EARLY OUTPUT
#endif
	DC32	SEMIS
