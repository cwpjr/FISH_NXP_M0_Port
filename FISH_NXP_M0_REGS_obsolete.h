//------------------------------------------------------------------------------
// Strange that these cannot be EQUATES!<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//--------------------------------------------------Intel--
#define t       r0      //                          AX
#define n	r1      // v4th
#define w	r2      // v4th NOS DPUSH           DX
#define x	r3      // Execution
#define y	r4      //                          BX as scratch (ROT)
#define i	r5      // IP                       DX:SI
#define r	r6      // Return Stack Pointer
#define p	r7      // Parameter Stack Pointer
//              r8      // Link register
//              r9      // Program Counter
//	ARMv6 Cortex M0 LPC 1114 is 16 bit thumb ISA.
//	Use of the following registers limited to local variables mostly
#define ra	r10     // 
#define rb	r11     // 
#define k	r12     // 
