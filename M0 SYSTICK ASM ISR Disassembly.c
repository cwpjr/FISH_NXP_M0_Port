FM0_SYSTICK_ISR:
        0x9c8: 0xb503         PUSH      {R0, R1, LR}
        LDR     n, = STICKER
        0x9ca: 0x4902         LDR.N     R1, [PC, #0x8]          ; [0x9d4] STICKER
        LDR     t, [n]
        0x9cc: 0x6808         LDR       R0, [R1]
        ADDS    t, t, #1
        0x9ce: 0x1c40         ADDS      R0, R0, #1
        STR     t, [n]
        0x9d0: 0x6008         STR       R0, [R1]
        POP     { t, n, pc } // exec lr -> pc
        0x9d2: 0xbd03         POP       {R0, R1, PC}
 LTORG
        0x9d4: 0x10001070     DC32      STICKER
ISR_SEMIS:
        0x9d8: 0x000009dd     DC32      2525                    ; 'Ý ..'
    POPr2i  // SEMIS to balance DOCOL!!!
        0x9dc: 0x6835         LDR       R5, [R6]
    POPr2i  // SEMIS to balance DOCOL!!!
        0x9de: 0x1d36         ADDS      R6, R6, #4
        POP   {r0-r5, pc }
        0x9e0: 0xbd3f         POP       {R0-R5, PC}
        0x9e2: 0x0000         MOVS      R0, R0
msg_FISH:
        0x9e4: 0x48534946     DC32      1213417798              ; 'FISH'
        0x9e8: 0x4d524120     DC32      1297236256              ; ' ARM'
        0x9ec: 0x43504c20     DC32      1129335840              ; ' LPC'
