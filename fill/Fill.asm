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

// START
// @color = 0
// i = 0
// if @KBD == 0, Goto FILL
// @color = -1
// FILL
// if i > 8191, Goto START
// @temp = @screen + Memory[@i]
// @temp = @color
// i++
// Goto Fill

(START)
@0
D=A
@color
M=D

@i
M=D

@KBD
D=M
@FILL
D;JEQ

@color
M=-1

(FILL)
@i
D=M
@8191
D=D-A
@START
D;JGT

@SCREEN
D=A
@i
D=D+M
@temp
M=D

@color
D=M
@temp
A=M
M=D

@i
M=M+1

@FILL
0;JMP
