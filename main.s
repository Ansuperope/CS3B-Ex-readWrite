// ---------------------------------------------------------------------
// Aspen Cristobal
// CS3b - lab-LOREM_NUM-LOREM_ASSIGN
// mm/dd/2026
// ---------------------------------------------------------------------
// 	PURPOSE:
// LOREM
// ---------------------------------------------------------------------
//	VARAIBLES:
// LOREM
// ---------------------------------------------------------------------
// 	PSUEDOCODE:
// 1. Get input from keyboard 
// 	a. read input
//	b. terminate input
//
// 2. Process input, put input in a variable
// 	a.
//	a.
//
// 3. Output text
// 
// 4. Terminate program
// ---------------------------------------------------------------------
.global _start	// Provide program starting address 

// functions
//.extern funcName

_start:
	.EQU STDIN,		0	// starndard input
	.EQU STDOUT,	1	// standard output
	.EQU SYS_read,	63	// Linux read()
	.EQU SYS_write, 64	// Linux write()
	.EQU SYS_exit,  93	// exit() supervisor call code 
    
	.EQU MAX_BYTES, 10	// max bytes to read()

	.text  // code section 

	// -----------------------------------------------------------------
	// READ KEYBOARD
	// -----------------------------------------------------------------
	MOV X0, STDIN  		// file descriptor for stdin (keyboard) 
	LDR X1, =szBuffer 	// read() needs buffer pointer in X1 
	MOV X2, MAX_BYTES 	// max amount of characters to read
	MOV X8, SYS_read 	// Linux read() system call number 
	SVC 0				// call Linux to exicute commands

	// -----------------------------------------------------------------
	// PROCESS KEYBAORD INPUT
	// -----------------------------------------------------------------

	// -----------------------------------------------------------------
	// OUTPUT INPUT
	// -----------------------------------------------------------------


	// -----------------------------------------------------------------
	// TERMINATE PROGRAM
	// -----------------------------------------------------------------
	MOV X0, #0			// set return code to 0, all good 
	MOV X8, #SYS_exit	// set exit() supervisor call code 
	SVC 0				// call Linux to exit 

	.data	// data section
szBuffer:	.skip	11	// string with size 11 (includeing null)

.end	// end of program, optional but good practice 
