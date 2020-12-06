
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



.MODEL SMALL
.STACK 100H

.DATA
    
    NUM1 DB ?
    NUM2 DB ?
    RES1 DB ?
    PRINT1 DB "Enter first integer: $"
    PRINT2 DB 0DH, 0AH, "Enter second Integer: $"
    PRINT3 DB 0DH, 0AH, "Result of MUL: $"
    
.CODE

    START PROC
    MOV AX,DATA
    MOV DS,AX     
    LEA DX,PRINT1
    MOV AH,9
    INT 21H     
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM1,AL     
    LEA DX,PRINT2
    MOV AH,9
    INT 21H     
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM2,AL
    MUL NUM1
    MOV RES1,AL
    AAM    
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    LEA DX,PRINT3
    MOV AH,9     
    INT 21H
    MOV AH,2
    MOV DL,BH
    INT 21H
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV AH,4CH
    INT 21H
    
    
   START ENDP
  END START

ret



