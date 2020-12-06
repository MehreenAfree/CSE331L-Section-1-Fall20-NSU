
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL
.STACK 100H

.DATA 
NUM1 DB ?
NUM2 DB ?
PRINT1 DB 10,13,"Enter first number: $"
PRINT2 DB 10,13,"Enter second number: $"
PRINT3 DB 10,13,"Smallest one: $"
ENDS
.CODE 
ASSUME DS:DATA CS:CODE
START:
MOV AX,DATA
MOV DS,AX
LEA DX,PRINT1
MOV AH,9
INT 21H
MOV AH,1
INT 21H
MOV NUM1,AL
LEA DX,PRINT2
MOV AH,9
INT 21H
MOV AH,1
INT 21H
MOV NUM2,AL
LEA DX,PRINT3
MOV AH,9
INT 21H
MOV AL,NUM1
CMP AL,NUM2
JG SECOND
FIRST:  MOV AH,2
MOV DL,NUM1
INT 21H
JMP EXIT
SECOND: MOV AH,2
MOV DL,NUM2
INT 21H
EXIT: MOV AH,4CH
INT 21H
ENDS
END START

ret




