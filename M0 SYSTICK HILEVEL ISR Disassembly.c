FM0_SYSTICK_ISR:
        0x9c8: 0xb53f         PUSH      {R0-R5, LR}
        LDR     w, [PC, #0X4] //= MY_LTORG The High Level Target
        0x9ca: 0x4a01         LDR.N     R2, [PC, #0x4]          ; [0x9d0] NONAME_STCTR_INCR
    NEXT1   // -> SEMIS_ISR RETURN required instead of SEMIS!
        0x9cc: 0xca08         LDM       R2!, {R3}
    NEXT1   // -> SEMIS_ISR RETURN required instead of SEMIS!
        0x9ce: 0x4798         BLX       R3
        0x9d0: 0x000009e0     DC32      NONAME_STCTR_INCR
MY_LTORG_ISR_SEMIS:
        0x9d4: 0x000009d9     DC32      2521                    ; 'Ù ..'
    POPr2i  // SEMIS to balance DOCOL!!!
        0x9d8: 0x6835         LDR       R5, [R6]
    POPr2i  // SEMIS to balance DOCOL!!!
        0x9da: 0x1d36         ADDS      R6, R6, #4
        POP   {r0-r5, pc }
        0x9dc: 0xbd3f         POP       {R0-R5, PC}
        0x9de: 0x0000         MOVS      R0, R0
NONAME_STCTR_INCR:
        0x9e0: 0x00000601     DC32      DOCOL
        0x9e4: 0x000021e4     DC32      ONE
        0x9e8: 0x00003564     DC32      STCTR
        0x9ec: 0x000018e0     DC32      PSTORE
        0x9f0: 0x000009d4     DC32      MY_LTORG_ISR_SEMIS
msg_FISH:
        0x9f4: 0x48534946     DC32      1213417798              ; 'FISH'
        0x9f8: 0x4d524120     DC32      1297236256              ; ' ARM'
