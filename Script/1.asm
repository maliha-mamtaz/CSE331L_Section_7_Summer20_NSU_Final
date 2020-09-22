ORG 100H
.MODEL SMALL
.DATA

          MSG  DB "Enter Lower_Case  : $"
          MSG2 DB 0DH,0AH,'Upper_Case  : $'
          STR DB 100 DUP(?)

.CODE
     MAIN PROC
          MOV AX,@DATA
          MOV DS,AX

          MOV AH,9
          LEA DX,MSG
          INT 21H

          LEA SI,STR
          MOV AH,1

         READ:
          INT 21H
          MOV BL,AL
          
          CMP AL,'1'
          JE NUMBER
          CMP AL,'3'
          JE NUMBER
          CMP AL,'5'
          JE NUMBER

          CMP AL,0DH
          JE  DISPLAY

          XOR AL,20H
         NUMBER:  
          MOV [SI],AL
          INC SI
          JMP READ


         DISPLAY:
          MOV AL,'$'
          MOV [SI],AL
          
          MOV AH,9
          LEA DX,MSG2
          INT 21H

          LEA DX,STR
          INT 21H


          MOV AH,4CH
          INT 21H

     MAIN ENDP

END MAIN