//      FISH_NXP_M0_11xx_SOC_INIT.s

//HEADERLESS SoCinit:        ( -- ) Initialize main SoC subsystems here.
//      Use of IRC, external xtal's and PLL done here.
//      Derive maximum SYSCLOCK frequiency possible.
//      Initialize FISH SYSCLK to system clock frequency in Hz. Used By UARTx_INIT.
//      Initialize SYSTICK, and others under #define control

 SECTION .text : CONST (2)
SoCinit:
  DC32	DOCOL
// SYSTICK SECTION: (SysTick uses the processor clock.)
// UM10398 - Chapter 24: LPC111x/LPC11Cxx System tick timer (SysTick)
// SYST_RVR (Reload value) is set to not set until user does with MS or DELAY.

// While testing Hilevel ISR
#if 1
// Clear the SYST_CVR register by writing to it. 
// This ensures that the timer will count from the SYST_RVR value
// rather than an arbitrary value when the timer is enabled.
 DC32   STRVA, 0, SYST_RVR
 DC32   STRVA, 0, SYST_CVR
#else
 DC32   STRVA, 47999d, SYST_RVR // BB7F 1ms @ 48mhz RELOAD COUNTER VALUE
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
// 1185fh = IOCON, UART, (?SPIO0) GPIO & SYS ROM RAM FLASH
  DC32	STRVA, 1185Fh, SYSAHBCLKCTRL    // enable pwr

// UART FLOW CONTROL SECTION:
// Default when XON_XOFF and CTS_RTS not defined
//  DC32    STRVA, 0x00000004, PINASSIGN0     // Order = RTS/CTS RX/TX CTS/RTS OFF
#ifdef XON_XOFF
// Asign CTS signal pin vs GPIO usage
//  DC32    STRVA, 0x00090004, PINASSIGN0 // Order = RTS/CTS RX/TX CTS = INPUT
// Set RTS (bit 14 = 0x2000) to OUTPUT and CTS (bit 9 = 0x200) to INPUT
// GPIO usage of RTS pin, which if assined as RTS signal which enables it.
//  DC32    STRVA, 0x2000, DIR0     // RTS_PIN_14 0= IN 0x2000 = OUT
// Set RTS Low
//  DC32    STRVA,  0x00, PIN0      // RTS HI/LOW IF OUTPUT
#endif

#ifdef CTS_RTS
// Assign RTS = OUTPUT CTS = INPUT signals to pins - CTSEN in UART0_INIT
  DC32    STRVA, 0xC, U0MCR     // Order = RTS/CTS RX/TX
#endif

#ifdef NXP_M0_11xx_IRC12_48MHZ
// Voltages should be stable now - proceed to init.
  DC32	STRVA, 0ED70h, PDRUNCFG         // power-up PLL

// CHOOSE CLOCK TO FEED PLL
// 0=irc, 1=sysclk, 2=wdt, 3=mainclock
  DC32	STRVA, 0, SYSPLLCLKSEL  // 12MHz IRC
// Tickle Update Register
  DC32	STRVA, 0, SYSPLLCLKUEN
  DC32	STRVA, 1, SYSPLLCLKUEN

// SET PLL MULTIPLY AND DIVIDE IF NEEDED AND SET SYSCLOCK
  DC32	STRVA, 3h, SYSPLLCTRL   // pll 12MHz*4 = 48MHz
Hz_48000000:
_wPLLlock
  DC32	LIT,SYSPLLSTAT,AT,ONE,ANDD,ZBRAN
  DC32	(_wPLLlock - .)

// 0=irc, 1=sysclk, 2=wdt, 3=mainclock
  DC32  STRVA, 3, MAINCLKSEL    // select PLL driven clock
// Tickle Update Register
  DC32  STRVA, 0, MAINCLKUEN
  DC32  STRVA, 1, MAINCLKUEN
#endif  // NXP_M0_11xx_IRC12_48MHZ

// Set SYSCLOCK = SYSTEMCLOCK defined in FISH_M0_EQUATES.s
// And set in Project Configuration ex: NXP_M0_81x_IRC12_24MHZ
// in Assembler -> Preprocessor -> Defined Symbols
  DC32  STRVA, SYSTEMCLOCK, SYSCLOCK    // 

#ifdef CLKOUT
// Turn CLKOUT on and SET divide by...
  DC32	STRVA, 1, IOCON_PIO0_1  // CLKOUT func
  DC32	STRVA, 4, CLKOUTCLKDIV  // DIVIDE BY 4
// 0=irc, 1=sysclk, 2=wdt, 3=mainclock
  DC32	STRVA, 3, CLKOUTCLKSEL  // CLKOUT CLOCK
// Tickle Update Register
  DC32	STRVA, 0, CLKOUTUEN
  DC32	STRVA, 1, CLKOUTUEN
#endif

// Debug SERIAL POWER UP ISSUE:
// Change TXD and RXD to a known state instead of power up tri-state.
//  DC32  STRVA, 8, IOCON_PIO1_6        // P1.6 RX I/O PULL DOWN
//  DC32  STRVA, 8, IOCON_PIO1_7  // P1.7 TX I/O PULL DOWN
  DC32	SEMIS
