
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
 .STACK 100H

 .DATA
    PRINT  DB "Display: $"

 .CODE
   MAIN PROC
     MOV AX, @DATA                 
     MOV DS, AX

     LEA DX, PRINT                
     MOV AH, 9
     INT 21H

     MOV CX, 10                   

     MOV AH, 2                      
     MOV DL, 48                   

     @LOOP:                       
       INT 21H                   

       INC DL                     
       DEC CX                     
     JNZ @LOOP                    

     MOV AH, 4CH                  
     INT 21H
   MAIN ENDP
 END MAIN


ret




