// FISH (FIG-ISH FORTH) for the NXP ARM Cortex series SystemsOnaChip (SoC).
// This FISH is for the Cortex M0 series, NXP LPC1114FD/102 32k/4k SoC.
// which does not support these math routines in hardware.


int c_64by32div	( int divisor, long long dividend )
{
	int rem = dividend % divisor;	// rem = divmsw+divlsb % divisor;
	int quo = dividend / divisor;   // quo = divmsw+divlsb / divisor;
	return (quo);	                // LSW of quo in t (r0), rem in w (r2)
}

long long c_32by32to64mul (int a, int b)
{
	long long res = a * b;
	return (res);   	        // LSW in t (r0), MSW in n (r1)
}

int main(void) {
  
 extern void FM0_COLD();
	volatile static int i = 0 ;
	while(1) {
		FM0_COLD();		// ret2c returns here
		i++ ;
	}
	return 0 ;
}
