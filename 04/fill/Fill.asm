// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
//a = R0
//b = R1
//R2 = 0
//while(a > 0){
//R2 = R2 + b
//a --
//}
    @R0
    D=M
    @a
    M=D

    @R1
    D=M
    @b
    M=D

    @0
    D=A
    @R2
    M=D

(LOOP)
// begin of loop condition
    @a
    D=M
    @END
    D;JLE
// begin body of while
    @b
    D=M
    @R2
    M=M-D
// end body of while

    @LOOP
    0;JMP

(END)
    0;JMP










