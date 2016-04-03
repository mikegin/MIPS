       .globl MAX
       .globl SIZE	
#-----------------------------
       .data
MAX:   .word 2147483646;
SIZE:  .byte 33;
count: .word 0
       .half 4		 
#-----------------------------
.text
        .globl getCount
#-----------------------------
        .text
#-----------------------------
getCount: 
	lw $v0, count($0)
	jr $ra