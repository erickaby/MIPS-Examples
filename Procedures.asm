.data
	message: .asciiz "This is a test message. \nHello World.\n"
.text
	main:
		jal displayMessage
		
		addi $s0, $zero, 5
		
		# Print number 5 to the screen
		li $v0, 1
		add $a0, $zero, $s0
		syscall
		
		# Tell the system that the program is done
		li $v0, 10
		syscall
		
	displayMessage:
		li $v0, 4 # Command to print out text
		la $a0, message
		syscall
		
		jr $ra # Returns back to where the procudure was called.
