.data
inputText: .asciiz "Enter number of Natural numbers you want to calculate: "

.text
li $v0, 4
la $a0, inputText
syscall

li $v0, 5
syscall

move $a0, $v0
li $a1, 0
li $a2, 1
jal function

li $v0, 1
move $a0, $a1
syscall 

li $v0, 10
syscall


function:
add $a1, $a1, $a2
beq $a2, $a0, exit
add $a2, $a2, 1
j function 

exit:
jr $ra