      .text
main: lw     $a0, MAX($0)
      addi   $v0, $0, 1
      syscall
	
      add $a0, $0, ' '	
      addi $v0, $0, 11		
      syscall
	
      lbu    $a0, SIZE($0)
      addi   $v0, $0, 1
      syscall
 
      jr $ra