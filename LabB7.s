.globl fini
.text
main: #---------------------
addi $v0, $0, 5 # v0 = readInt
syscall
add $t0, $0, $v0
addi $t1, $0, 7 # t1 = 7
add $t2, $t0, $t1 # t2 = t0+t1
sub $t3, $t0, $t1 #t3 = t0-t1
addi $t4, $0, 0 #t4 = 0
add $t5, $0, 5 #give t5 some random initial value
#---------------------
addi $v0, $0, 1 # service #1
slt $t5, $t0, $t1 #t0<t1 if 1 or t0>t1 if 0
bne $t5, $t4, XX
add $a0, $0, $t3 # else printInt
j YY
XX: add $a0, $0, $t2 # printInt
YY: syscall # do print
#---------------------
fini: jr $ra # return
