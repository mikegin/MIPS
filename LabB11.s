.text
main: #---------------------
addi $t0, $0, -60

sra  $a0, $t0, 2
addi $v0, $0, 1   # service #1
add  $a1, $0, $a0 # print a0
syscall           # do print

addi $v0, $0, 11  # service #11
addi  $a1, $0, ' ' # print a0
syscall           # do print

sll  $a0, $t0, 2
addi $v0, $0, 1   # service #1
add  $a1, $0, $a0 # print a0
syscall           # do print

#---------------------
fini: jr $ra 
