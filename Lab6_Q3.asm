#BEGIN 7000H
#ORG 7000H

; Destination Block Address
LXI H,0060H

; Source block Starting Address
LXI D,0040H

; No of data to copy
MVI B,05H

Loop: LDAX D
INX D
MOV M,A
INX H
DCR B
JNZ Loop

HLT