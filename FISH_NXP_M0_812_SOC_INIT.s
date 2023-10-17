//      FISH_NXP_M0_81x_SOC_INIT.s

//HEADERLESS SoCinit:        ( -- ) Initialize main SoC subsystems here.
//      Use of IRC, external xtal's and PLL done here.
//      Derive maximum SYSCLOCK frequiency possible.
//      Initialize FISH SYSCLK to system clock frequency in Hz. Used By UARTx_INIT.
//      Initialize SYSTICK, and others under #define control

 SECTION .text : CONST (2)
SoCinit:
  DC32	DOCOL
// SYSTICK SECTION: (SysTick uses the processor clock.)
// SYST_RVR (Reload value) not set until user does with MS or DELAY.
#ifdef NXP_M0_812_IRC12_24MHZ
 DC32   STRVA, 23999d, SYST_RVR // 5DBF 1ms @ 24mhz RELOAD COUNTER VALUE
#endif
// SYSTICK TIMER ENABLE: Bit 0 = 1
// SYSTICK CLKSOURCE: Bit 2 = 0 (SYSTEM CLOCK/2)
// SYSTICK CLKSOURCE: Bit 2 = 1 (SYSTEM CLOCK)
//  DC32    STRVA, 1, SYSTICKCSR    // SYSCLK/2
//  DC32    STRVA, 5, SYST_CSR    // SYSCLK
  DC32    STRVA, 7, SYST_CSR    // SYSCLK + SYSTICK interrupt for FISH STCTR

#ifdef SLOW_POWERUP
// DELAY SIGNON MESSAGE OUTPUT UNTIL SERIAL BOARD POWERED UP
  DC32    LIT, 500, MS
#endif

// SYSAHBCLKCTRL, address 0x40048080h can disable uartclks.
// 0xFF = sys/rom/ram/flash/i2c/gpio and switch matrix
// 0x1C0 = uart0-1&2
// IOCON clockes are NOT enabled because the 812 special function pins
// TXD, RXD, CTS and RTS are configured solely by PINASSSIGNx
  DC32    STRVA, 1C0FFh, SYSAHBCLKCTRL

// UART HW FLOW CONTROL settings for STP 812 DevL Board:
// 812 CTS IS INPUT FROM FT230 RTS.
// 812 CTS enabled by pin assignment and CTSEN bit set in UART0_INIT.
// 812 RTS IS OUTPUT TO FT230 CTS.
// 812 RTS is enabled by pin assignment.
// All pins come up as inputs pulled high.
// CTS and RTS are active low, allowing flow.
// So enable pins here making RTS signal active,
// allowing CTSEN to be set in UART0_INIT if desired.
// UARTCLKDIV is the U_PCLK used by all UARTS!
// UARTCLKDIV set by value > 0 = U_PCLK - Value of 0 (power-up) stops uartclk

// PINASSIGN0 addr 4000C000h FFH IS RESET (OFF!) VALUE
// Default when XON_XOFF and CTS not defined RTS is defined so reset value is on
#ifdef NXP_812_mBed_MAX  // use built in virtual USB serial interface
// 0xFF0901006 where 0106 is RX = PIO0_1 and TX = PIO0_6 Feeds Serial to USB
  DC32    STRVA, 0xFF090106, PINASSIGN0 // Order = RTS/CTS RX/TX CTS = INPUT
#else
// 0xFF0900004 where 0004 is RX = PIO0_0 and TX = PIO_4
  DC32    STRVA, 0xFF090004, PINASSIGN0 // Order = RTS/CTS RX/TX CTS = INPUT
#endif

// ON STP Board CTS must be set for FTTDI chip!!!
#ifdef XON_XOFF
// REVERSE of schematic
// Asign CTS signal pin vs GPIO usage
// Set RTS (bit 14 = 0x2000) to OUTPUT and CTS (bit 9 = 0x200) to INPUT
// GPIO usage of RTS pin, which if assined as RTS signal which enables it.
  DC32    STRVA, 0x2000, DIR0     // RTS_PIN_14 0= IN 0x2000 = OUT
// Set RTS Low
  DC32    STRVA,  0x00, PIN0      // RTS HI/LOW IF OUTPUT
#endif

#ifdef CTS_RTS
// Assign RTS = OUTPUT CTS = INPUT signals to pins - CTSEN in UART0_INIT
#ifdef NXP_812_mBed_MAX  // use built in virtual USB serial interface
  DC32    STRVA, 0x0E090106, PINASSIGN0 // Order = RTS/CTS RX/TX CTS = INPUT
#else
  DC32    STRVA, 0x0E090004, PINASSIGN0     // Order = RTS/CTS RX/TX
#endif
#endif
  
#ifdef NXP_M0_81x_IRC12_24MHZ	// Defined in IAR Project Configuration
// Voltages should be stable now - proceed to init.
  DC32	STRVA, 0ED70h, PDRUNCFG         // power-up PLL

// CHOOSE CLOCK TO FEED PLL
// 0=irc, 1=sysclk, 2=wdt, 3=mainclock
  DC32	STRVA, 0, SYSPLLCLKSEL  // 12MHz IRC
// Tickle Update Register
  DC32	STRVA, 0, SYSPLLCLKUEN
  DC32	STRVA, 1, SYSPLLCLKUEN

// SET PLL MULTIPLY AND DIVIDE IF NEEDED AND SET SYSCLOCK
  DC32	STRVA, 1h, SYSPLLCTRL   // pll 12MHz*4 = 48MHz
  DC32  STRVA, SYSTEMCLOCK, SYSCLOCK    // 
Hz_28000000:
_wPLLlock
  DC32	LIT,SYSPLLSTAT,AT,ONE,ANDD,ZBRAN
  DC32	(_wPLLlock - .)

// 0=irc, 1=sysclk, 2=wdt, 3=mainclock
  DC32  STRVA, 3, MAINCLKSEL    // select PLL driven clock
// Tickle Update Register
  DC32  STRVA, 0, MAINCLKUEN
  DC32  STRVA, 1, MAINCLKUEN

#endif  // NXP_M0_81x_IRC12_24MHZ

#ifdef CLKOUT
// Turn CLKOUT on and SET divide by...
// Select Clock; 0=irc, 1=sysclk, 2=wdt, 3=mainclock
// Tickle Update Register
#endif

// Set SYSCLOCK = SYSTEMCLOCK defined in FISH_M0_EQUATES.s
// And set in Project Configuration ex: NXP_M0_81x_IRC12_12MHZ
// in Assembler -> Preprocessor -> Defined Symbols
  DC32    STRVA, SYSTEMCLOCK, SYSCLOCK

  DC32    SEMIS
