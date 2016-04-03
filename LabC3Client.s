      .text
main: lw     $4,  0x10010000($0)
      addi   $v0, $0, 1
      syscall
	
      add    $a0, $0, ' '	
      addi   $v0, $0, 11		
      syscall
	
      addi   $t0, $0, -1
      lb     $a0, MAX($t0)
      addi   $v0, $0, 1
      syscall
 
      jr $ra