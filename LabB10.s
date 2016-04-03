.text
main: 
#---------------------
addi $t0, $0, 60
addi $t1, $0, 7
mult  $t0, $t1
mflo $a0
mfhi $a1

addi $v0, $0, 1   # service #1
add  $s0, $0, $a0 # print lo
syscall
add  $s1, $0, $a1 # print hi
syscall           # do print 

#---------------------
fini: jr $ra # return
