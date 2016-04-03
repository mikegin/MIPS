.globl fini
.text
main: #---------------------

addi $s0, $0, 0    # s0 = 0
addi $v0, $0, 5    # v0 = readInt
syscall
add  $t0, $0, $v0  # t0.nextInt()

addi $t5, $0, 0    # t5 = 0
loop:
slt  $t2, $t5, $t0 # t5<t0, t2 = 1 if true
beq  $t2, $0, XX   # if t2 = 0, jump to XX
add  $s0, $s0, $t5 # s0+=t5
addi $t5, $t5, 1   # t5++
j loop

XX:
addi $v0, $0, 1 # service #1
add  $a0, $0, $s0 # printInt
syscall # do print

#---------------------
fini: jr $ra # return
