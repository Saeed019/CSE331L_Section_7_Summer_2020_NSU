
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL
.STACK 100H


.DATA
  PROMPT DB 'Enter int No : $'
  MSG  DB 'The Enter Digit is : $'
 

.CODE
  
  MAIN PROC
   
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, PROMPT
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    
    MOV BL, AL 
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    
    MOV DL, 0AH
    INT 21H
    
    LEA DX, MSG
    MOV AH, 9
    INT 21H
    
    CMP BL, 30H
    
    JZ @ZERO
    JG @POSITIVE
    JL @NEGATIVE
    
  @ZERO:
  MOV DL, 'Z'
  JMP @PRINT
  
  @POSITIVE:
  MOV DL, 'P'
  JMP @PRINT
  
  @NEGATIVE:
  MOV DL, 'N'
  JMP @PRINT
  
  @PRINT:
  MOV AH, 2
  INT 21H
  
    MOV AH, 4CH
    INT 21H
   MAIN ENDP
  END MAIN
    
    
    SUB AL, 30H
    MOV VALUE_1, AL
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    
    MOV DL, 0AH
    INT 21H
    
    LEA DX, PROMPT_2
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    
    SUB AL, 30H
    MOV VALUE_2, AL
    
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    
    
    MOV DL, 0AH
    INT 21H                     
  
    
    LEA DX, PROMPT_3
    MOV AH, 9
    INT 21H
    
    
    MOV AL, VALUE_1
    SUB AL, VALUE_2
    
    ADD AL, 30H
    
    MOV AH, 2
    MOV DL,AL
    INT 21H

    
    MOV AH, 4CH
    INT 21H
    
 MAIN ENDP
END MAIN