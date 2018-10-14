
; ===== CONTROL THE TRAFFIC LIGHTS =============================  
;set the al varible to values which will display the colour of the traffic lights and then it is sent to the traffic lgihts. It is then sent to a procedure which cause a loop for a delay and once complete it will move to the next value for the traffic light.

	CLO		; Close all windows in the program
Start:
			
	MOV AL,30	; set the varible of AL to 30 in hexidecimals which will represent the left traffic light to be green and the right to be red. 
	OUT 01		; Send varible AL to The traffic lights.

	MOV	BL,20	; set BL to 20 hexidecimals which will be how many loops the procedure will do.
	CALL	90	; Call the procedure at address [90]

	MOV AL,50	; left traffic light will be yellow and right will be red
	OUT 01		

	MOV	BL,5	
	CALL	90	

	MOV AL,98	; left traffic light will be red and right will be red and yellow.
	OUT 01		

	MOV	BL,5	
	CALL	90	

	MOV AL,84	; left traffic light will be red and right will be green
	OUT 01	

	MOV	BL,20	
	CALL	90	

	MOV AL,88	; left traffic light will be red and right will be yellow
	OUT 01		

	MOV	BL,5		
	CALL	90	

	MOV AL,d0	; left traffic light will be red and yellow and the right will be red
	OUT 01		

	MOV	BL,5	
	CALL	90	

	JMP Start	; Jump back to the start which will cause a infinte loop as there is no exit condition.

	
; ===== Time delay ==========================================
	ORG	90	; Moves the looping code to 90 in the ram so that it does not overwrite any data

	PUSH	BL	; Save BL on the stack.
	PUSHF		; Save the CPU flags on the stack.
Rep:
	DEC	BL	; decreases the BL variable
	JNZ	REP	; Goes to the rep if BL is not zero

	POPF		; Restore the CPU flags from the stack.
	POP	BL	; Restore BL from the stack.

	RET		; Return to the previous location from before the procedure.

; ==========================================================
	END		; Termenates the program but as the program is stuck in a infinte loop it will never end