#BEGIN 1000H
#ORG 1000H

; Stack Pointer initizing
LXI SP,9000H

LXI H,2050H

; Array Size
MVI B,05H

;Pushing in Stack
Loop1: MOV A,M
PUSH PSW
INX H
DCR B
JNZ Loop1

MVI B,05H
LXI H,2050H

;Pop and Reversing
Loop2: POP PSW
MOV M,A
INX H
DCR B
JNZ Loop2

HLT

