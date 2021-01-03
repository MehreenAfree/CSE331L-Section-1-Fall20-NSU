
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL 
.STACK 100H
.DATA
MSG1 DB 'Enter any number from 0-9: $'
S1 DB 0DH, 0AH, 'The number is odd$'
S2 DB 0DH, 0AH, 'The number is EVEN$'

.CODE
MAIN PROC
     MOV AX,@DATA
     MOV DS,AX
     
     LEA DX,MSG1
     MOV AH,9
     INT 21H
     
INPUT:
     MOV AH,1
     INT 21H
     
EVEN_ODD_CHECK:
     TEST AL,01H
     JZ EVEN
     
ODD: 
     LEA DX,S2
     MOV AH, 9
     INT 21H
     JMP EXIT
EVEN: 
     LEA DX,S2
     MOV AH,9
     INT 21H 
EXIT:
     MOV AH,4CH
     INT 21H 
     
MAIN ENDP
END MAIN 





