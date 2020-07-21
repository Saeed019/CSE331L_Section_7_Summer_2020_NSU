
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
 
 K EQU 1
 K1 EQU 2
 
 MOV AX,K
 ADD AX,K1
 ADD AX,K1
 ADD AX,K

ret




