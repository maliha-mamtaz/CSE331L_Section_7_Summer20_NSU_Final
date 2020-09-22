ORG 100H
.MODEL SMALL
.DATA

          MSG  DB "Enter the int  : $"  
          MSG1 DB " EVEN NUMBER $"
          MSG2 DB " ODD NUMBER $ "
          STR DB 100 DUP(?)


.CODE
    MAIN PROC
    MOV AX, @DATA 
    MOV DS, AX 
    
    LEA DX, MSG
    MOV AH, 9
    INT 21H 

    MOV AH,1
    INT 21H
    
    TEST AL,1
    JZ PRINT
    JMP EXIT
    
    
    PRINT:
    MOV AH,2
    MOV DL,'E'
    
    LEA DX, MSG1
    MOV AH, 9
    INT 21H
    
       
    EXIT:
    MOV AH,2
    MOV DL,'O'
    
    LEA DX, MSG2
    MOV AH, 9
    INT 21H
   
    
    
    MOV AH,4CH
    INT 21H
   
    
    MAIN ENDP
END MAIN    
   