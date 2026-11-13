LDA 2000H
MOV C,A

ORA A         ; Check A is zero by zero + zero = zero then zero flag is enabled
JZ Done        ; if Zero then Jump

LXI H,2001H
MOV A,M
DCR C
JZ Done

Loop: INX H
           CMP M
           JNC Next
           MOV A,M

Next:  DCR C
           JNZ Loop


Done: STA 3000H
HLT