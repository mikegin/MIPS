.globl fini
.text
main: #---------------------
addi $v0, $0, 5 # v0 = readInt
syscall
add $t0, $0, $v0

sll $a0, $t0, 1 #times 2
addi $v0, $0, 1   # service #1
add  $a3, $0, $a0 # print t2
syscall           # do print

sll $a1, $t0, 4 #times 16
addi $v0, $0, 1   # service #1
add  $a3, $0, $a1 # print t2
syscall           # do print

add $t2, $a0, $a1 #times 18

addi $v0, $0, 1   # service #1
add  $a3, $0, $t2 # print t2
syscall           # do print
#---------------------
fini: jr $ra # return
