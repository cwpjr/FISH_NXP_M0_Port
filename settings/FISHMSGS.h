//------------------------------------------------------------------------------

 SECTION .text : CONST (2)

// DC8 "?" IS A NULL TERMINATED STRING
// DC8 '?' IS NOT

msg_questionmark:
	DC8     " ? "

msg_cr:
	DC8     " <CR> "

msg_forget_fish:
        DC8     " CANT FORGET FISH SYSTEM WORDS "

msg_forget_saved:
        DC8     " CANT FORGET WORDS SAVED IN FLASH - SEE FLASH_FORGET "

msg_user_not_implemented:
	DC8     " WORD NOT IMPLEMENTED YET "

msg_not_in_binary:
	DC8     " Not supported in BINARY: "

msg_uvspace:
	DC8     " DECIMAL 32BIT CELLS available in RAM VAR Space. "

msg_dictspace:
	DC8     " DECIMAL Bytes available in dictionary. "

msg_dictfull:
	DC8     " Dictionary Full. Use .DS "

msg_uvfull:
	DC8     " RAM VAR SPACE Full. USE .VS "

msg_wordexists:
	DC8     " exists in dictionary already. "

msg_number_error:
	DC8     " ? not found and not a number in NUMBER: "

msg_qstack:
	DC8     " caused a stack error in QSTACK: "

msg_qpair:
	DC8     " stack error while compiling, mismatched conditional in QPAIR: "

msg_qcomp:
	DC8     " error trying to compile when not compiling in QCOMP: "

msg_qexec:
	DC8     " error trying to execute when not compiling in QSTACK: "

