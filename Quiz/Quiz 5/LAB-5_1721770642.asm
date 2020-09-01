
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA
    PROMPT_1 DB 'Enter a integer less than 9: $'
    PROMPT_2 DB 0AH, 0DH, 'The Number Is : $'
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        LEA DX, PROMPT_1
        MOV AH, 09H
        INT 21H 
        MOV AH, 01H 
        INT 21H
        SUB AL, 30H
        MOV CL, 02H
        MOV AH, 00H
        MOV BX, AX
@L1: DIV CL
       CMP AH, 0H
       JE @L2
       INC CL
       MOV AX, BX
       CMP CL, BL
       JL @L1

       LEA DX, PROMPT_2
       MOV AH, 09H
       INT 21H
       MOV AH, 02
       MOV DL, 'X'
       JMP @END  

       
@L2: LEA DX, PROMPT_2
       MOV AH, 09
       INT 21H
       MOV AH, 02H
       MOV DL, 'X'
       INT 21H
       MOV DL, "'"
       INT 21H
@END: HLT        

        
    MAIN ENDP
END MAIN

ret




