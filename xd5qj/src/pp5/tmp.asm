	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  Person_InitPerson:
	# BeginFunc 32
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 32	# decrement sp to make space for locals/temps
	# _tmp0 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -8($fp)	# spill _tmp0 from $t2 to $fp-8
	# _tmp1 = this + _tmp0
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t1, -8($fp)	# fill _tmp0 to $t1 from $fp-8
	  add $t2, $t0, $t1	
	  sw $t2, -12($fp)	# spill _tmp1 from $t2 to $fp-12
	# *(_tmp1) = f
	  lw $t0, 8($fp)	# fill f to $t0 from $fp+8
	  lw $t2, -12($fp)	# fill _tmp1 to $t2 from $fp-12
	  sw $t0, 0($t2) 	# store with offset
	# _tmp2 = 8
	  li $t2, 8		# load constant value 8 into $t2
	  sw $t2, -16($fp)	# spill _tmp2 from $t2 to $fp-16
	# _tmp3 = this + _tmp2
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t1, -16($fp)	# fill _tmp2 to $t1 from $fp-16
	  add $t2, $t0, $t1	
	  sw $t2, -20($fp)	# spill _tmp3 from $t2 to $fp-20
	# *(_tmp3) = l
	  lw $t0, 12($fp)	# fill l to $t0 from $fp+12
	  lw $t2, -20($fp)	# fill _tmp3 to $t2 from $fp-20
	  sw $t0, 0($t2) 	# store with offset
	# _tmp4 = 12
	  li $t2, 12		# load constant value 12 into $t2
	  sw $t2, -24($fp)	# spill _tmp4 from $t2 to $fp-24
	# _tmp5 = this + _tmp4
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t1, -24($fp)	# fill _tmp4 to $t1 from $fp-24
	  add $t2, $t0, $t1	
	  sw $t2, -28($fp)	# spill _tmp5 from $t2 to $fp-28
	# *(_tmp5) = p
	  lw $t0, 16($fp)	# fill p to $t0 from $fp+16
	  lw $t2, -28($fp)	# fill _tmp5 to $t2 from $fp-28
	  sw $t0, 0($t2) 	# store with offset
	# _tmp6 = 16
	  li $t2, 16		# load constant value 16 into $t2
	  sw $t2, -32($fp)	# spill _tmp6 from $t2 to $fp-32
	# _tmp7 = this + _tmp6
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t1, -32($fp)	# fill _tmp6 to $t1 from $fp-32
	  add $t2, $t0, $t1	
	  sw $t2, -36($fp)	# spill _tmp7 from $t2 to $fp-36
	# *(_tmp7) = a
	  lw $t0, 20($fp)	# fill a to $t0 from $fp+20
	  lw $t2, -36($fp)	# fill _tmp7 to $t2 from $fp-36
	  sw $t0, 0($t2) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  Person_SetFirstName:
	# BeginFunc 8
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 8	# decrement sp to make space for locals/temps
	# _tmp0 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -8($fp)	# spill _tmp0 from $t2 to $fp-8
	# _tmp1 = this + _tmp0
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t1, -8($fp)	# fill _tmp0 to $t1 from $fp-8
	  add $t2, $t0, $t1	
	  sw $t2, -12($fp)	# spill _tmp1 from $t2 to $fp-12
	# *(_tmp1) = f
	  lw $t0, 8($fp)	# fill f to $t0 from $fp+8
	  lw $t2, -12($fp)	# fill _tmp1 to $t2 from $fp-12
	  sw $t0, 0($t2) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  Person_GetFirstName:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp0 = *(this + 4)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 4($t0) 	# load with offset
	  sw $t2, -8($fp)	# spill _tmp0 from $t2 to $fp-8
	# Return _tmp0
	  lw $t2, -8($fp)	# fill _tmp0 to $t2 from $fp-8
	  move $v0, $t2		# assign return value into $v0
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  Person_SetLastName:
	# BeginFunc 8
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 8	# decrement sp to make space for locals/temps
	# _tmp0 = 8
	  li $t2, 8		# load constant value 8 into $t2
	  sw $t2, -8($fp)	# spill _tmp0 from $t2 to $fp-8
	# _tmp1 = this + _tmp0
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t1, -8($fp)	# fill _tmp0 to $t1 from $fp-8
	  add $t2, $t0, $t1	
	  sw $t2, -12($fp)	# spill _tmp1 from $t2 to $fp-12
	# *(_tmp1) = l
	  lw $t0, 8($fp)	# fill l to $t0 from $fp+8
	  lw $t2, -12($fp)	# fill _tmp1 to $t2 from $fp-12
	  sw $t0, 0($t2) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  Person_GetLastName:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp0 = *(this + 8)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 8($t0) 	# load with offset
	  sw $t2, -8($fp)	# spill _tmp0 from $t2 to $fp-8
	# Return _tmp0
	  lw $t2, -8($fp)	# fill _tmp0 to $t2 from $fp-8
	  move $v0, $t2		# assign return value into $v0
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  Person_SetPhoneNumber:
	# BeginFunc 8
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 8	# decrement sp to make space for locals/temps
	# _tmp0 = 12
	  li $t2, 12		# load constant value 12 into $t2
	  sw $t2, -8($fp)	# spill _tmp0 from $t2 to $fp-8
	# _tmp1 = this + _tmp0
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t1, -8($fp)	# fill _tmp0 to $t1 from $fp-8
	  add $t2, $t0, $t1	
	  sw $t2, -12($fp)	# spill _tmp1 from $t2 to $fp-12
	# *(_tmp1) = p
	  lw $t0, 8($fp)	# fill p to $t0 from $fp+8
	  lw $t2, -12($fp)	# fill _tmp1 to $t2 from $fp-12
	  sw $t0, 0($t2) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  Person_GetPhoneNumber:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp0 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -8($fp)	# spill _tmp0 from $t2 to $fp-8
	# Return _tmp0
	  lw $t2, -8($fp)	# fill _tmp0 to $t2 from $fp-8
	  move $v0, $t2		# assign return value into $v0
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  Person_SetAddress:
	# BeginFunc 8
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 8	# decrement sp to make space for locals/temps
	# _tmp0 = 16
	  li $t2, 16		# load constant value 16 into $t2
	  sw $t2, -8($fp)	# spill _tmp0 from $t2 to $fp-8
	# _tmp1 = this + _tmp0
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t1, -8($fp)	# fill _tmp0 to $t1 from $fp-8
	  add $t2, $t0, $t1	
	  sw $t2, -12($fp)	# spill _tmp1 from $t2 to $fp-12
	# *(_tmp1) = a
	  lw $t0, 8($fp)	# fill a to $t0 from $fp+8
	  lw $t2, -12($fp)	# fill _tmp1 to $t2 from $fp-12
	  sw $t0, 0($t2) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  Person_GetAddress:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp0 = *(this + 16)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 16($t0) 	# load with offset
	  sw $t2, -8($fp)	# spill _tmp0 from $t2 to $fp-8
	# Return _tmp0
	  lw $t2, -8($fp)	# fill _tmp0 to $t2 from $fp-8
	  move $v0, $t2		# assign return value into $v0
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  Person_IsNamed:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp0 = *(this + 4)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 4($t0) 	# load with offset
	  sw $t2, -8($fp)	# spill _tmp0 from $t2 to $fp-8
	# PushParam _tmp0
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill _tmp0 to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam name
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, 8($fp)	# fill name to $t0 from $fp+8
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp1 = LCall _StringEqual
	  jal _StringEqual   	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -12($fp)	# spill _tmp1 from $t2 to $fp-12
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp2 = *(this + 8)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 8($t0) 	# load with offset
	  sw $t2, -16($fp)	# spill _tmp2 from $t2 to $fp-16
	# PushParam _tmp2
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -16($fp)	# fill _tmp2 to $t0 from $fp-16
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam name
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, 8($fp)	# fill name to $t0 from $fp+8
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp3 = LCall _StringEqual
	  jal _StringEqual   	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -20($fp)	# spill _tmp3 from $t2 to $fp-20
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp4 = _tmp1 || _tmp3
	  lw $t0, -12($fp)	# fill _tmp1 to $t0 from $fp-12
	  lw $t1, -20($fp)	# fill _tmp3 to $t1 from $fp-20
	  or $t2, $t0, $t1	
	  sw $t2, -24($fp)	# spill _tmp4 from $t2 to $fp-24
	# Return _tmp4
	  lw $t2, -24($fp)	# fill _tmp4 to $t2 from $fp-24
	  move $v0, $t2		# assign return value into $v0
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  Person_PrintInfo:
	# BeginFunc 48
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 48	# decrement sp to make space for locals/temps
	# _tmp0 = "First Name: "
	  .data			# create string constant marked with label
	  _string1: .asciiz "First Name: "
	  .text
	  la $t2, _string1	# load label
	  sw $t2, -8($fp)	# spill _tmp0 from $t2 to $fp-8
	# PushParam _tmp0
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill _tmp0 to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp1 = *(this + 4)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 4($t0) 	# load with offset
	  sw $t2, -12($fp)	# spill _tmp1 from $t2 to $fp-12
	# PushParam _tmp1
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill _tmp1 to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp2 = "\n"
	  .data			# create string constant marked with label
	  _string2: .asciiz "\n"
	  .text
	  la $t2, _string2	# load label
	  sw $t2, -16($fp)	# spill _tmp2 from $t2 to $fp-16
	# PushParam _tmp2
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -16($fp)	# fill _tmp2 to $t0 from $fp-16
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp3 = "Last Name: "
	  .data			# create string constant marked with label
	  _string3: .asciiz "Last Name: "
	  .text
	  la $t2, _string3	# load label
	  sw $t2, -20($fp)	# spill _tmp3 from $t2 to $fp-20
	# PushParam _tmp3
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -20($fp)	# fill _tmp3 to $t0 from $fp-20
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp4 = *(this + 8)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 8($t0) 	# load with offset
	  sw $t2, -24($fp)	# spill _tmp4 from $t2 to $fp-24
	# PushParam _tmp4
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -24($fp)	# fill _tmp4 to $t0 from $fp-24
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp5 = "\n"
	  .data			# create string constant marked with label
	  _string4: .asciiz "\n"
	  .text
	  la $t2, _string4	# load label
	  sw $t2, -28($fp)	# spill _tmp5 from $t2 to $fp-28
	# PushParam _tmp5
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -28($fp)	# fill _tmp5 to $t0 from $fp-28
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp6 = "Phone Number: "
	  .data			# create string constant marked with label
	  _string5: .asciiz "Phone Number: "
	  .text
	  la $t2, _string5	# load label
	  sw $t2, -32($fp)	# spill _tmp6 from $t2 to $fp-32
	# PushParam _tmp6
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -32($fp)	# fill _tmp6 to $t0 from $fp-32
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp7 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -36($fp)	# spill _tmp7 from $t2 to $fp-36
	# PushParam _tmp7
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -36($fp)	# fill _tmp7 to $t0 from $fp-36
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp8 = "\n"
	  .data			# create string constant marked with label
	  _string6: .asciiz "\n"
	  .text
	  la $t2, _string6	# load label
	  sw $t2, -40($fp)	# spill _tmp8 from $t2 to $fp-40
	# PushParam _tmp8
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -40($fp)	# fill _tmp8 to $t0 from $fp-40
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp9 = "Address: "
	  .data			# create string constant marked with label
	  _string7: .asciiz "Address: "
	  .text
	  la $t2, _string7	# load label
	  sw $t2, -44($fp)	# spill _tmp9 from $t2 to $fp-44
	# PushParam _tmp9
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -44($fp)	# fill _tmp9 to $t0 from $fp-44
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp10 = *(this + 16)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 16($t0) 	# load with offset
	  sw $t2, -48($fp)	# spill _tmp10 from $t2 to $fp-48
	# PushParam _tmp10
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -48($fp)	# fill _tmp10 to $t0 from $fp-48
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp11 = "\n"
	  .data			# create string constant marked with label
	  _string8: .asciiz "\n"
	  .text
	  la $t2, _string8	# load label
	  sw $t2, -52($fp)	# spill _tmp11 from $t2 to $fp-52
	# PushParam _tmp11
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -52($fp)	# fill _tmp11 to $t0 from $fp-52
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
	# VTable for class Person
	  .data
	  .align 2
	  Person:		# label for class Person vtable
	  .word Person_InitPerson
	  .word Person_SetFirstName
	  .word Person_GetFirstName
	  .word Person_SetLastName
	  .word Person_GetLastName
	  .word Person_SetPhoneNumber
	  .word Person_GetPhoneNumber
	  .word Person_SetAddress
	  .word Person_GetAddress
	  .word Person_IsNamed
	  .word Person_PrintInfo
	  .text
  Database_InitDatabase:
	# BeginFunc 56
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 56	# decrement sp to make space for locals/temps
	# _tmp0 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -8($fp)	# spill _tmp0 from $t2 to $fp-8
	# _tmp1 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -12($fp)	# spill _tmp1 from $t2 to $fp-12
	# _tmp2 = this + _tmp1
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t1, -12($fp)	# fill _tmp1 to $t1 from $fp-12
	  add $t2, $t0, $t1	
	  sw $t2, -16($fp)	# spill _tmp2 from $t2 to $fp-16
	# *(_tmp2) = _tmp0
	  lw $t0, -8($fp)	# fill _tmp0 to $t0 from $fp-8
	  lw $t2, -16($fp)	# fill _tmp2 to $t2 from $fp-16
	  sw $t0, 0($t2) 	# store with offset
	# _tmp3 = 8
	  li $t2, 8		# load constant value 8 into $t2
	  sw $t2, -20($fp)	# spill _tmp3 from $t2 to $fp-20
	# _tmp4 = this + _tmp3
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t1, -20($fp)	# fill _tmp3 to $t1 from $fp-20
	  add $t2, $t0, $t1	
	  sw $t2, -24($fp)	# spill _tmp4 from $t2 to $fp-24
	# *(_tmp4) = size
	  lw $t0, 8($fp)	# fill size to $t0 from $fp+8
	  lw $t2, -24($fp)	# fill _tmp4 to $t2 from $fp-24
	  sw $t0, 0($t2) 	# store with offset
	# _tmp5 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -28($fp)	# spill _tmp5 from $t2 to $fp-28
	# _tmp6 = size < _tmp5
	  lw $t0, 8($fp)	# fill size to $t0 from $fp+8
	  lw $t1, -28($fp)	# fill _tmp5 to $t1 from $fp-28
	  slt $t2, $t0, $t1	
	  sw $t2, -32($fp)	# spill _tmp6 from $t2 to $fp-32
	# IfZ _tmp6 Goto allocate_0
	  lw $t0, -32($fp)	# fill _tmp6 to $t0 from $fp-32
	  beqz $t0, allocate_0	# branch if _tmp6 is zero 
	# _tmp7 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string9: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t2, _string9	# load label
	  sw $t2, -36($fp)	# spill _tmp7 from $t2 to $fp-36
	# PushParam _tmp7
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -36($fp)	# fill _tmp7 to $t0 from $fp-36
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  allocate_0:
	# _tmp8 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -40($fp)	# spill _tmp8 from $t2 to $fp-40
	# _tmp9 = size * _tmp8
	  lw $t0, 8($fp)	# fill size to $t0 from $fp+8
	  lw $t1, -40($fp)	# fill _tmp8 to $t1 from $fp-40
	  mul $t2, $t0, $t1	
	  sw $t2, -44($fp)	# spill _tmp9 from $t2 to $fp-44
	# _tmp10 = _tmp9 + _tmp8
	  lw $t0, -44($fp)	# fill _tmp9 to $t0 from $fp-44
	  lw $t1, -40($fp)	# fill _tmp8 to $t1 from $fp-40
	  add $t2, $t0, $t1	
	  sw $t2, -48($fp)	# spill _tmp10 from $t2 to $fp-48
	# PushParam _tmp10
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -48($fp)	# fill _tmp10 to $t0 from $fp-48
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp11 = LCall _Alloc
	  jal _Alloc         	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -52($fp)	# spill _tmp11 from $t2 to $fp-52
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp11) = size
	  lw $t0, 8($fp)	# fill size to $t0 from $fp+8
	  lw $t2, -52($fp)	# fill _tmp11 to $t2 from $fp-52
	  sw $t0, 0($t2) 	# store with offset
	# _tmp12 = 12
	  li $t2, 12		# load constant value 12 into $t2
	  sw $t2, -56($fp)	# spill _tmp12 from $t2 to $fp-56
	# _tmp13 = this + _tmp12
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t1, -56($fp)	# fill _tmp12 to $t1 from $fp-56
	  add $t2, $t0, $t1	
	  sw $t2, -60($fp)	# spill _tmp13 from $t2 to $fp-60
	# *(_tmp13) = _tmp11
	  lw $t0, -52($fp)	# fill _tmp11 to $t0 from $fp-52
	  lw $t2, -60($fp)	# fill _tmp13 to $t2 from $fp-60
	  sw $t0, 0($t2) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  Database_Search:
	# BeginFunc 216
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 216	# decrement sp to make space for locals/temps
	# LCall _PrintLine
	  jal _PrintLine     	# jump to function
	# _tmp3 = "Enter the name of the person you would like to fi..."
	  .data			# create string constant marked with label
	  _string10: .asciiz "Enter the name of the person you would like to find: "
	  .text
	  la $t2, _string10	# load label
	  sw $t2, -20($fp)	# spill _tmp3 from $t2 to $fp-20
	# PushParam _tmp3
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -20($fp)	# fill _tmp3 to $t0 from $fp-20
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp4 = LCall _ReadLine
	  jal _ReadLine      	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -24($fp)	# spill _tmp4 from $t2 to $fp-24
	# name = _tmp4
	  lw $t2, -24($fp)	# fill _tmp4 to $t2 from $fp-24
	  sw $t2, -12($fp)	# spill name from $t2 to $fp-12
	# _tmp5 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -28($fp)	# spill _tmp5 from $t2 to $fp-28
	# found = _tmp5
	  lw $t2, -28($fp)	# fill _tmp5 to $t2 from $fp-28
	  sw $t2, -16($fp)	# spill found from $t2 to $fp-16
	# _tmp6 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -32($fp)	# spill _tmp6 from $t2 to $fp-32
	# i = _tmp6
	  lw $t2, -32($fp)	# fill _tmp6 to $t2 from $fp-32
	  sw $t2, -8($fp)	# spill i from $t2 to $fp-8
  loopBegin_1:
	# _tmp7 = *(this + 4)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 4($t0) 	# load with offset
	  sw $t2, -36($fp)	# spill _tmp7 from $t2 to $fp-36
	# _tmp8 = i < _tmp7
	  lw $t0, -8($fp)	# fill i to $t0 from $fp-8
	  lw $t1, -36($fp)	# fill _tmp7 to $t1 from $fp-36
	  slt $t2, $t0, $t1	
	  sw $t2, -40($fp)	# spill _tmp8 from $t2 to $fp-40
	# IfZ _tmp8 Goto loopEnd_2
	  lw $t0, -40($fp)	# fill _tmp8 to $t0 from $fp-40
	  beqz $t0, loopEnd_2	# branch if _tmp8 is zero 
	# _tmp9 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -44($fp)	# spill _tmp9 from $t2 to $fp-44
	# _tmp10 = *(_tmp9)
	  lw $t0, -44($fp)	# fill _tmp9 to $t0 from $fp-44
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -48($fp)	# spill _tmp10 from $t2 to $fp-48
	# _tmp11 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -52($fp)	# spill _tmp11 from $t2 to $fp-52
	# _tmp12 = i < _tmp11
	  lw $t0, -8($fp)	# fill i to $t0 from $fp-8
	  lw $t1, -52($fp)	# fill _tmp11 to $t1 from $fp-52
	  slt $t2, $t0, $t1	
	  sw $t2, -56($fp)	# spill _tmp12 from $t2 to $fp-56
	# _tmp13 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -60($fp)	# spill _tmp13 from $t2 to $fp-60
	# _tmp14 = _tmp10 - _tmp13
	  lw $t0, -48($fp)	# fill _tmp10 to $t0 from $fp-48
	  lw $t1, -60($fp)	# fill _tmp13 to $t1 from $fp-60
	  sub $t2, $t0, $t1	
	  sw $t2, -64($fp)	# spill _tmp14 from $t2 to $fp-64
	# _tmp15 = _tmp14 < i
	  lw $t0, -64($fp)	# fill _tmp14 to $t0 from $fp-64
	  lw $t1, -8($fp)	# fill i to $t1 from $fp-8
	  slt $t2, $t0, $t1	
	  sw $t2, -68($fp)	# spill _tmp15 from $t2 to $fp-68
	# _tmp16 = _tmp12 || _tmp15
	  lw $t0, -56($fp)	# fill _tmp12 to $t0 from $fp-56
	  lw $t1, -68($fp)	# fill _tmp15 to $t1 from $fp-68
	  or $t2, $t0, $t1	
	  sw $t2, -72($fp)	# spill _tmp16 from $t2 to $fp-72
	# IfZ _tmp16 Goto arrayAcc_3
	  lw $t0, -72($fp)	# fill _tmp16 to $t0 from $fp-72
	  beqz $t0, arrayAcc_3	# branch if _tmp16 is zero 
	# _tmp17 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string11: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string11	# load label
	  sw $t2, -76($fp)	# spill _tmp17 from $t2 to $fp-76
	# PushParam _tmp17
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -76($fp)	# fill _tmp17 to $t0 from $fp-76
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_3:
	# _tmp18 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -80($fp)	# spill _tmp18 from $t2 to $fp-80
	# _tmp19 = i * _tmp18
	  lw $t0, -8($fp)	# fill i to $t0 from $fp-8
	  lw $t1, -80($fp)	# fill _tmp18 to $t1 from $fp-80
	  mul $t2, $t0, $t1	
	  sw $t2, -84($fp)	# spill _tmp19 from $t2 to $fp-84
	# _tmp20 = _tmp9 + _tmp19
	  lw $t0, -44($fp)	# fill _tmp9 to $t0 from $fp-44
	  lw $t1, -84($fp)	# fill _tmp19 to $t1 from $fp-84
	  add $t2, $t0, $t1	
	  sw $t2, -88($fp)	# spill _tmp20 from $t2 to $fp-88
	# _tmp21 = _tmp20 + _tmp18
	  lw $t0, -88($fp)	# fill _tmp20 to $t0 from $fp-88
	  lw $t1, -80($fp)	# fill _tmp18 to $t1 from $fp-80
	  add $t2, $t0, $t1	
	  sw $t2, -92($fp)	# spill _tmp21 from $t2 to $fp-92
	# _tmp22 = *(_tmp21)
	  lw $t0, -92($fp)	# fill _tmp21 to $t0 from $fp-92
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -96($fp)	# spill _tmp22 from $t2 to $fp-96
	# _tmp23 = *(_tmp22)
	  lw $t0, -96($fp)	# fill _tmp22 to $t0 from $fp-96
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -100($fp)	# spill _tmp23 from $t2 to $fp-100
	# _tmp24 = *(_tmp23 + 36)
	  lw $t0, -100($fp)	# fill _tmp23 to $t0 from $fp-100
	  lw $t2, 36($t0) 	# load with offset
	  sw $t2, -104($fp)	# spill _tmp24 from $t2 to $fp-104
	# PushParam name
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill name to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam _tmp22
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -96($fp)	# fill _tmp22 to $t0 from $fp-96
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp25 = ACall _tmp24
	  lw $t0, -104($fp)	# fill _tmp24 to $t0 from $fp-104
	  jalr $t0            	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -108($fp)	# spill _tmp25 from $t2 to $fp-108
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# IfZ _tmp25 Goto else_4
	  lw $t0, -108($fp)	# fill _tmp25 to $t0 from $fp-108
	  beqz $t0, else_4	# branch if _tmp25 is zero 
	# _tmp26 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -112($fp)	# spill _tmp26 from $t2 to $fp-112
	# _tmp27 = found == _tmp26
	  lw $t0, -16($fp)	# fill found to $t0 from $fp-16
	  lw $t1, -112($fp)	# fill _tmp26 to $t1 from $fp-112
	  seq $t2, $t0, $t1	
	  sw $t2, -116($fp)	# spill _tmp27 from $t2 to $fp-116
	# IfZ _tmp27 Goto else_6
	  lw $t0, -116($fp)	# fill _tmp27 to $t0 from $fp-116
	  beqz $t0, else_6	# branch if _tmp27 is zero 
	# _tmp28 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -120($fp)	# spill _tmp28 from $t2 to $fp-120
	# found = _tmp28
	  lw $t2, -120($fp)	# fill _tmp28 to $t2 from $fp-120
	  sw $t2, -16($fp)	# spill found from $t2 to $fp-16
	# _tmp29 = "\nListing people with name '"
	  .data			# create string constant marked with label
	  _string12: .asciiz "\nListing people with name '"
	  .text
	  la $t2, _string12	# load label
	  sw $t2, -124($fp)	# spill _tmp29 from $t2 to $fp-124
	# PushParam _tmp29
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -124($fp)	# fill _tmp29 to $t0 from $fp-124
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam name
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill name to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp30 = "'...\n"
	  .data			# create string constant marked with label
	  _string13: .asciiz "'...\n"
	  .text
	  la $t2, _string13	# load label
	  sw $t2, -128($fp)	# spill _tmp30 from $t2 to $fp-128
	# PushParam _tmp30
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -128($fp)	# fill _tmp30 to $t0 from $fp-128
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _PrintLine
	  jal _PrintLine     	# jump to function
	# Goto endif_7
	  b endif_7		# unconditional branch
  else_6:
  endif_7:
	# _tmp31 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -132($fp)	# spill _tmp31 from $t2 to $fp-132
	# _tmp32 = *(_tmp31)
	  lw $t0, -132($fp)	# fill _tmp31 to $t0 from $fp-132
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -136($fp)	# spill _tmp32 from $t2 to $fp-136
	# _tmp33 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -140($fp)	# spill _tmp33 from $t2 to $fp-140
	# _tmp34 = i < _tmp33
	  lw $t0, -8($fp)	# fill i to $t0 from $fp-8
	  lw $t1, -140($fp)	# fill _tmp33 to $t1 from $fp-140
	  slt $t2, $t0, $t1	
	  sw $t2, -144($fp)	# spill _tmp34 from $t2 to $fp-144
	# _tmp35 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -148($fp)	# spill _tmp35 from $t2 to $fp-148
	# _tmp36 = _tmp32 - _tmp35
	  lw $t0, -136($fp)	# fill _tmp32 to $t0 from $fp-136
	  lw $t1, -148($fp)	# fill _tmp35 to $t1 from $fp-148
	  sub $t2, $t0, $t1	
	  sw $t2, -152($fp)	# spill _tmp36 from $t2 to $fp-152
	# _tmp37 = _tmp36 < i
	  lw $t0, -152($fp)	# fill _tmp36 to $t0 from $fp-152
	  lw $t1, -8($fp)	# fill i to $t1 from $fp-8
	  slt $t2, $t0, $t1	
	  sw $t2, -156($fp)	# spill _tmp37 from $t2 to $fp-156
	# _tmp38 = _tmp34 || _tmp37
	  lw $t0, -144($fp)	# fill _tmp34 to $t0 from $fp-144
	  lw $t1, -156($fp)	# fill _tmp37 to $t1 from $fp-156
	  or $t2, $t0, $t1	
	  sw $t2, -160($fp)	# spill _tmp38 from $t2 to $fp-160
	# IfZ _tmp38 Goto arrayAcc_8
	  lw $t0, -160($fp)	# fill _tmp38 to $t0 from $fp-160
	  beqz $t0, arrayAcc_8	# branch if _tmp38 is zero 
	# _tmp39 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string14: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string14	# load label
	  sw $t2, -164($fp)	# spill _tmp39 from $t2 to $fp-164
	# PushParam _tmp39
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -164($fp)	# fill _tmp39 to $t0 from $fp-164
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_8:
	# _tmp40 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -168($fp)	# spill _tmp40 from $t2 to $fp-168
	# _tmp41 = i * _tmp40
	  lw $t0, -8($fp)	# fill i to $t0 from $fp-8
	  lw $t1, -168($fp)	# fill _tmp40 to $t1 from $fp-168
	  mul $t2, $t0, $t1	
	  sw $t2, -172($fp)	# spill _tmp41 from $t2 to $fp-172
	# _tmp42 = _tmp31 + _tmp41
	  lw $t0, -132($fp)	# fill _tmp31 to $t0 from $fp-132
	  lw $t1, -172($fp)	# fill _tmp41 to $t1 from $fp-172
	  add $t2, $t0, $t1	
	  sw $t2, -176($fp)	# spill _tmp42 from $t2 to $fp-176
	# _tmp43 = _tmp42 + _tmp40
	  lw $t0, -176($fp)	# fill _tmp42 to $t0 from $fp-176
	  lw $t1, -168($fp)	# fill _tmp40 to $t1 from $fp-168
	  add $t2, $t0, $t1	
	  sw $t2, -180($fp)	# spill _tmp43 from $t2 to $fp-180
	# _tmp44 = *(_tmp43)
	  lw $t0, -180($fp)	# fill _tmp43 to $t0 from $fp-180
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -184($fp)	# spill _tmp44 from $t2 to $fp-184
	# _tmp45 = *(_tmp44)
	  lw $t0, -184($fp)	# fill _tmp44 to $t0 from $fp-184
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -188($fp)	# spill _tmp45 from $t2 to $fp-188
	# _tmp46 = *(_tmp45 + 40)
	  lw $t0, -188($fp)	# fill _tmp45 to $t0 from $fp-188
	  lw $t2, 40($t0) 	# load with offset
	  sw $t2, -192($fp)	# spill _tmp46 from $t2 to $fp-192
	# PushParam _tmp44
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -184($fp)	# fill _tmp44 to $t0 from $fp-184
	  sw $t0, 4($sp)	# copy param value to stack
	# ACall _tmp46
	  lw $t0, -192($fp)	# fill _tmp46 to $t0 from $fp-192
	  jalr $t0            	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp47 = "\n"
	  .data			# create string constant marked with label
	  _string15: .asciiz "\n"
	  .text
	  la $t2, _string15	# load label
	  sw $t2, -196($fp)	# spill _tmp47 from $t2 to $fp-196
	# PushParam _tmp47
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -196($fp)	# fill _tmp47 to $t0 from $fp-196
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# Goto endif_5
	  b endif_5		# unconditional branch
  else_4:
  endif_5:
	# _tmp48 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -200($fp)	# spill _tmp48 from $t2 to $fp-200
	# _tmp49 = i + _tmp48
	  lw $t0, -8($fp)	# fill i to $t0 from $fp-8
	  lw $t1, -200($fp)	# fill _tmp48 to $t1 from $fp-200
	  add $t2, $t0, $t1	
	  sw $t2, -204($fp)	# spill _tmp49 from $t2 to $fp-204
	# i = _tmp49
	  lw $t2, -204($fp)	# fill _tmp49 to $t2 from $fp-204
	  sw $t2, -8($fp)	# spill i from $t2 to $fp-8
	# Goto loopBegin_1
	  b loopBegin_1		# unconditional branch
  loopEnd_2:
	# _tmp50 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -208($fp)	# spill _tmp50 from $t2 to $fp-208
	# _tmp51 = found == _tmp50
	  lw $t0, -16($fp)	# fill found to $t0 from $fp-16
	  lw $t1, -208($fp)	# fill _tmp50 to $t1 from $fp-208
	  seq $t2, $t0, $t1	
	  sw $t2, -212($fp)	# spill _tmp51 from $t2 to $fp-212
	# IfZ _tmp51 Goto else_9
	  lw $t0, -212($fp)	# fill _tmp51 to $t0 from $fp-212
	  beqz $t0, else_9	# branch if _tmp51 is zero 
	# _tmp52 = "\n"
	  .data			# create string constant marked with label
	  _string16: .asciiz "\n"
	  .text
	  la $t2, _string16	# load label
	  sw $t2, -216($fp)	# spill _tmp52 from $t2 to $fp-216
	# PushParam _tmp52
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -216($fp)	# fill _tmp52 to $t0 from $fp-216
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam name
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill name to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp53 = " not found!\n"
	  .data			# create string constant marked with label
	  _string17: .asciiz " not found!\n"
	  .text
	  la $t2, _string17	# load label
	  sw $t2, -220($fp)	# spill _tmp53 from $t2 to $fp-220
	# PushParam _tmp53
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -220($fp)	# fill _tmp53 to $t0 from $fp-220
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# Goto endif_10
	  b endif_10		# unconditional branch
  else_9:
  endif_10:
	# LCall _PrintLine
	  jal _PrintLine     	# jump to function
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  Database_PersonExists:
	# BeginFunc 184
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 184	# decrement sp to make space for locals/temps
	# _tmp1 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -12($fp)	# spill _tmp1 from $t2 to $fp-12
	# i = _tmp1
	  lw $t2, -12($fp)	# fill _tmp1 to $t2 from $fp-12
	  sw $t2, -8($fp)	# spill i from $t2 to $fp-8
  loopBegin_11:
	# _tmp2 = *(this + 4)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 4($t0) 	# load with offset
	  sw $t2, -16($fp)	# spill _tmp2 from $t2 to $fp-16
	# _tmp3 = i < _tmp2
	  lw $t0, -8($fp)	# fill i to $t0 from $fp-8
	  lw $t1, -16($fp)	# fill _tmp2 to $t1 from $fp-16
	  slt $t2, $t0, $t1	
	  sw $t2, -20($fp)	# spill _tmp3 from $t2 to $fp-20
	# IfZ _tmp3 Goto loopEnd_12
	  lw $t0, -20($fp)	# fill _tmp3 to $t0 from $fp-20
	  beqz $t0, loopEnd_12	# branch if _tmp3 is zero 
	# _tmp4 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -24($fp)	# spill _tmp4 from $t2 to $fp-24
	# _tmp5 = *(_tmp4)
	  lw $t0, -24($fp)	# fill _tmp4 to $t0 from $fp-24
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -28($fp)	# spill _tmp5 from $t2 to $fp-28
	# _tmp6 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -32($fp)	# spill _tmp6 from $t2 to $fp-32
	# _tmp7 = i < _tmp6
	  lw $t0, -8($fp)	# fill i to $t0 from $fp-8
	  lw $t1, -32($fp)	# fill _tmp6 to $t1 from $fp-32
	  slt $t2, $t0, $t1	
	  sw $t2, -36($fp)	# spill _tmp7 from $t2 to $fp-36
	# _tmp8 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -40($fp)	# spill _tmp8 from $t2 to $fp-40
	# _tmp9 = _tmp5 - _tmp8
	  lw $t0, -28($fp)	# fill _tmp5 to $t0 from $fp-28
	  lw $t1, -40($fp)	# fill _tmp8 to $t1 from $fp-40
	  sub $t2, $t0, $t1	
	  sw $t2, -44($fp)	# spill _tmp9 from $t2 to $fp-44
	# _tmp10 = _tmp9 < i
	  lw $t0, -44($fp)	# fill _tmp9 to $t0 from $fp-44
	  lw $t1, -8($fp)	# fill i to $t1 from $fp-8
	  slt $t2, $t0, $t1	
	  sw $t2, -48($fp)	# spill _tmp10 from $t2 to $fp-48
	# _tmp11 = _tmp7 || _tmp10
	  lw $t0, -36($fp)	# fill _tmp7 to $t0 from $fp-36
	  lw $t1, -48($fp)	# fill _tmp10 to $t1 from $fp-48
	  or $t2, $t0, $t1	
	  sw $t2, -52($fp)	# spill _tmp11 from $t2 to $fp-52
	# IfZ _tmp11 Goto arrayAcc_13
	  lw $t0, -52($fp)	# fill _tmp11 to $t0 from $fp-52
	  beqz $t0, arrayAcc_13	# branch if _tmp11 is zero 
	# _tmp12 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string18: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string18	# load label
	  sw $t2, -56($fp)	# spill _tmp12 from $t2 to $fp-56
	# PushParam _tmp12
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -56($fp)	# fill _tmp12 to $t0 from $fp-56
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_13:
	# _tmp13 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -60($fp)	# spill _tmp13 from $t2 to $fp-60
	# _tmp14 = i * _tmp13
	  lw $t0, -8($fp)	# fill i to $t0 from $fp-8
	  lw $t1, -60($fp)	# fill _tmp13 to $t1 from $fp-60
	  mul $t2, $t0, $t1	
	  sw $t2, -64($fp)	# spill _tmp14 from $t2 to $fp-64
	# _tmp15 = _tmp4 + _tmp14
	  lw $t0, -24($fp)	# fill _tmp4 to $t0 from $fp-24
	  lw $t1, -64($fp)	# fill _tmp14 to $t1 from $fp-64
	  add $t2, $t0, $t1	
	  sw $t2, -68($fp)	# spill _tmp15 from $t2 to $fp-68
	# _tmp16 = _tmp15 + _tmp13
	  lw $t0, -68($fp)	# fill _tmp15 to $t0 from $fp-68
	  lw $t1, -60($fp)	# fill _tmp13 to $t1 from $fp-60
	  add $t2, $t0, $t1	
	  sw $t2, -72($fp)	# spill _tmp16 from $t2 to $fp-72
	# _tmp17 = *(_tmp16)
	  lw $t0, -72($fp)	# fill _tmp16 to $t0 from $fp-72
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -76($fp)	# spill _tmp17 from $t2 to $fp-76
	# _tmp18 = *(_tmp17)
	  lw $t0, -76($fp)	# fill _tmp17 to $t0 from $fp-76
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -80($fp)	# spill _tmp18 from $t2 to $fp-80
	# _tmp19 = *(_tmp18 + 8)
	  lw $t0, -80($fp)	# fill _tmp18 to $t0 from $fp-80
	  lw $t2, 8($t0) 	# load with offset
	  sw $t2, -84($fp)	# spill _tmp19 from $t2 to $fp-84
	# PushParam _tmp17
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -76($fp)	# fill _tmp17 to $t0 from $fp-76
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp20 = ACall _tmp19
	  lw $t0, -84($fp)	# fill _tmp19 to $t0 from $fp-84
	  jalr $t0            	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -88($fp)	# spill _tmp20 from $t2 to $fp-88
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, 8($fp)	# fill f to $t0 from $fp+8
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam _tmp20
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -88($fp)	# fill _tmp20 to $t0 from $fp-88
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp21 = LCall _StringEqual
	  jal _StringEqual   	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -92($fp)	# spill _tmp21 from $t2 to $fp-92
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp22 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -96($fp)	# spill _tmp22 from $t2 to $fp-96
	# _tmp23 = *(_tmp22)
	  lw $t0, -96($fp)	# fill _tmp22 to $t0 from $fp-96
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -100($fp)	# spill _tmp23 from $t2 to $fp-100
	# _tmp24 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -104($fp)	# spill _tmp24 from $t2 to $fp-104
	# _tmp25 = i < _tmp24
	  lw $t0, -8($fp)	# fill i to $t0 from $fp-8
	  lw $t1, -104($fp)	# fill _tmp24 to $t1 from $fp-104
	  slt $t2, $t0, $t1	
	  sw $t2, -108($fp)	# spill _tmp25 from $t2 to $fp-108
	# _tmp26 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -112($fp)	# spill _tmp26 from $t2 to $fp-112
	# _tmp27 = _tmp23 - _tmp26
	  lw $t0, -100($fp)	# fill _tmp23 to $t0 from $fp-100
	  lw $t1, -112($fp)	# fill _tmp26 to $t1 from $fp-112
	  sub $t2, $t0, $t1	
	  sw $t2, -116($fp)	# spill _tmp27 from $t2 to $fp-116
	# _tmp28 = _tmp27 < i
	  lw $t0, -116($fp)	# fill _tmp27 to $t0 from $fp-116
	  lw $t1, -8($fp)	# fill i to $t1 from $fp-8
	  slt $t2, $t0, $t1	
	  sw $t2, -120($fp)	# spill _tmp28 from $t2 to $fp-120
	# _tmp29 = _tmp25 || _tmp28
	  lw $t0, -108($fp)	# fill _tmp25 to $t0 from $fp-108
	  lw $t1, -120($fp)	# fill _tmp28 to $t1 from $fp-120
	  or $t2, $t0, $t1	
	  sw $t2, -124($fp)	# spill _tmp29 from $t2 to $fp-124
	# IfZ _tmp29 Goto arrayAcc_14
	  lw $t0, -124($fp)	# fill _tmp29 to $t0 from $fp-124
	  beqz $t0, arrayAcc_14	# branch if _tmp29 is zero 
	# _tmp30 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string19: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string19	# load label
	  sw $t2, -128($fp)	# spill _tmp30 from $t2 to $fp-128
	# PushParam _tmp30
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -128($fp)	# fill _tmp30 to $t0 from $fp-128
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_14:
	# _tmp31 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -132($fp)	# spill _tmp31 from $t2 to $fp-132
	# _tmp32 = i * _tmp31
	  lw $t0, -8($fp)	# fill i to $t0 from $fp-8
	  lw $t1, -132($fp)	# fill _tmp31 to $t1 from $fp-132
	  mul $t2, $t0, $t1	
	  sw $t2, -136($fp)	# spill _tmp32 from $t2 to $fp-136
	# _tmp33 = _tmp22 + _tmp32
	  lw $t0, -96($fp)	# fill _tmp22 to $t0 from $fp-96
	  lw $t1, -136($fp)	# fill _tmp32 to $t1 from $fp-136
	  add $t2, $t0, $t1	
	  sw $t2, -140($fp)	# spill _tmp33 from $t2 to $fp-140
	# _tmp34 = _tmp33 + _tmp31
	  lw $t0, -140($fp)	# fill _tmp33 to $t0 from $fp-140
	  lw $t1, -132($fp)	# fill _tmp31 to $t1 from $fp-132
	  add $t2, $t0, $t1	
	  sw $t2, -144($fp)	# spill _tmp34 from $t2 to $fp-144
	# _tmp35 = *(_tmp34)
	  lw $t0, -144($fp)	# fill _tmp34 to $t0 from $fp-144
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -148($fp)	# spill _tmp35 from $t2 to $fp-148
	# _tmp36 = *(_tmp35)
	  lw $t0, -148($fp)	# fill _tmp35 to $t0 from $fp-148
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -152($fp)	# spill _tmp36 from $t2 to $fp-152
	# _tmp37 = *(_tmp36 + 16)
	  lw $t0, -152($fp)	# fill _tmp36 to $t0 from $fp-152
	  lw $t2, 16($t0) 	# load with offset
	  sw $t2, -156($fp)	# spill _tmp37 from $t2 to $fp-156
	# PushParam _tmp35
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -148($fp)	# fill _tmp35 to $t0 from $fp-148
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp38 = ACall _tmp37
	  lw $t0, -156($fp)	# fill _tmp37 to $t0 from $fp-156
	  jalr $t0            	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -160($fp)	# spill _tmp38 from $t2 to $fp-160
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam l
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, 12($fp)	# fill l to $t0 from $fp+12
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam _tmp38
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -160($fp)	# fill _tmp38 to $t0 from $fp-160
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp39 = LCall _StringEqual
	  jal _StringEqual   	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -164($fp)	# spill _tmp39 from $t2 to $fp-164
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp40 = _tmp21 && _tmp39
	  lw $t0, -92($fp)	# fill _tmp21 to $t0 from $fp-92
	  lw $t1, -164($fp)	# fill _tmp39 to $t1 from $fp-164
	  and $t2, $t0, $t1	
	  sw $t2, -168($fp)	# spill _tmp40 from $t2 to $fp-168
	# IfZ _tmp40 Goto else_15
	  lw $t0, -168($fp)	# fill _tmp40 to $t0 from $fp-168
	  beqz $t0, else_15	# branch if _tmp40 is zero 
	# Return i
	  lw $t2, -8($fp)	# fill i to $t2 from $fp-8
	  move $v0, $t2		# assign return value into $v0
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
	# Goto endif_16
	  b endif_16		# unconditional branch
  else_15:
  endif_16:
	# _tmp41 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -172($fp)	# spill _tmp41 from $t2 to $fp-172
	# _tmp42 = i + _tmp41
	  lw $t0, -8($fp)	# fill i to $t0 from $fp-8
	  lw $t1, -172($fp)	# fill _tmp41 to $t1 from $fp-172
	  add $t2, $t0, $t1	
	  sw $t2, -176($fp)	# spill _tmp42 from $t2 to $fp-176
	# i = _tmp42
	  lw $t2, -176($fp)	# fill _tmp42 to $t2 from $fp-176
	  sw $t2, -8($fp)	# spill i from $t2 to $fp-8
	# Goto loopBegin_11
	  b loopBegin_11		# unconditional branch
  loopEnd_12:
	# _tmp43 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -180($fp)	# spill _tmp43 from $t2 to $fp-180
	# _tmp44 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -184($fp)	# spill _tmp44 from $t2 to $fp-184
	# _tmp45 = _tmp43 - _tmp44
	  lw $t0, -180($fp)	# fill _tmp43 to $t0 from $fp-180
	  lw $t1, -184($fp)	# fill _tmp44 to $t1 from $fp-184
	  sub $t2, $t0, $t1	
	  sw $t2, -188($fp)	# spill _tmp45 from $t2 to $fp-188
	# Return _tmp45
	  lw $t2, -188($fp)	# fill _tmp45 to $t2 from $fp-188
	  move $v0, $t2		# assign return value into $v0
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  Database_Edit:
	# BeginFunc 752
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 752	# decrement sp to make space for locals/temps
	# LCall _PrintLine
	  jal _PrintLine     	# jump to function
	# _tmp5 = "Editting person...\n\n"
	  .data			# create string constant marked with label
	  _string20: .asciiz "Editting person...\n\n"
	  .text
	  la $t2, _string20	# load label
	  sw $t2, -28($fp)	# spill _tmp5 from $t2 to $fp-28
	# PushParam _tmp5
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -28($fp)	# fill _tmp5 to $t0 from $fp-28
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp6 = "Enter first name: "
	  .data			# create string constant marked with label
	  _string21: .asciiz "Enter first name: "
	  .text
	  la $t2, _string21	# load label
	  sw $t2, -32($fp)	# spill _tmp6 from $t2 to $fp-32
	# PushParam _tmp6
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -32($fp)	# fill _tmp6 to $t0 from $fp-32
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp7 = LCall _ReadLine
	  jal _ReadLine      	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -36($fp)	# spill _tmp7 from $t2 to $fp-36
	# f = _tmp7
	  lw $t2, -36($fp)	# fill _tmp7 to $t2 from $fp-36
	  sw $t2, -8($fp)	# spill f from $t2 to $fp-8
	# _tmp8 = "Enter last name: "
	  .data			# create string constant marked with label
	  _string22: .asciiz "Enter last name: "
	  .text
	  la $t2, _string22	# load label
	  sw $t2, -40($fp)	# spill _tmp8 from $t2 to $fp-40
	# PushParam _tmp8
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -40($fp)	# fill _tmp8 to $t0 from $fp-40
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp9 = LCall _ReadLine
	  jal _ReadLine      	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -44($fp)	# spill _tmp9 from $t2 to $fp-44
	# l = _tmp9
	  lw $t2, -44($fp)	# fill _tmp9 to $t2 from $fp-44
	  sw $t2, -12($fp)	# spill l from $t2 to $fp-12
	# _tmp10 = *(this)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -48($fp)	# spill _tmp10 from $t2 to $fp-48
	# _tmp11 = *(_tmp10 + 8)
	  lw $t0, -48($fp)	# fill _tmp10 to $t0 from $fp-48
	  lw $t2, 8($t0) 	# load with offset
	  sw $t2, -52($fp)	# spill _tmp11 from $t2 to $fp-52
	# PushParam l
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill l to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill f to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam this
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp12 = ACall _tmp11
	  lw $t0, -52($fp)	# fill _tmp11 to $t0 from $fp-52
	  jalr $t0            	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -56($fp)	# spill _tmp12 from $t2 to $fp-56
	# PopParams 12
	  add $sp, $sp, 12	# pop params off stack
	# index = _tmp12
	  lw $t2, -56($fp)	# fill _tmp12 to $t2 from $fp-56
	  sw $t2, -24($fp)	# spill index from $t2 to $fp-24
	# _tmp13 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -60($fp)	# spill _tmp13 from $t2 to $fp-60
	# _tmp14 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -64($fp)	# spill _tmp14 from $t2 to $fp-64
	# _tmp15 = _tmp13 - _tmp14
	  lw $t0, -60($fp)	# fill _tmp13 to $t0 from $fp-60
	  lw $t1, -64($fp)	# fill _tmp14 to $t1 from $fp-64
	  sub $t2, $t0, $t1	
	  sw $t2, -68($fp)	# spill _tmp15 from $t2 to $fp-68
	# _tmp16 = index == _tmp15
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -68($fp)	# fill _tmp15 to $t1 from $fp-68
	  seq $t2, $t0, $t1	
	  sw $t2, -72($fp)	# spill _tmp16 from $t2 to $fp-72
	# IfZ _tmp16 Goto else_17
	  lw $t0, -72($fp)	# fill _tmp16 to $t0 from $fp-72
	  beqz $t0, else_17	# branch if _tmp16 is zero 
	# _tmp17 = "\n"
	  .data			# create string constant marked with label
	  _string23: .asciiz "\n"
	  .text
	  la $t2, _string23	# load label
	  sw $t2, -76($fp)	# spill _tmp17 from $t2 to $fp-76
	# PushParam _tmp17
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -76($fp)	# fill _tmp17 to $t0 from $fp-76
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam l
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill l to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp18 = ", "
	  .data			# create string constant marked with label
	  _string24: .asciiz ", "
	  .text
	  la $t2, _string24	# load label
	  sw $t2, -80($fp)	# spill _tmp18 from $t2 to $fp-80
	# PushParam _tmp18
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -80($fp)	# fill _tmp18 to $t0 from $fp-80
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill f to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp19 = " not found!\n"
	  .data			# create string constant marked with label
	  _string25: .asciiz " not found!\n"
	  .text
	  la $t2, _string25	# load label
	  sw $t2, -84($fp)	# spill _tmp19 from $t2 to $fp-84
	# PushParam _tmp19
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -84($fp)	# fill _tmp19 to $t0 from $fp-84
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _PrintLine
	  jal _PrintLine     	# jump to function
	# Return 
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
	# Goto endif_18
	  b endif_18		# unconditional branch
  else_17:
  endif_18:
	# _tmp20 = "\n"
	  .data			# create string constant marked with label
	  _string26: .asciiz "\n"
	  .text
	  la $t2, _string26	# load label
	  sw $t2, -88($fp)	# spill _tmp20 from $t2 to $fp-88
	# PushParam _tmp20
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -88($fp)	# fill _tmp20 to $t0 from $fp-88
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam l
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill l to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp21 = ", "
	  .data			# create string constant marked with label
	  _string27: .asciiz ", "
	  .text
	  la $t2, _string27	# load label
	  sw $t2, -92($fp)	# spill _tmp21 from $t2 to $fp-92
	# PushParam _tmp21
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -92($fp)	# fill _tmp21 to $t0 from $fp-92
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill f to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp22 = " found...\n\n"
	  .data			# create string constant marked with label
	  _string28: .asciiz " found...\n\n"
	  .text
	  la $t2, _string28	# load label
	  sw $t2, -96($fp)	# spill _tmp22 from $t2 to $fp-96
	# PushParam _tmp22
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -96($fp)	# fill _tmp22 to $t0 from $fp-96
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp23 = "Old first name: "
	  .data			# create string constant marked with label
	  _string29: .asciiz "Old first name: "
	  .text
	  la $t2, _string29	# load label
	  sw $t2, -100($fp)	# spill _tmp23 from $t2 to $fp-100
	# PushParam _tmp23
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -100($fp)	# fill _tmp23 to $t0 from $fp-100
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp24 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -104($fp)	# spill _tmp24 from $t2 to $fp-104
	# _tmp25 = *(_tmp24)
	  lw $t0, -104($fp)	# fill _tmp24 to $t0 from $fp-104
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -108($fp)	# spill _tmp25 from $t2 to $fp-108
	# _tmp26 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -112($fp)	# spill _tmp26 from $t2 to $fp-112
	# _tmp27 = index < _tmp26
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -112($fp)	# fill _tmp26 to $t1 from $fp-112
	  slt $t2, $t0, $t1	
	  sw $t2, -116($fp)	# spill _tmp27 from $t2 to $fp-116
	# _tmp28 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -120($fp)	# spill _tmp28 from $t2 to $fp-120
	# _tmp29 = _tmp25 - _tmp28
	  lw $t0, -108($fp)	# fill _tmp25 to $t0 from $fp-108
	  lw $t1, -120($fp)	# fill _tmp28 to $t1 from $fp-120
	  sub $t2, $t0, $t1	
	  sw $t2, -124($fp)	# spill _tmp29 from $t2 to $fp-124
	# _tmp30 = _tmp29 < index
	  lw $t0, -124($fp)	# fill _tmp29 to $t0 from $fp-124
	  lw $t1, -24($fp)	# fill index to $t1 from $fp-24
	  slt $t2, $t0, $t1	
	  sw $t2, -128($fp)	# spill _tmp30 from $t2 to $fp-128
	# _tmp31 = _tmp27 || _tmp30
	  lw $t0, -116($fp)	# fill _tmp27 to $t0 from $fp-116
	  lw $t1, -128($fp)	# fill _tmp30 to $t1 from $fp-128
	  or $t2, $t0, $t1	
	  sw $t2, -132($fp)	# spill _tmp31 from $t2 to $fp-132
	# IfZ _tmp31 Goto arrayAcc_19
	  lw $t0, -132($fp)	# fill _tmp31 to $t0 from $fp-132
	  beqz $t0, arrayAcc_19	# branch if _tmp31 is zero 
	# _tmp32 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string30: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string30	# load label
	  sw $t2, -136($fp)	# spill _tmp32 from $t2 to $fp-136
	# PushParam _tmp32
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -136($fp)	# fill _tmp32 to $t0 from $fp-136
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_19:
	# _tmp33 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -140($fp)	# spill _tmp33 from $t2 to $fp-140
	# _tmp34 = index * _tmp33
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -140($fp)	# fill _tmp33 to $t1 from $fp-140
	  mul $t2, $t0, $t1	
	  sw $t2, -144($fp)	# spill _tmp34 from $t2 to $fp-144
	# _tmp35 = _tmp24 + _tmp34
	  lw $t0, -104($fp)	# fill _tmp24 to $t0 from $fp-104
	  lw $t1, -144($fp)	# fill _tmp34 to $t1 from $fp-144
	  add $t2, $t0, $t1	
	  sw $t2, -148($fp)	# spill _tmp35 from $t2 to $fp-148
	# _tmp36 = _tmp35 + _tmp33
	  lw $t0, -148($fp)	# fill _tmp35 to $t0 from $fp-148
	  lw $t1, -140($fp)	# fill _tmp33 to $t1 from $fp-140
	  add $t2, $t0, $t1	
	  sw $t2, -152($fp)	# spill _tmp36 from $t2 to $fp-152
	# _tmp37 = *(_tmp36)
	  lw $t0, -152($fp)	# fill _tmp36 to $t0 from $fp-152
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -156($fp)	# spill _tmp37 from $t2 to $fp-156
	# _tmp38 = *(_tmp37)
	  lw $t0, -156($fp)	# fill _tmp37 to $t0 from $fp-156
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -160($fp)	# spill _tmp38 from $t2 to $fp-160
	# _tmp39 = *(_tmp38 + 8)
	  lw $t0, -160($fp)	# fill _tmp38 to $t0 from $fp-160
	  lw $t2, 8($t0) 	# load with offset
	  sw $t2, -164($fp)	# spill _tmp39 from $t2 to $fp-164
	# PushParam _tmp37
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -156($fp)	# fill _tmp37 to $t0 from $fp-156
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp40 = ACall _tmp39
	  lw $t0, -164($fp)	# fill _tmp39 to $t0 from $fp-164
	  jalr $t0            	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -168($fp)	# spill _tmp40 from $t2 to $fp-168
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp40
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -168($fp)	# fill _tmp40 to $t0 from $fp-168
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp41 = "\n"
	  .data			# create string constant marked with label
	  _string31: .asciiz "\n"
	  .text
	  la $t2, _string31	# load label
	  sw $t2, -172($fp)	# spill _tmp41 from $t2 to $fp-172
	# PushParam _tmp41
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -172($fp)	# fill _tmp41 to $t0 from $fp-172
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp42 = "Enter new first name (or nothing to leave unchang..."
	  .data			# create string constant marked with label
	  _string32: .asciiz "Enter new first name (or nothing to leave unchanged): "
	  .text
	  la $t2, _string32	# load label
	  sw $t2, -176($fp)	# spill _tmp42 from $t2 to $fp-176
	# PushParam _tmp42
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -176($fp)	# fill _tmp42 to $t0 from $fp-176
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp43 = LCall _ReadLine
	  jal _ReadLine      	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -180($fp)	# spill _tmp43 from $t2 to $fp-180
	# f = _tmp43
	  lw $t2, -180($fp)	# fill _tmp43 to $t2 from $fp-180
	  sw $t2, -8($fp)	# spill f from $t2 to $fp-8
	# _tmp44 = ""
	  .data			# create string constant marked with label
	  _string33: .asciiz ""
	  .text
	  la $t2, _string33	# load label
	  sw $t2, -184($fp)	# spill _tmp44 from $t2 to $fp-184
	# PushParam _tmp44
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -184($fp)	# fill _tmp44 to $t0 from $fp-184
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill f to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp45 = LCall _StringEqual
	  jal _StringEqual   	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -188($fp)	# spill _tmp45 from $t2 to $fp-188
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp46 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -192($fp)	# spill _tmp46 from $t2 to $fp-192
	# _tmp47 = _tmp45 == _tmp46
	  lw $t0, -188($fp)	# fill _tmp45 to $t0 from $fp-188
	  lw $t1, -192($fp)	# fill _tmp46 to $t1 from $fp-192
	  seq $t2, $t0, $t1	
	  sw $t2, -196($fp)	# spill _tmp47 from $t2 to $fp-196
	# IfZ _tmp47 Goto else_20
	  lw $t0, -196($fp)	# fill _tmp47 to $t0 from $fp-196
	  beqz $t0, else_20	# branch if _tmp47 is zero 
	# _tmp48 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -200($fp)	# spill _tmp48 from $t2 to $fp-200
	# _tmp49 = *(_tmp48)
	  lw $t0, -200($fp)	# fill _tmp48 to $t0 from $fp-200
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -204($fp)	# spill _tmp49 from $t2 to $fp-204
	# _tmp50 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -208($fp)	# spill _tmp50 from $t2 to $fp-208
	# _tmp51 = index < _tmp50
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -208($fp)	# fill _tmp50 to $t1 from $fp-208
	  slt $t2, $t0, $t1	
	  sw $t2, -212($fp)	# spill _tmp51 from $t2 to $fp-212
	# _tmp52 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -216($fp)	# spill _tmp52 from $t2 to $fp-216
	# _tmp53 = _tmp49 - _tmp52
	  lw $t0, -204($fp)	# fill _tmp49 to $t0 from $fp-204
	  lw $t1, -216($fp)	# fill _tmp52 to $t1 from $fp-216
	  sub $t2, $t0, $t1	
	  sw $t2, -220($fp)	# spill _tmp53 from $t2 to $fp-220
	# _tmp54 = _tmp53 < index
	  lw $t0, -220($fp)	# fill _tmp53 to $t0 from $fp-220
	  lw $t1, -24($fp)	# fill index to $t1 from $fp-24
	  slt $t2, $t0, $t1	
	  sw $t2, -224($fp)	# spill _tmp54 from $t2 to $fp-224
	# _tmp55 = _tmp51 || _tmp54
	  lw $t0, -212($fp)	# fill _tmp51 to $t0 from $fp-212
	  lw $t1, -224($fp)	# fill _tmp54 to $t1 from $fp-224
	  or $t2, $t0, $t1	
	  sw $t2, -228($fp)	# spill _tmp55 from $t2 to $fp-228
	# IfZ _tmp55 Goto arrayAcc_22
	  lw $t0, -228($fp)	# fill _tmp55 to $t0 from $fp-228
	  beqz $t0, arrayAcc_22	# branch if _tmp55 is zero 
	# _tmp56 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string34: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string34	# load label
	  sw $t2, -232($fp)	# spill _tmp56 from $t2 to $fp-232
	# PushParam _tmp56
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -232($fp)	# fill _tmp56 to $t0 from $fp-232
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_22:
	# _tmp57 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -236($fp)	# spill _tmp57 from $t2 to $fp-236
	# _tmp58 = index * _tmp57
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -236($fp)	# fill _tmp57 to $t1 from $fp-236
	  mul $t2, $t0, $t1	
	  sw $t2, -240($fp)	# spill _tmp58 from $t2 to $fp-240
	# _tmp59 = _tmp48 + _tmp58
	  lw $t0, -200($fp)	# fill _tmp48 to $t0 from $fp-200
	  lw $t1, -240($fp)	# fill _tmp58 to $t1 from $fp-240
	  add $t2, $t0, $t1	
	  sw $t2, -244($fp)	# spill _tmp59 from $t2 to $fp-244
	# _tmp60 = _tmp59 + _tmp57
	  lw $t0, -244($fp)	# fill _tmp59 to $t0 from $fp-244
	  lw $t1, -236($fp)	# fill _tmp57 to $t1 from $fp-236
	  add $t2, $t0, $t1	
	  sw $t2, -248($fp)	# spill _tmp60 from $t2 to $fp-248
	# _tmp61 = *(_tmp60)
	  lw $t0, -248($fp)	# fill _tmp60 to $t0 from $fp-248
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -252($fp)	# spill _tmp61 from $t2 to $fp-252
	# _tmp62 = *(_tmp61)
	  lw $t0, -252($fp)	# fill _tmp61 to $t0 from $fp-252
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -256($fp)	# spill _tmp62 from $t2 to $fp-256
	# _tmp63 = *(_tmp62 + 4)
	  lw $t0, -256($fp)	# fill _tmp62 to $t0 from $fp-256
	  lw $t2, 4($t0) 	# load with offset
	  sw $t2, -260($fp)	# spill _tmp63 from $t2 to $fp-260
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill f to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam _tmp61
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -252($fp)	# fill _tmp61 to $t0 from $fp-252
	  sw $t0, 4($sp)	# copy param value to stack
	# ACall _tmp63
	  lw $t0, -260($fp)	# fill _tmp63 to $t0 from $fp-260
	  jalr $t0            	# jump to function
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# Goto endif_21
	  b endif_21		# unconditional branch
  else_20:
  endif_21:
	# _tmp64 = "Old last name: "
	  .data			# create string constant marked with label
	  _string35: .asciiz "Old last name: "
	  .text
	  la $t2, _string35	# load label
	  sw $t2, -264($fp)	# spill _tmp64 from $t2 to $fp-264
	# PushParam _tmp64
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -264($fp)	# fill _tmp64 to $t0 from $fp-264
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp65 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -268($fp)	# spill _tmp65 from $t2 to $fp-268
	# _tmp66 = *(_tmp65)
	  lw $t0, -268($fp)	# fill _tmp65 to $t0 from $fp-268
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -272($fp)	# spill _tmp66 from $t2 to $fp-272
	# _tmp67 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -276($fp)	# spill _tmp67 from $t2 to $fp-276
	# _tmp68 = index < _tmp67
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -276($fp)	# fill _tmp67 to $t1 from $fp-276
	  slt $t2, $t0, $t1	
	  sw $t2, -280($fp)	# spill _tmp68 from $t2 to $fp-280
	# _tmp69 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -284($fp)	# spill _tmp69 from $t2 to $fp-284
	# _tmp70 = _tmp66 - _tmp69
	  lw $t0, -272($fp)	# fill _tmp66 to $t0 from $fp-272
	  lw $t1, -284($fp)	# fill _tmp69 to $t1 from $fp-284
	  sub $t2, $t0, $t1	
	  sw $t2, -288($fp)	# spill _tmp70 from $t2 to $fp-288
	# _tmp71 = _tmp70 < index
	  lw $t0, -288($fp)	# fill _tmp70 to $t0 from $fp-288
	  lw $t1, -24($fp)	# fill index to $t1 from $fp-24
	  slt $t2, $t0, $t1	
	  sw $t2, -292($fp)	# spill _tmp71 from $t2 to $fp-292
	# _tmp72 = _tmp68 || _tmp71
	  lw $t0, -280($fp)	# fill _tmp68 to $t0 from $fp-280
	  lw $t1, -292($fp)	# fill _tmp71 to $t1 from $fp-292
	  or $t2, $t0, $t1	
	  sw $t2, -296($fp)	# spill _tmp72 from $t2 to $fp-296
	# IfZ _tmp72 Goto arrayAcc_23
	  lw $t0, -296($fp)	# fill _tmp72 to $t0 from $fp-296
	  beqz $t0, arrayAcc_23	# branch if _tmp72 is zero 
	# _tmp73 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string36: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string36	# load label
	  sw $t2, -300($fp)	# spill _tmp73 from $t2 to $fp-300
	# PushParam _tmp73
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -300($fp)	# fill _tmp73 to $t0 from $fp-300
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_23:
	# _tmp74 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -304($fp)	# spill _tmp74 from $t2 to $fp-304
	# _tmp75 = index * _tmp74
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -304($fp)	# fill _tmp74 to $t1 from $fp-304
	  mul $t2, $t0, $t1	
	  sw $t2, -308($fp)	# spill _tmp75 from $t2 to $fp-308
	# _tmp76 = _tmp65 + _tmp75
	  lw $t0, -268($fp)	# fill _tmp65 to $t0 from $fp-268
	  lw $t1, -308($fp)	# fill _tmp75 to $t1 from $fp-308
	  add $t2, $t0, $t1	
	  sw $t2, -312($fp)	# spill _tmp76 from $t2 to $fp-312
	# _tmp77 = _tmp76 + _tmp74
	  lw $t0, -312($fp)	# fill _tmp76 to $t0 from $fp-312
	  lw $t1, -304($fp)	# fill _tmp74 to $t1 from $fp-304
	  add $t2, $t0, $t1	
	  sw $t2, -316($fp)	# spill _tmp77 from $t2 to $fp-316
	# _tmp78 = *(_tmp77)
	  lw $t0, -316($fp)	# fill _tmp77 to $t0 from $fp-316
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -320($fp)	# spill _tmp78 from $t2 to $fp-320
	# _tmp79 = *(_tmp78)
	  lw $t0, -320($fp)	# fill _tmp78 to $t0 from $fp-320
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -324($fp)	# spill _tmp79 from $t2 to $fp-324
	# _tmp80 = *(_tmp79 + 16)
	  lw $t0, -324($fp)	# fill _tmp79 to $t0 from $fp-324
	  lw $t2, 16($t0) 	# load with offset
	  sw $t2, -328($fp)	# spill _tmp80 from $t2 to $fp-328
	# PushParam _tmp78
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -320($fp)	# fill _tmp78 to $t0 from $fp-320
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp81 = ACall _tmp80
	  lw $t0, -328($fp)	# fill _tmp80 to $t0 from $fp-328
	  jalr $t0            	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -332($fp)	# spill _tmp81 from $t2 to $fp-332
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp81
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -332($fp)	# fill _tmp81 to $t0 from $fp-332
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp82 = "\n"
	  .data			# create string constant marked with label
	  _string37: .asciiz "\n"
	  .text
	  la $t2, _string37	# load label
	  sw $t2, -336($fp)	# spill _tmp82 from $t2 to $fp-336
	# PushParam _tmp82
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -336($fp)	# fill _tmp82 to $t0 from $fp-336
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp83 = "Enter new first name (or nothing to leave unchang..."
	  .data			# create string constant marked with label
	  _string38: .asciiz "Enter new first name (or nothing to leave unchanged): "
	  .text
	  la $t2, _string38	# load label
	  sw $t2, -340($fp)	# spill _tmp83 from $t2 to $fp-340
	# PushParam _tmp83
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -340($fp)	# fill _tmp83 to $t0 from $fp-340
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp84 = LCall _ReadLine
	  jal _ReadLine      	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -344($fp)	# spill _tmp84 from $t2 to $fp-344
	# l = _tmp84
	  lw $t2, -344($fp)	# fill _tmp84 to $t2 from $fp-344
	  sw $t2, -12($fp)	# spill l from $t2 to $fp-12
	# _tmp85 = ""
	  .data			# create string constant marked with label
	  _string39: .asciiz ""
	  .text
	  la $t2, _string39	# load label
	  sw $t2, -348($fp)	# spill _tmp85 from $t2 to $fp-348
	# PushParam _tmp85
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -348($fp)	# fill _tmp85 to $t0 from $fp-348
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam l
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill l to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp86 = LCall _StringEqual
	  jal _StringEqual   	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -352($fp)	# spill _tmp86 from $t2 to $fp-352
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp87 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -356($fp)	# spill _tmp87 from $t2 to $fp-356
	# _tmp88 = _tmp86 == _tmp87
	  lw $t0, -352($fp)	# fill _tmp86 to $t0 from $fp-352
	  lw $t1, -356($fp)	# fill _tmp87 to $t1 from $fp-356
	  seq $t2, $t0, $t1	
	  sw $t2, -360($fp)	# spill _tmp88 from $t2 to $fp-360
	# IfZ _tmp88 Goto else_24
	  lw $t0, -360($fp)	# fill _tmp88 to $t0 from $fp-360
	  beqz $t0, else_24	# branch if _tmp88 is zero 
	# _tmp89 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -364($fp)	# spill _tmp89 from $t2 to $fp-364
	# _tmp90 = *(_tmp89)
	  lw $t0, -364($fp)	# fill _tmp89 to $t0 from $fp-364
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -368($fp)	# spill _tmp90 from $t2 to $fp-368
	# _tmp91 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -372($fp)	# spill _tmp91 from $t2 to $fp-372
	# _tmp92 = index < _tmp91
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -372($fp)	# fill _tmp91 to $t1 from $fp-372
	  slt $t2, $t0, $t1	
	  sw $t2, -376($fp)	# spill _tmp92 from $t2 to $fp-376
	# _tmp93 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -380($fp)	# spill _tmp93 from $t2 to $fp-380
	# _tmp94 = _tmp90 - _tmp93
	  lw $t0, -368($fp)	# fill _tmp90 to $t0 from $fp-368
	  lw $t1, -380($fp)	# fill _tmp93 to $t1 from $fp-380
	  sub $t2, $t0, $t1	
	  sw $t2, -384($fp)	# spill _tmp94 from $t2 to $fp-384
	# _tmp95 = _tmp94 < index
	  lw $t0, -384($fp)	# fill _tmp94 to $t0 from $fp-384
	  lw $t1, -24($fp)	# fill index to $t1 from $fp-24
	  slt $t2, $t0, $t1	
	  sw $t2, -388($fp)	# spill _tmp95 from $t2 to $fp-388
	# _tmp96 = _tmp92 || _tmp95
	  lw $t0, -376($fp)	# fill _tmp92 to $t0 from $fp-376
	  lw $t1, -388($fp)	# fill _tmp95 to $t1 from $fp-388
	  or $t2, $t0, $t1	
	  sw $t2, -392($fp)	# spill _tmp96 from $t2 to $fp-392
	# IfZ _tmp96 Goto arrayAcc_26
	  lw $t0, -392($fp)	# fill _tmp96 to $t0 from $fp-392
	  beqz $t0, arrayAcc_26	# branch if _tmp96 is zero 
	# _tmp97 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string40: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string40	# load label
	  sw $t2, -396($fp)	# spill _tmp97 from $t2 to $fp-396
	# PushParam _tmp97
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -396($fp)	# fill _tmp97 to $t0 from $fp-396
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_26:
	# _tmp98 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -400($fp)	# spill _tmp98 from $t2 to $fp-400
	# _tmp99 = index * _tmp98
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -400($fp)	# fill _tmp98 to $t1 from $fp-400
	  mul $t2, $t0, $t1	
	  sw $t2, -404($fp)	# spill _tmp99 from $t2 to $fp-404
	# _tmp100 = _tmp89 + _tmp99
	  lw $t0, -364($fp)	# fill _tmp89 to $t0 from $fp-364
	  lw $t1, -404($fp)	# fill _tmp99 to $t1 from $fp-404
	  add $t2, $t0, $t1	
	  sw $t2, -408($fp)	# spill _tmp100 from $t2 to $fp-408
	# _tmp101 = _tmp100 + _tmp98
	  lw $t0, -408($fp)	# fill _tmp100 to $t0 from $fp-408
	  lw $t1, -400($fp)	# fill _tmp98 to $t1 from $fp-400
	  add $t2, $t0, $t1	
	  sw $t2, -412($fp)	# spill _tmp101 from $t2 to $fp-412
	# _tmp102 = *(_tmp101)
	  lw $t0, -412($fp)	# fill _tmp101 to $t0 from $fp-412
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -416($fp)	# spill _tmp102 from $t2 to $fp-416
	# _tmp103 = *(_tmp102)
	  lw $t0, -416($fp)	# fill _tmp102 to $t0 from $fp-416
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -420($fp)	# spill _tmp103 from $t2 to $fp-420
	# _tmp104 = *(_tmp103 + 12)
	  lw $t0, -420($fp)	# fill _tmp103 to $t0 from $fp-420
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -424($fp)	# spill _tmp104 from $t2 to $fp-424
	# PushParam l
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill l to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam _tmp102
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -416($fp)	# fill _tmp102 to $t0 from $fp-416
	  sw $t0, 4($sp)	# copy param value to stack
	# ACall _tmp104
	  lw $t0, -424($fp)	# fill _tmp104 to $t0 from $fp-424
	  jalr $t0            	# jump to function
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# Goto endif_25
	  b endif_25		# unconditional branch
  else_24:
  endif_25:
	# _tmp105 = "Old phone number: "
	  .data			# create string constant marked with label
	  _string41: .asciiz "Old phone number: "
	  .text
	  la $t2, _string41	# load label
	  sw $t2, -428($fp)	# spill _tmp105 from $t2 to $fp-428
	# PushParam _tmp105
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -428($fp)	# fill _tmp105 to $t0 from $fp-428
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp106 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -432($fp)	# spill _tmp106 from $t2 to $fp-432
	# _tmp107 = *(_tmp106)
	  lw $t0, -432($fp)	# fill _tmp106 to $t0 from $fp-432
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -436($fp)	# spill _tmp107 from $t2 to $fp-436
	# _tmp108 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -440($fp)	# spill _tmp108 from $t2 to $fp-440
	# _tmp109 = index < _tmp108
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -440($fp)	# fill _tmp108 to $t1 from $fp-440
	  slt $t2, $t0, $t1	
	  sw $t2, -444($fp)	# spill _tmp109 from $t2 to $fp-444
	# _tmp110 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -448($fp)	# spill _tmp110 from $t2 to $fp-448
	# _tmp111 = _tmp107 - _tmp110
	  lw $t0, -436($fp)	# fill _tmp107 to $t0 from $fp-436
	  lw $t1, -448($fp)	# fill _tmp110 to $t1 from $fp-448
	  sub $t2, $t0, $t1	
	  sw $t2, -452($fp)	# spill _tmp111 from $t2 to $fp-452
	# _tmp112 = _tmp111 < index
	  lw $t0, -452($fp)	# fill _tmp111 to $t0 from $fp-452
	  lw $t1, -24($fp)	# fill index to $t1 from $fp-24
	  slt $t2, $t0, $t1	
	  sw $t2, -456($fp)	# spill _tmp112 from $t2 to $fp-456
	# _tmp113 = _tmp109 || _tmp112
	  lw $t0, -444($fp)	# fill _tmp109 to $t0 from $fp-444
	  lw $t1, -456($fp)	# fill _tmp112 to $t1 from $fp-456
	  or $t2, $t0, $t1	
	  sw $t2, -460($fp)	# spill _tmp113 from $t2 to $fp-460
	# IfZ _tmp113 Goto arrayAcc_27
	  lw $t0, -460($fp)	# fill _tmp113 to $t0 from $fp-460
	  beqz $t0, arrayAcc_27	# branch if _tmp113 is zero 
	# _tmp114 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string42: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string42	# load label
	  sw $t2, -464($fp)	# spill _tmp114 from $t2 to $fp-464
	# PushParam _tmp114
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -464($fp)	# fill _tmp114 to $t0 from $fp-464
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_27:
	# _tmp115 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -468($fp)	# spill _tmp115 from $t2 to $fp-468
	# _tmp116 = index * _tmp115
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -468($fp)	# fill _tmp115 to $t1 from $fp-468
	  mul $t2, $t0, $t1	
	  sw $t2, -472($fp)	# spill _tmp116 from $t2 to $fp-472
	# _tmp117 = _tmp106 + _tmp116
	  lw $t0, -432($fp)	# fill _tmp106 to $t0 from $fp-432
	  lw $t1, -472($fp)	# fill _tmp116 to $t1 from $fp-472
	  add $t2, $t0, $t1	
	  sw $t2, -476($fp)	# spill _tmp117 from $t2 to $fp-476
	# _tmp118 = _tmp117 + _tmp115
	  lw $t0, -476($fp)	# fill _tmp117 to $t0 from $fp-476
	  lw $t1, -468($fp)	# fill _tmp115 to $t1 from $fp-468
	  add $t2, $t0, $t1	
	  sw $t2, -480($fp)	# spill _tmp118 from $t2 to $fp-480
	# _tmp119 = *(_tmp118)
	  lw $t0, -480($fp)	# fill _tmp118 to $t0 from $fp-480
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -484($fp)	# spill _tmp119 from $t2 to $fp-484
	# _tmp120 = *(_tmp119)
	  lw $t0, -484($fp)	# fill _tmp119 to $t0 from $fp-484
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -488($fp)	# spill _tmp120 from $t2 to $fp-488
	# _tmp121 = *(_tmp120 + 24)
	  lw $t0, -488($fp)	# fill _tmp120 to $t0 from $fp-488
	  lw $t2, 24($t0) 	# load with offset
	  sw $t2, -492($fp)	# spill _tmp121 from $t2 to $fp-492
	# PushParam _tmp119
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -484($fp)	# fill _tmp119 to $t0 from $fp-484
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp122 = ACall _tmp121
	  lw $t0, -492($fp)	# fill _tmp121 to $t0 from $fp-492
	  jalr $t0            	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -496($fp)	# spill _tmp122 from $t2 to $fp-496
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp122
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -496($fp)	# fill _tmp122 to $t0 from $fp-496
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp123 = "\n"
	  .data			# create string constant marked with label
	  _string43: .asciiz "\n"
	  .text
	  la $t2, _string43	# load label
	  sw $t2, -500($fp)	# spill _tmp123 from $t2 to $fp-500
	# PushParam _tmp123
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -500($fp)	# fill _tmp123 to $t0 from $fp-500
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp124 = "Enter new first name (or nothing to leave unchang..."
	  .data			# create string constant marked with label
	  _string44: .asciiz "Enter new first name (or nothing to leave unchanged): "
	  .text
	  la $t2, _string44	# load label
	  sw $t2, -504($fp)	# spill _tmp124 from $t2 to $fp-504
	# PushParam _tmp124
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -504($fp)	# fill _tmp124 to $t0 from $fp-504
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp125 = LCall _ReadLine
	  jal _ReadLine      	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -508($fp)	# spill _tmp125 from $t2 to $fp-508
	# p = _tmp125
	  lw $t2, -508($fp)	# fill _tmp125 to $t2 from $fp-508
	  sw $t2, -16($fp)	# spill p from $t2 to $fp-16
	# _tmp126 = ""
	  .data			# create string constant marked with label
	  _string45: .asciiz ""
	  .text
	  la $t2, _string45	# load label
	  sw $t2, -512($fp)	# spill _tmp126 from $t2 to $fp-512
	# PushParam _tmp126
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -512($fp)	# fill _tmp126 to $t0 from $fp-512
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam p
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -16($fp)	# fill p to $t0 from $fp-16
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp127 = LCall _StringEqual
	  jal _StringEqual   	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -516($fp)	# spill _tmp127 from $t2 to $fp-516
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp128 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -520($fp)	# spill _tmp128 from $t2 to $fp-520
	# _tmp129 = _tmp127 == _tmp128
	  lw $t0, -516($fp)	# fill _tmp127 to $t0 from $fp-516
	  lw $t1, -520($fp)	# fill _tmp128 to $t1 from $fp-520
	  seq $t2, $t0, $t1	
	  sw $t2, -524($fp)	# spill _tmp129 from $t2 to $fp-524
	# IfZ _tmp129 Goto else_28
	  lw $t0, -524($fp)	# fill _tmp129 to $t0 from $fp-524
	  beqz $t0, else_28	# branch if _tmp129 is zero 
	# _tmp130 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -528($fp)	# spill _tmp130 from $t2 to $fp-528
	# _tmp131 = *(_tmp130)
	  lw $t0, -528($fp)	# fill _tmp130 to $t0 from $fp-528
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -532($fp)	# spill _tmp131 from $t2 to $fp-532
	# _tmp132 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -536($fp)	# spill _tmp132 from $t2 to $fp-536
	# _tmp133 = index < _tmp132
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -536($fp)	# fill _tmp132 to $t1 from $fp-536
	  slt $t2, $t0, $t1	
	  sw $t2, -540($fp)	# spill _tmp133 from $t2 to $fp-540
	# _tmp134 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -544($fp)	# spill _tmp134 from $t2 to $fp-544
	# _tmp135 = _tmp131 - _tmp134
	  lw $t0, -532($fp)	# fill _tmp131 to $t0 from $fp-532
	  lw $t1, -544($fp)	# fill _tmp134 to $t1 from $fp-544
	  sub $t2, $t0, $t1	
	  sw $t2, -548($fp)	# spill _tmp135 from $t2 to $fp-548
	# _tmp136 = _tmp135 < index
	  lw $t0, -548($fp)	# fill _tmp135 to $t0 from $fp-548
	  lw $t1, -24($fp)	# fill index to $t1 from $fp-24
	  slt $t2, $t0, $t1	
	  sw $t2, -552($fp)	# spill _tmp136 from $t2 to $fp-552
	# _tmp137 = _tmp133 || _tmp136
	  lw $t0, -540($fp)	# fill _tmp133 to $t0 from $fp-540
	  lw $t1, -552($fp)	# fill _tmp136 to $t1 from $fp-552
	  or $t2, $t0, $t1	
	  sw $t2, -556($fp)	# spill _tmp137 from $t2 to $fp-556
	# IfZ _tmp137 Goto arrayAcc_30
	  lw $t0, -556($fp)	# fill _tmp137 to $t0 from $fp-556
	  beqz $t0, arrayAcc_30	# branch if _tmp137 is zero 
	# _tmp138 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string46: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string46	# load label
	  sw $t2, -560($fp)	# spill _tmp138 from $t2 to $fp-560
	# PushParam _tmp138
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -560($fp)	# fill _tmp138 to $t0 from $fp-560
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_30:
	# _tmp139 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -564($fp)	# spill _tmp139 from $t2 to $fp-564
	# _tmp140 = index * _tmp139
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -564($fp)	# fill _tmp139 to $t1 from $fp-564
	  mul $t2, $t0, $t1	
	  sw $t2, -568($fp)	# spill _tmp140 from $t2 to $fp-568
	# _tmp141 = _tmp130 + _tmp140
	  lw $t0, -528($fp)	# fill _tmp130 to $t0 from $fp-528
	  lw $t1, -568($fp)	# fill _tmp140 to $t1 from $fp-568
	  add $t2, $t0, $t1	
	  sw $t2, -572($fp)	# spill _tmp141 from $t2 to $fp-572
	# _tmp142 = _tmp141 + _tmp139
	  lw $t0, -572($fp)	# fill _tmp141 to $t0 from $fp-572
	  lw $t1, -564($fp)	# fill _tmp139 to $t1 from $fp-564
	  add $t2, $t0, $t1	
	  sw $t2, -576($fp)	# spill _tmp142 from $t2 to $fp-576
	# _tmp143 = *(_tmp142)
	  lw $t0, -576($fp)	# fill _tmp142 to $t0 from $fp-576
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -580($fp)	# spill _tmp143 from $t2 to $fp-580
	# _tmp144 = *(_tmp143)
	  lw $t0, -580($fp)	# fill _tmp143 to $t0 from $fp-580
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -584($fp)	# spill _tmp144 from $t2 to $fp-584
	# _tmp145 = *(_tmp144 + 20)
	  lw $t0, -584($fp)	# fill _tmp144 to $t0 from $fp-584
	  lw $t2, 20($t0) 	# load with offset
	  sw $t2, -588($fp)	# spill _tmp145 from $t2 to $fp-588
	# PushParam p
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -16($fp)	# fill p to $t0 from $fp-16
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam _tmp143
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -580($fp)	# fill _tmp143 to $t0 from $fp-580
	  sw $t0, 4($sp)	# copy param value to stack
	# ACall _tmp145
	  lw $t0, -588($fp)	# fill _tmp145 to $t0 from $fp-588
	  jalr $t0            	# jump to function
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# Goto endif_29
	  b endif_29		# unconditional branch
  else_28:
  endif_29:
	# _tmp146 = "Old first name: "
	  .data			# create string constant marked with label
	  _string47: .asciiz "Old first name: "
	  .text
	  la $t2, _string47	# load label
	  sw $t2, -592($fp)	# spill _tmp146 from $t2 to $fp-592
	# PushParam _tmp146
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -592($fp)	# fill _tmp146 to $t0 from $fp-592
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp147 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -596($fp)	# spill _tmp147 from $t2 to $fp-596
	# _tmp148 = *(_tmp147)
	  lw $t0, -596($fp)	# fill _tmp147 to $t0 from $fp-596
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -600($fp)	# spill _tmp148 from $t2 to $fp-600
	# _tmp149 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -604($fp)	# spill _tmp149 from $t2 to $fp-604
	# _tmp150 = index < _tmp149
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -604($fp)	# fill _tmp149 to $t1 from $fp-604
	  slt $t2, $t0, $t1	
	  sw $t2, -608($fp)	# spill _tmp150 from $t2 to $fp-608
	# _tmp151 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -612($fp)	# spill _tmp151 from $t2 to $fp-612
	# _tmp152 = _tmp148 - _tmp151
	  lw $t0, -600($fp)	# fill _tmp148 to $t0 from $fp-600
	  lw $t1, -612($fp)	# fill _tmp151 to $t1 from $fp-612
	  sub $t2, $t0, $t1	
	  sw $t2, -616($fp)	# spill _tmp152 from $t2 to $fp-616
	# _tmp153 = _tmp152 < index
	  lw $t0, -616($fp)	# fill _tmp152 to $t0 from $fp-616
	  lw $t1, -24($fp)	# fill index to $t1 from $fp-24
	  slt $t2, $t0, $t1	
	  sw $t2, -620($fp)	# spill _tmp153 from $t2 to $fp-620
	# _tmp154 = _tmp150 || _tmp153
	  lw $t0, -608($fp)	# fill _tmp150 to $t0 from $fp-608
	  lw $t1, -620($fp)	# fill _tmp153 to $t1 from $fp-620
	  or $t2, $t0, $t1	
	  sw $t2, -624($fp)	# spill _tmp154 from $t2 to $fp-624
	# IfZ _tmp154 Goto arrayAcc_31
	  lw $t0, -624($fp)	# fill _tmp154 to $t0 from $fp-624
	  beqz $t0, arrayAcc_31	# branch if _tmp154 is zero 
	# _tmp155 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string48: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string48	# load label
	  sw $t2, -628($fp)	# spill _tmp155 from $t2 to $fp-628
	# PushParam _tmp155
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -628($fp)	# fill _tmp155 to $t0 from $fp-628
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_31:
	# _tmp156 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -632($fp)	# spill _tmp156 from $t2 to $fp-632
	# _tmp157 = index * _tmp156
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -632($fp)	# fill _tmp156 to $t1 from $fp-632
	  mul $t2, $t0, $t1	
	  sw $t2, -636($fp)	# spill _tmp157 from $t2 to $fp-636
	# _tmp158 = _tmp147 + _tmp157
	  lw $t0, -596($fp)	# fill _tmp147 to $t0 from $fp-596
	  lw $t1, -636($fp)	# fill _tmp157 to $t1 from $fp-636
	  add $t2, $t0, $t1	
	  sw $t2, -640($fp)	# spill _tmp158 from $t2 to $fp-640
	# _tmp159 = _tmp158 + _tmp156
	  lw $t0, -640($fp)	# fill _tmp158 to $t0 from $fp-640
	  lw $t1, -632($fp)	# fill _tmp156 to $t1 from $fp-632
	  add $t2, $t0, $t1	
	  sw $t2, -644($fp)	# spill _tmp159 from $t2 to $fp-644
	# _tmp160 = *(_tmp159)
	  lw $t0, -644($fp)	# fill _tmp159 to $t0 from $fp-644
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -648($fp)	# spill _tmp160 from $t2 to $fp-648
	# _tmp161 = *(_tmp160)
	  lw $t0, -648($fp)	# fill _tmp160 to $t0 from $fp-648
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -652($fp)	# spill _tmp161 from $t2 to $fp-652
	# _tmp162 = *(_tmp161 + 32)
	  lw $t0, -652($fp)	# fill _tmp161 to $t0 from $fp-652
	  lw $t2, 32($t0) 	# load with offset
	  sw $t2, -656($fp)	# spill _tmp162 from $t2 to $fp-656
	# PushParam _tmp160
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -648($fp)	# fill _tmp160 to $t0 from $fp-648
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp163 = ACall _tmp162
	  lw $t0, -656($fp)	# fill _tmp162 to $t0 from $fp-656
	  jalr $t0            	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -660($fp)	# spill _tmp163 from $t2 to $fp-660
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp163
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -660($fp)	# fill _tmp163 to $t0 from $fp-660
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp164 = "\n"
	  .data			# create string constant marked with label
	  _string49: .asciiz "\n"
	  .text
	  la $t2, _string49	# load label
	  sw $t2, -664($fp)	# spill _tmp164 from $t2 to $fp-664
	# PushParam _tmp164
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -664($fp)	# fill _tmp164 to $t0 from $fp-664
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp165 = "Enter new address (or nothing to leave unchanged)..."
	  .data			# create string constant marked with label
	  _string50: .asciiz "Enter new address (or nothing to leave unchanged): "
	  .text
	  la $t2, _string50	# load label
	  sw $t2, -668($fp)	# spill _tmp165 from $t2 to $fp-668
	# PushParam _tmp165
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -668($fp)	# fill _tmp165 to $t0 from $fp-668
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp166 = LCall _ReadLine
	  jal _ReadLine      	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -672($fp)	# spill _tmp166 from $t2 to $fp-672
	# a = _tmp166
	  lw $t2, -672($fp)	# fill _tmp166 to $t2 from $fp-672
	  sw $t2, -20($fp)	# spill a from $t2 to $fp-20
	# _tmp167 = ""
	  .data			# create string constant marked with label
	  _string51: .asciiz ""
	  .text
	  la $t2, _string51	# load label
	  sw $t2, -676($fp)	# spill _tmp167 from $t2 to $fp-676
	# PushParam _tmp167
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -676($fp)	# fill _tmp167 to $t0 from $fp-676
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam a
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -20($fp)	# fill a to $t0 from $fp-20
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp168 = LCall _StringEqual
	  jal _StringEqual   	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -680($fp)	# spill _tmp168 from $t2 to $fp-680
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp169 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -684($fp)	# spill _tmp169 from $t2 to $fp-684
	# _tmp170 = _tmp168 == _tmp169
	  lw $t0, -680($fp)	# fill _tmp168 to $t0 from $fp-680
	  lw $t1, -684($fp)	# fill _tmp169 to $t1 from $fp-684
	  seq $t2, $t0, $t1	
	  sw $t2, -688($fp)	# spill _tmp170 from $t2 to $fp-688
	# IfZ _tmp170 Goto else_32
	  lw $t0, -688($fp)	# fill _tmp170 to $t0 from $fp-688
	  beqz $t0, else_32	# branch if _tmp170 is zero 
	# _tmp171 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -692($fp)	# spill _tmp171 from $t2 to $fp-692
	# _tmp172 = *(_tmp171)
	  lw $t0, -692($fp)	# fill _tmp171 to $t0 from $fp-692
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -696($fp)	# spill _tmp172 from $t2 to $fp-696
	# _tmp173 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -700($fp)	# spill _tmp173 from $t2 to $fp-700
	# _tmp174 = index < _tmp173
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -700($fp)	# fill _tmp173 to $t1 from $fp-700
	  slt $t2, $t0, $t1	
	  sw $t2, -704($fp)	# spill _tmp174 from $t2 to $fp-704
	# _tmp175 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -708($fp)	# spill _tmp175 from $t2 to $fp-708
	# _tmp176 = _tmp172 - _tmp175
	  lw $t0, -696($fp)	# fill _tmp172 to $t0 from $fp-696
	  lw $t1, -708($fp)	# fill _tmp175 to $t1 from $fp-708
	  sub $t2, $t0, $t1	
	  sw $t2, -712($fp)	# spill _tmp176 from $t2 to $fp-712
	# _tmp177 = _tmp176 < index
	  lw $t0, -712($fp)	# fill _tmp176 to $t0 from $fp-712
	  lw $t1, -24($fp)	# fill index to $t1 from $fp-24
	  slt $t2, $t0, $t1	
	  sw $t2, -716($fp)	# spill _tmp177 from $t2 to $fp-716
	# _tmp178 = _tmp174 || _tmp177
	  lw $t0, -704($fp)	# fill _tmp174 to $t0 from $fp-704
	  lw $t1, -716($fp)	# fill _tmp177 to $t1 from $fp-716
	  or $t2, $t0, $t1	
	  sw $t2, -720($fp)	# spill _tmp178 from $t2 to $fp-720
	# IfZ _tmp178 Goto arrayAcc_34
	  lw $t0, -720($fp)	# fill _tmp178 to $t0 from $fp-720
	  beqz $t0, arrayAcc_34	# branch if _tmp178 is zero 
	# _tmp179 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string52: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string52	# load label
	  sw $t2, -724($fp)	# spill _tmp179 from $t2 to $fp-724
	# PushParam _tmp179
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -724($fp)	# fill _tmp179 to $t0 from $fp-724
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_34:
	# _tmp180 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -728($fp)	# spill _tmp180 from $t2 to $fp-728
	# _tmp181 = index * _tmp180
	  lw $t0, -24($fp)	# fill index to $t0 from $fp-24
	  lw $t1, -728($fp)	# fill _tmp180 to $t1 from $fp-728
	  mul $t2, $t0, $t1	
	  sw $t2, -732($fp)	# spill _tmp181 from $t2 to $fp-732
	# _tmp182 = _tmp171 + _tmp181
	  lw $t0, -692($fp)	# fill _tmp171 to $t0 from $fp-692
	  lw $t1, -732($fp)	# fill _tmp181 to $t1 from $fp-732
	  add $t2, $t0, $t1	
	  sw $t2, -736($fp)	# spill _tmp182 from $t2 to $fp-736
	# _tmp183 = _tmp182 + _tmp180
	  lw $t0, -736($fp)	# fill _tmp182 to $t0 from $fp-736
	  lw $t1, -728($fp)	# fill _tmp180 to $t1 from $fp-728
	  add $t2, $t0, $t1	
	  sw $t2, -740($fp)	# spill _tmp183 from $t2 to $fp-740
	# _tmp184 = *(_tmp183)
	  lw $t0, -740($fp)	# fill _tmp183 to $t0 from $fp-740
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -744($fp)	# spill _tmp184 from $t2 to $fp-744
	# _tmp185 = *(_tmp184)
	  lw $t0, -744($fp)	# fill _tmp184 to $t0 from $fp-744
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -748($fp)	# spill _tmp185 from $t2 to $fp-748
	# _tmp186 = *(_tmp185 + 28)
	  lw $t0, -748($fp)	# fill _tmp185 to $t0 from $fp-748
	  lw $t2, 28($t0) 	# load with offset
	  sw $t2, -752($fp)	# spill _tmp186 from $t2 to $fp-752
	# PushParam a
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -20($fp)	# fill a to $t0 from $fp-20
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam _tmp184
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -744($fp)	# fill _tmp184 to $t0 from $fp-744
	  sw $t0, 4($sp)	# copy param value to stack
	# ACall _tmp186
	  lw $t0, -752($fp)	# fill _tmp186 to $t0 from $fp-752
	  jalr $t0            	# jump to function
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# Goto endif_33
	  b endif_33		# unconditional branch
  else_32:
  endif_33:
	# _tmp187 = "\nChanges successfully saved!\n"
	  .data			# create string constant marked with label
	  _string53: .asciiz "\nChanges successfully saved!\n"
	  .text
	  la $t2, _string53	# load label
	  sw $t2, -756($fp)	# spill _tmp187 from $t2 to $fp-756
	# PushParam _tmp187
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -756($fp)	# fill _tmp187 to $t0 from $fp-756
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _PrintLine
	  jal _PrintLine     	# jump to function
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  Database_Add:
	# BeginFunc 468
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 468	# decrement sp to make space for locals/temps
	# LCall _PrintLine
	  jal _PrintLine     	# jump to function
	# _tmp4 = "Adding New Person...\n\n"
	  .data			# create string constant marked with label
	  _string54: .asciiz "Adding New Person...\n\n"
	  .text
	  la $t2, _string54	# load label
	  sw $t2, -24($fp)	# spill _tmp4 from $t2 to $fp-24
	# PushParam _tmp4
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -24($fp)	# fill _tmp4 to $t0 from $fp-24
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp5 = "Enter first name: "
	  .data			# create string constant marked with label
	  _string55: .asciiz "Enter first name: "
	  .text
	  la $t2, _string55	# load label
	  sw $t2, -28($fp)	# spill _tmp5 from $t2 to $fp-28
	# PushParam _tmp5
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -28($fp)	# fill _tmp5 to $t0 from $fp-28
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp6 = LCall _ReadLine
	  jal _ReadLine      	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -32($fp)	# spill _tmp6 from $t2 to $fp-32
	# f = _tmp6
	  lw $t2, -32($fp)	# fill _tmp6 to $t2 from $fp-32
	  sw $t2, -8($fp)	# spill f from $t2 to $fp-8
	# _tmp7 = "Enter last name: "
	  .data			# create string constant marked with label
	  _string56: .asciiz "Enter last name: "
	  .text
	  la $t2, _string56	# load label
	  sw $t2, -36($fp)	# spill _tmp7 from $t2 to $fp-36
	# PushParam _tmp7
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -36($fp)	# fill _tmp7 to $t0 from $fp-36
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp8 = LCall _ReadLine
	  jal _ReadLine      	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -40($fp)	# spill _tmp8 from $t2 to $fp-40
	# l = _tmp8
	  lw $t2, -40($fp)	# fill _tmp8 to $t2 from $fp-40
	  sw $t2, -12($fp)	# spill l from $t2 to $fp-12
	# _tmp9 = *(this)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -44($fp)	# spill _tmp9 from $t2 to $fp-44
	# _tmp10 = *(_tmp9 + 8)
	  lw $t0, -44($fp)	# fill _tmp9 to $t0 from $fp-44
	  lw $t2, 8($t0) 	# load with offset
	  sw $t2, -48($fp)	# spill _tmp10 from $t2 to $fp-48
	# PushParam l
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill l to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill f to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam this
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp11 = ACall _tmp10
	  lw $t0, -48($fp)	# fill _tmp10 to $t0 from $fp-48
	  jalr $t0            	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -52($fp)	# spill _tmp11 from $t2 to $fp-52
	# PopParams 12
	  add $sp, $sp, 12	# pop params off stack
	# _tmp12 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -56($fp)	# spill _tmp12 from $t2 to $fp-56
	# _tmp13 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -60($fp)	# spill _tmp13 from $t2 to $fp-60
	# _tmp14 = _tmp12 - _tmp13
	  lw $t0, -56($fp)	# fill _tmp12 to $t0 from $fp-56
	  lw $t1, -60($fp)	# fill _tmp13 to $t1 from $fp-60
	  sub $t2, $t0, $t1	
	  sw $t2, -64($fp)	# spill _tmp14 from $t2 to $fp-64
	# _tmp15 = _tmp14 < _tmp11
	  lw $t0, -64($fp)	# fill _tmp14 to $t0 from $fp-64
	  lw $t1, -52($fp)	# fill _tmp11 to $t1 from $fp-52
	  slt $t2, $t0, $t1	
	  sw $t2, -68($fp)	# spill _tmp15 from $t2 to $fp-68
	# IfZ _tmp15 Goto else_35
	  lw $t0, -68($fp)	# fill _tmp15 to $t0 from $fp-68
	  beqz $t0, else_35	# branch if _tmp15 is zero 
	# _tmp16 = "\n"
	  .data			# create string constant marked with label
	  _string57: .asciiz "\n"
	  .text
	  la $t2, _string57	# load label
	  sw $t2, -72($fp)	# spill _tmp16 from $t2 to $fp-72
	# PushParam _tmp16
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -72($fp)	# fill _tmp16 to $t0 from $fp-72
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam l
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill l to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp17 = ", "
	  .data			# create string constant marked with label
	  _string58: .asciiz ", "
	  .text
	  la $t2, _string58	# load label
	  sw $t2, -76($fp)	# spill _tmp17 from $t2 to $fp-76
	# PushParam _tmp17
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -76($fp)	# fill _tmp17 to $t0 from $fp-76
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill f to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp18 = " already exists in the db!\n"
	  .data			# create string constant marked with label
	  _string59: .asciiz " already exists in the db!\n"
	  .text
	  la $t2, _string59	# load label
	  sw $t2, -80($fp)	# spill _tmp18 from $t2 to $fp-80
	# PushParam _tmp18
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -80($fp)	# fill _tmp18 to $t0 from $fp-80
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _PrintLine
	  jal _PrintLine     	# jump to function
	# Return 
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
	# Goto endif_36
	  b endif_36		# unconditional branch
  else_35:
  endif_36:
	# _tmp19 = "Enter phone number: "
	  .data			# create string constant marked with label
	  _string60: .asciiz "Enter phone number: "
	  .text
	  la $t2, _string60	# load label
	  sw $t2, -84($fp)	# spill _tmp19 from $t2 to $fp-84
	# PushParam _tmp19
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -84($fp)	# fill _tmp19 to $t0 from $fp-84
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp20 = LCall _ReadLine
	  jal _ReadLine      	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -88($fp)	# spill _tmp20 from $t2 to $fp-88
	# p = _tmp20
	  lw $t2, -88($fp)	# fill _tmp20 to $t2 from $fp-88
	  sw $t2, -16($fp)	# spill p from $t2 to $fp-16
	# _tmp21 = "Enter address: "
	  .data			# create string constant marked with label
	  _string61: .asciiz "Enter address: "
	  .text
	  la $t2, _string61	# load label
	  sw $t2, -92($fp)	# spill _tmp21 from $t2 to $fp-92
	# PushParam _tmp21
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -92($fp)	# fill _tmp21 to $t0 from $fp-92
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp22 = LCall _ReadLine
	  jal _ReadLine      	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -96($fp)	# spill _tmp22 from $t2 to $fp-96
	# a = _tmp22
	  lw $t2, -96($fp)	# fill _tmp22 to $t2 from $fp-96
	  sw $t2, -20($fp)	# spill a from $t2 to $fp-20
	# _tmp23 = *(this + 4)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 4($t0) 	# load with offset
	  sw $t2, -100($fp)	# spill _tmp23 from $t2 to $fp-100
	# _tmp24 = *(this + 8)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 8($t0) 	# load with offset
	  sw $t2, -104($fp)	# spill _tmp24 from $t2 to $fp-104
	# _tmp25 = _tmp23 == _tmp24
	  lw $t0, -100($fp)	# fill _tmp23 to $t0 from $fp-100
	  lw $t1, -104($fp)	# fill _tmp24 to $t1 from $fp-104
	  seq $t2, $t0, $t1	
	  sw $t2, -108($fp)	# spill _tmp25 from $t2 to $fp-108
	# IfZ _tmp25 Goto else_37
	  lw $t0, -108($fp)	# fill _tmp25 to $t0 from $fp-108
	  beqz $t0, else_37	# branch if _tmp25 is zero 
	# _tmp29 = *(this + 8)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 8($t0) 	# load with offset
	  sw $t2, -124($fp)	# spill _tmp29 from $t2 to $fp-124
	# cur = _tmp29
	  lw $t2, -124($fp)	# fill _tmp29 to $t2 from $fp-124
	  sw $t2, -116($fp)	# spill cur from $t2 to $fp-116
	# _tmp30 = *(this + 8)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 8($t0) 	# load with offset
	  sw $t2, -128($fp)	# spill _tmp30 from $t2 to $fp-128
	# _tmp31 = 2
	  li $t2, 2		# load constant value 2 into $t2
	  sw $t2, -132($fp)	# spill _tmp31 from $t2 to $fp-132
	# _tmp32 = _tmp30 * _tmp31
	  lw $t0, -128($fp)	# fill _tmp30 to $t0 from $fp-128
	  lw $t1, -132($fp)	# fill _tmp31 to $t1 from $fp-132
	  mul $t2, $t0, $t1	
	  sw $t2, -136($fp)	# spill _tmp32 from $t2 to $fp-136
	# _tmp33 = 8
	  li $t2, 8		# load constant value 8 into $t2
	  sw $t2, -140($fp)	# spill _tmp33 from $t2 to $fp-140
	# _tmp34 = this + _tmp33
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t1, -140($fp)	# fill _tmp33 to $t1 from $fp-140
	  add $t2, $t0, $t1	
	  sw $t2, -144($fp)	# spill _tmp34 from $t2 to $fp-144
	# *(_tmp34) = _tmp32
	  lw $t0, -136($fp)	# fill _tmp32 to $t0 from $fp-136
	  lw $t2, -144($fp)	# fill _tmp34 to $t2 from $fp-144
	  sw $t0, 0($t2) 	# store with offset
	# _tmp35 = *(this + 8)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 8($t0) 	# load with offset
	  sw $t2, -148($fp)	# spill _tmp35 from $t2 to $fp-148
	# _tmp36 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -152($fp)	# spill _tmp36 from $t2 to $fp-152
	# _tmp37 = _tmp35 < _tmp36
	  lw $t0, -148($fp)	# fill _tmp35 to $t0 from $fp-148
	  lw $t1, -152($fp)	# fill _tmp36 to $t1 from $fp-152
	  slt $t2, $t0, $t1	
	  sw $t2, -156($fp)	# spill _tmp37 from $t2 to $fp-156
	# IfZ _tmp37 Goto allocate_39
	  lw $t0, -156($fp)	# fill _tmp37 to $t0 from $fp-156
	  beqz $t0, allocate_39	# branch if _tmp37 is zero 
	# _tmp38 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string62: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t2, _string62	# load label
	  sw $t2, -160($fp)	# spill _tmp38 from $t2 to $fp-160
	# PushParam _tmp38
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -160($fp)	# fill _tmp38 to $t0 from $fp-160
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  allocate_39:
	# _tmp39 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -164($fp)	# spill _tmp39 from $t2 to $fp-164
	# _tmp40 = _tmp35 * _tmp39
	  lw $t0, -148($fp)	# fill _tmp35 to $t0 from $fp-148
	  lw $t1, -164($fp)	# fill _tmp39 to $t1 from $fp-164
	  mul $t2, $t0, $t1	
	  sw $t2, -168($fp)	# spill _tmp40 from $t2 to $fp-168
	# _tmp41 = _tmp40 + _tmp39
	  lw $t0, -168($fp)	# fill _tmp40 to $t0 from $fp-168
	  lw $t1, -164($fp)	# fill _tmp39 to $t1 from $fp-164
	  add $t2, $t0, $t1	
	  sw $t2, -172($fp)	# spill _tmp41 from $t2 to $fp-172
	# PushParam _tmp41
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -172($fp)	# fill _tmp41 to $t0 from $fp-172
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp42 = LCall _Alloc
	  jal _Alloc         	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -176($fp)	# spill _tmp42 from $t2 to $fp-176
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp42) = _tmp35
	  lw $t0, -148($fp)	# fill _tmp35 to $t0 from $fp-148
	  lw $t2, -176($fp)	# fill _tmp42 to $t2 from $fp-176
	  sw $t0, 0($t2) 	# store with offset
	# newPeople = _tmp42
	  lw $t2, -176($fp)	# fill _tmp42 to $t2 from $fp-176
	  sw $t2, -120($fp)	# spill newPeople from $t2 to $fp-120
	# _tmp43 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -180($fp)	# spill _tmp43 from $t2 to $fp-180
	# i = _tmp43
	  lw $t2, -180($fp)	# fill _tmp43 to $t2 from $fp-180
	  sw $t2, -112($fp)	# spill i from $t2 to $fp-112
  loopBegin_40:
	# _tmp44 = i < cur
	  lw $t0, -112($fp)	# fill i to $t0 from $fp-112
	  lw $t1, -116($fp)	# fill cur to $t1 from $fp-116
	  slt $t2, $t0, $t1	
	  sw $t2, -184($fp)	# spill _tmp44 from $t2 to $fp-184
	# IfZ _tmp44 Goto loopEnd_41
	  lw $t0, -184($fp)	# fill _tmp44 to $t0 from $fp-184
	  beqz $t0, loopEnd_41	# branch if _tmp44 is zero 
	# _tmp45 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -188($fp)	# spill _tmp45 from $t2 to $fp-188
	# _tmp46 = *(_tmp45)
	  lw $t0, -188($fp)	# fill _tmp45 to $t0 from $fp-188
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -192($fp)	# spill _tmp46 from $t2 to $fp-192
	# _tmp47 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -196($fp)	# spill _tmp47 from $t2 to $fp-196
	# _tmp48 = i < _tmp47
	  lw $t0, -112($fp)	# fill i to $t0 from $fp-112
	  lw $t1, -196($fp)	# fill _tmp47 to $t1 from $fp-196
	  slt $t2, $t0, $t1	
	  sw $t2, -200($fp)	# spill _tmp48 from $t2 to $fp-200
	# _tmp49 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -204($fp)	# spill _tmp49 from $t2 to $fp-204
	# _tmp50 = _tmp46 - _tmp49
	  lw $t0, -192($fp)	# fill _tmp46 to $t0 from $fp-192
	  lw $t1, -204($fp)	# fill _tmp49 to $t1 from $fp-204
	  sub $t2, $t0, $t1	
	  sw $t2, -208($fp)	# spill _tmp50 from $t2 to $fp-208
	# _tmp51 = _tmp50 < i
	  lw $t0, -208($fp)	# fill _tmp50 to $t0 from $fp-208
	  lw $t1, -112($fp)	# fill i to $t1 from $fp-112
	  slt $t2, $t0, $t1	
	  sw $t2, -212($fp)	# spill _tmp51 from $t2 to $fp-212
	# _tmp52 = _tmp48 || _tmp51
	  lw $t0, -200($fp)	# fill _tmp48 to $t0 from $fp-200
	  lw $t1, -212($fp)	# fill _tmp51 to $t1 from $fp-212
	  or $t2, $t0, $t1	
	  sw $t2, -216($fp)	# spill _tmp52 from $t2 to $fp-216
	# IfZ _tmp52 Goto arrayAcc_42
	  lw $t0, -216($fp)	# fill _tmp52 to $t0 from $fp-216
	  beqz $t0, arrayAcc_42	# branch if _tmp52 is zero 
	# _tmp53 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string63: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string63	# load label
	  sw $t2, -220($fp)	# spill _tmp53 from $t2 to $fp-220
	# PushParam _tmp53
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -220($fp)	# fill _tmp53 to $t0 from $fp-220
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_42:
	# _tmp54 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -224($fp)	# spill _tmp54 from $t2 to $fp-224
	# _tmp55 = i * _tmp54
	  lw $t0, -112($fp)	# fill i to $t0 from $fp-112
	  lw $t1, -224($fp)	# fill _tmp54 to $t1 from $fp-224
	  mul $t2, $t0, $t1	
	  sw $t2, -228($fp)	# spill _tmp55 from $t2 to $fp-228
	# _tmp56 = _tmp45 + _tmp55
	  lw $t0, -188($fp)	# fill _tmp45 to $t0 from $fp-188
	  lw $t1, -228($fp)	# fill _tmp55 to $t1 from $fp-228
	  add $t2, $t0, $t1	
	  sw $t2, -232($fp)	# spill _tmp56 from $t2 to $fp-232
	# _tmp57 = _tmp56 + _tmp54
	  lw $t0, -232($fp)	# fill _tmp56 to $t0 from $fp-232
	  lw $t1, -224($fp)	# fill _tmp54 to $t1 from $fp-224
	  add $t2, $t0, $t1	
	  sw $t2, -236($fp)	# spill _tmp57 from $t2 to $fp-236
	# _tmp58 = *(_tmp57)
	  lw $t0, -236($fp)	# fill _tmp57 to $t0 from $fp-236
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -240($fp)	# spill _tmp58 from $t2 to $fp-240
	# _tmp59 = *(newPeople)
	  lw $t0, -120($fp)	# fill newPeople to $t0 from $fp-120
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -244($fp)	# spill _tmp59 from $t2 to $fp-244
	# _tmp60 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -248($fp)	# spill _tmp60 from $t2 to $fp-248
	# _tmp61 = i < _tmp60
	  lw $t0, -112($fp)	# fill i to $t0 from $fp-112
	  lw $t1, -248($fp)	# fill _tmp60 to $t1 from $fp-248
	  slt $t2, $t0, $t1	
	  sw $t2, -252($fp)	# spill _tmp61 from $t2 to $fp-252
	# _tmp62 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -256($fp)	# spill _tmp62 from $t2 to $fp-256
	# _tmp63 = _tmp59 - _tmp62
	  lw $t0, -244($fp)	# fill _tmp59 to $t0 from $fp-244
	  lw $t1, -256($fp)	# fill _tmp62 to $t1 from $fp-256
	  sub $t2, $t0, $t1	
	  sw $t2, -260($fp)	# spill _tmp63 from $t2 to $fp-260
	# _tmp64 = _tmp63 < i
	  lw $t0, -260($fp)	# fill _tmp63 to $t0 from $fp-260
	  lw $t1, -112($fp)	# fill i to $t1 from $fp-112
	  slt $t2, $t0, $t1	
	  sw $t2, -264($fp)	# spill _tmp64 from $t2 to $fp-264
	# _tmp65 = _tmp61 || _tmp64
	  lw $t0, -252($fp)	# fill _tmp61 to $t0 from $fp-252
	  lw $t1, -264($fp)	# fill _tmp64 to $t1 from $fp-264
	  or $t2, $t0, $t1	
	  sw $t2, -268($fp)	# spill _tmp65 from $t2 to $fp-268
	# IfZ _tmp65 Goto arrayAcc_43
	  lw $t0, -268($fp)	# fill _tmp65 to $t0 from $fp-268
	  beqz $t0, arrayAcc_43	# branch if _tmp65 is zero 
	# _tmp66 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string64: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string64	# load label
	  sw $t2, -272($fp)	# spill _tmp66 from $t2 to $fp-272
	# PushParam _tmp66
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -272($fp)	# fill _tmp66 to $t0 from $fp-272
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_43:
	# _tmp67 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -276($fp)	# spill _tmp67 from $t2 to $fp-276
	# _tmp68 = i * _tmp67
	  lw $t0, -112($fp)	# fill i to $t0 from $fp-112
	  lw $t1, -276($fp)	# fill _tmp67 to $t1 from $fp-276
	  mul $t2, $t0, $t1	
	  sw $t2, -280($fp)	# spill _tmp68 from $t2 to $fp-280
	# _tmp69 = newPeople + _tmp68
	  lw $t0, -120($fp)	# fill newPeople to $t0 from $fp-120
	  lw $t1, -280($fp)	# fill _tmp68 to $t1 from $fp-280
	  add $t2, $t0, $t1	
	  sw $t2, -284($fp)	# spill _tmp69 from $t2 to $fp-284
	# _tmp70 = _tmp69 + _tmp67
	  lw $t0, -284($fp)	# fill _tmp69 to $t0 from $fp-284
	  lw $t1, -276($fp)	# fill _tmp67 to $t1 from $fp-276
	  add $t2, $t0, $t1	
	  sw $t2, -288($fp)	# spill _tmp70 from $t2 to $fp-288
	# *(_tmp70) = _tmp58
	  lw $t0, -240($fp)	# fill _tmp58 to $t0 from $fp-240
	  lw $t2, -288($fp)	# fill _tmp70 to $t2 from $fp-288
	  sw $t0, 0($t2) 	# store with offset
	# _tmp71 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -292($fp)	# spill _tmp71 from $t2 to $fp-292
	# _tmp72 = i + _tmp71
	  lw $t0, -112($fp)	# fill i to $t0 from $fp-112
	  lw $t1, -292($fp)	# fill _tmp71 to $t1 from $fp-292
	  add $t2, $t0, $t1	
	  sw $t2, -296($fp)	# spill _tmp72 from $t2 to $fp-296
	# i = _tmp72
	  lw $t2, -296($fp)	# fill _tmp72 to $t2 from $fp-296
	  sw $t2, -112($fp)	# spill i from $t2 to $fp-112
	# Goto loopBegin_40
	  b loopBegin_40		# unconditional branch
  loopEnd_41:
	# _tmp73 = 12
	  li $t2, 12		# load constant value 12 into $t2
	  sw $t2, -300($fp)	# spill _tmp73 from $t2 to $fp-300
	# _tmp74 = this + _tmp73
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t1, -300($fp)	# fill _tmp73 to $t1 from $fp-300
	  add $t2, $t0, $t1	
	  sw $t2, -304($fp)	# spill _tmp74 from $t2 to $fp-304
	# *(_tmp74) = newPeople
	  lw $t0, -120($fp)	# fill newPeople to $t0 from $fp-120
	  lw $t2, -304($fp)	# fill _tmp74 to $t2 from $fp-304
	  sw $t0, 0($t2) 	# store with offset
	# Goto endif_38
	  b endif_38		# unconditional branch
  else_37:
  endif_38:
	# _tmp75 = 20
	  li $t2, 20		# load constant value 20 into $t2
	  sw $t2, -308($fp)	# spill _tmp75 from $t2 to $fp-308
	# PushParam _tmp75
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -308($fp)	# fill _tmp75 to $t0 from $fp-308
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp76 = LCall _Alloc
	  jal _Alloc         	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -312($fp)	# spill _tmp76 from $t2 to $fp-312
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp77 = Person
	  la $t2, Person	# load label
	  sw $t2, -316($fp)	# spill _tmp77 from $t2 to $fp-316
	# *(_tmp76) = _tmp77
	  lw $t0, -316($fp)	# fill _tmp77 to $t0 from $fp-316
	  lw $t2, -312($fp)	# fill _tmp76 to $t2 from $fp-312
	  sw $t0, 0($t2) 	# store with offset
	# _tmp78 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -320($fp)	# spill _tmp78 from $t2 to $fp-320
	# _tmp79 = *(this + 4)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 4($t0) 	# load with offset
	  sw $t2, -324($fp)	# spill _tmp79 from $t2 to $fp-324
	# _tmp80 = *(_tmp78)
	  lw $t0, -320($fp)	# fill _tmp78 to $t0 from $fp-320
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -328($fp)	# spill _tmp80 from $t2 to $fp-328
	# _tmp81 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -332($fp)	# spill _tmp81 from $t2 to $fp-332
	# _tmp82 = _tmp79 < _tmp81
	  lw $t0, -324($fp)	# fill _tmp79 to $t0 from $fp-324
	  lw $t1, -332($fp)	# fill _tmp81 to $t1 from $fp-332
	  slt $t2, $t0, $t1	
	  sw $t2, -336($fp)	# spill _tmp82 from $t2 to $fp-336
	# _tmp83 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -340($fp)	# spill _tmp83 from $t2 to $fp-340
	# _tmp84 = _tmp80 - _tmp83
	  lw $t0, -328($fp)	# fill _tmp80 to $t0 from $fp-328
	  lw $t1, -340($fp)	# fill _tmp83 to $t1 from $fp-340
	  sub $t2, $t0, $t1	
	  sw $t2, -344($fp)	# spill _tmp84 from $t2 to $fp-344
	# _tmp85 = _tmp84 < _tmp79
	  lw $t0, -344($fp)	# fill _tmp84 to $t0 from $fp-344
	  lw $t1, -324($fp)	# fill _tmp79 to $t1 from $fp-324
	  slt $t2, $t0, $t1	
	  sw $t2, -348($fp)	# spill _tmp85 from $t2 to $fp-348
	# _tmp86 = _tmp82 || _tmp85
	  lw $t0, -336($fp)	# fill _tmp82 to $t0 from $fp-336
	  lw $t1, -348($fp)	# fill _tmp85 to $t1 from $fp-348
	  or $t2, $t0, $t1	
	  sw $t2, -352($fp)	# spill _tmp86 from $t2 to $fp-352
	# IfZ _tmp86 Goto arrayAcc_44
	  lw $t0, -352($fp)	# fill _tmp86 to $t0 from $fp-352
	  beqz $t0, arrayAcc_44	# branch if _tmp86 is zero 
	# _tmp87 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string65: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string65	# load label
	  sw $t2, -356($fp)	# spill _tmp87 from $t2 to $fp-356
	# PushParam _tmp87
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -356($fp)	# fill _tmp87 to $t0 from $fp-356
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_44:
	# _tmp88 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -360($fp)	# spill _tmp88 from $t2 to $fp-360
	# _tmp89 = _tmp79 * _tmp88
	  lw $t0, -324($fp)	# fill _tmp79 to $t0 from $fp-324
	  lw $t1, -360($fp)	# fill _tmp88 to $t1 from $fp-360
	  mul $t2, $t0, $t1	
	  sw $t2, -364($fp)	# spill _tmp89 from $t2 to $fp-364
	# _tmp90 = _tmp78 + _tmp89
	  lw $t0, -320($fp)	# fill _tmp78 to $t0 from $fp-320
	  lw $t1, -364($fp)	# fill _tmp89 to $t1 from $fp-364
	  add $t2, $t0, $t1	
	  sw $t2, -368($fp)	# spill _tmp90 from $t2 to $fp-368
	# _tmp91 = _tmp90 + _tmp88
	  lw $t0, -368($fp)	# fill _tmp90 to $t0 from $fp-368
	  lw $t1, -360($fp)	# fill _tmp88 to $t1 from $fp-360
	  add $t2, $t0, $t1	
	  sw $t2, -372($fp)	# spill _tmp91 from $t2 to $fp-372
	# *(_tmp91) = _tmp76
	  lw $t0, -312($fp)	# fill _tmp76 to $t0 from $fp-312
	  lw $t2, -372($fp)	# fill _tmp91 to $t2 from $fp-372
	  sw $t0, 0($t2) 	# store with offset
	# _tmp92 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -376($fp)	# spill _tmp92 from $t2 to $fp-376
	# _tmp93 = *(this + 4)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 4($t0) 	# load with offset
	  sw $t2, -380($fp)	# spill _tmp93 from $t2 to $fp-380
	# _tmp94 = *(_tmp92)
	  lw $t0, -376($fp)	# fill _tmp92 to $t0 from $fp-376
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -384($fp)	# spill _tmp94 from $t2 to $fp-384
	# _tmp95 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -388($fp)	# spill _tmp95 from $t2 to $fp-388
	# _tmp96 = _tmp93 < _tmp95
	  lw $t0, -380($fp)	# fill _tmp93 to $t0 from $fp-380
	  lw $t1, -388($fp)	# fill _tmp95 to $t1 from $fp-388
	  slt $t2, $t0, $t1	
	  sw $t2, -392($fp)	# spill _tmp96 from $t2 to $fp-392
	# _tmp97 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -396($fp)	# spill _tmp97 from $t2 to $fp-396
	# _tmp98 = _tmp94 - _tmp97
	  lw $t0, -384($fp)	# fill _tmp94 to $t0 from $fp-384
	  lw $t1, -396($fp)	# fill _tmp97 to $t1 from $fp-396
	  sub $t2, $t0, $t1	
	  sw $t2, -400($fp)	# spill _tmp98 from $t2 to $fp-400
	# _tmp99 = _tmp98 < _tmp93
	  lw $t0, -400($fp)	# fill _tmp98 to $t0 from $fp-400
	  lw $t1, -380($fp)	# fill _tmp93 to $t1 from $fp-380
	  slt $t2, $t0, $t1	
	  sw $t2, -404($fp)	# spill _tmp99 from $t2 to $fp-404
	# _tmp100 = _tmp96 || _tmp99
	  lw $t0, -392($fp)	# fill _tmp96 to $t0 from $fp-392
	  lw $t1, -404($fp)	# fill _tmp99 to $t1 from $fp-404
	  or $t2, $t0, $t1	
	  sw $t2, -408($fp)	# spill _tmp100 from $t2 to $fp-408
	# IfZ _tmp100 Goto arrayAcc_45
	  lw $t0, -408($fp)	# fill _tmp100 to $t0 from $fp-408
	  beqz $t0, arrayAcc_45	# branch if _tmp100 is zero 
	# _tmp101 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string66: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string66	# load label
	  sw $t2, -412($fp)	# spill _tmp101 from $t2 to $fp-412
	# PushParam _tmp101
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -412($fp)	# fill _tmp101 to $t0 from $fp-412
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_45:
	# _tmp102 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -416($fp)	# spill _tmp102 from $t2 to $fp-416
	# _tmp103 = _tmp93 * _tmp102
	  lw $t0, -380($fp)	# fill _tmp93 to $t0 from $fp-380
	  lw $t1, -416($fp)	# fill _tmp102 to $t1 from $fp-416
	  mul $t2, $t0, $t1	
	  sw $t2, -420($fp)	# spill _tmp103 from $t2 to $fp-420
	# _tmp104 = _tmp92 + _tmp103
	  lw $t0, -376($fp)	# fill _tmp92 to $t0 from $fp-376
	  lw $t1, -420($fp)	# fill _tmp103 to $t1 from $fp-420
	  add $t2, $t0, $t1	
	  sw $t2, -424($fp)	# spill _tmp104 from $t2 to $fp-424
	# _tmp105 = _tmp104 + _tmp102
	  lw $t0, -424($fp)	# fill _tmp104 to $t0 from $fp-424
	  lw $t1, -416($fp)	# fill _tmp102 to $t1 from $fp-416
	  add $t2, $t0, $t1	
	  sw $t2, -428($fp)	# spill _tmp105 from $t2 to $fp-428
	# _tmp106 = *(_tmp105)
	  lw $t0, -428($fp)	# fill _tmp105 to $t0 from $fp-428
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -432($fp)	# spill _tmp106 from $t2 to $fp-432
	# _tmp107 = *(_tmp106)
	  lw $t0, -432($fp)	# fill _tmp106 to $t0 from $fp-432
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -436($fp)	# spill _tmp107 from $t2 to $fp-436
	# _tmp108 = *(_tmp107)
	  lw $t0, -436($fp)	# fill _tmp107 to $t0 from $fp-436
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -440($fp)	# spill _tmp108 from $t2 to $fp-440
	# PushParam a
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -20($fp)	# fill a to $t0 from $fp-20
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam p
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -16($fp)	# fill p to $t0 from $fp-16
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam l
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill l to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill f to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam _tmp106
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -432($fp)	# fill _tmp106 to $t0 from $fp-432
	  sw $t0, 4($sp)	# copy param value to stack
	# ACall _tmp108
	  lw $t0, -440($fp)	# fill _tmp108 to $t0 from $fp-440
	  jalr $t0            	# jump to function
	# PopParams 20
	  add $sp, $sp, 20	# pop params off stack
	# _tmp109 = *(this + 4)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 4($t0) 	# load with offset
	  sw $t2, -444($fp)	# spill _tmp109 from $t2 to $fp-444
	# _tmp110 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -448($fp)	# spill _tmp110 from $t2 to $fp-448
	# _tmp111 = _tmp109 + _tmp110
	  lw $t0, -444($fp)	# fill _tmp109 to $t0 from $fp-444
	  lw $t1, -448($fp)	# fill _tmp110 to $t1 from $fp-448
	  add $t2, $t0, $t1	
	  sw $t2, -452($fp)	# spill _tmp111 from $t2 to $fp-452
	# _tmp112 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -456($fp)	# spill _tmp112 from $t2 to $fp-456
	# _tmp113 = this + _tmp112
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t1, -456($fp)	# fill _tmp112 to $t1 from $fp-456
	  add $t2, $t0, $t1	
	  sw $t2, -460($fp)	# spill _tmp113 from $t2 to $fp-460
	# *(_tmp113) = _tmp111
	  lw $t0, -452($fp)	# fill _tmp111 to $t0 from $fp-452
	  lw $t2, -460($fp)	# fill _tmp113 to $t2 from $fp-460
	  sw $t0, 0($t2) 	# store with offset
	# _tmp114 = "\n"
	  .data			# create string constant marked with label
	  _string67: .asciiz "\n"
	  .text
	  la $t2, _string67	# load label
	  sw $t2, -464($fp)	# spill _tmp114 from $t2 to $fp-464
	# PushParam _tmp114
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -464($fp)	# fill _tmp114 to $t0 from $fp-464
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam l
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill l to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp115 = ", "
	  .data			# create string constant marked with label
	  _string68: .asciiz ", "
	  .text
	  la $t2, _string68	# load label
	  sw $t2, -468($fp)	# spill _tmp115 from $t2 to $fp-468
	# PushParam _tmp115
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -468($fp)	# fill _tmp115 to $t0 from $fp-468
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill f to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp116 = " successfully added!\n"
	  .data			# create string constant marked with label
	  _string69: .asciiz " successfully added!\n"
	  .text
	  la $t2, _string69	# load label
	  sw $t2, -472($fp)	# spill _tmp116 from $t2 to $fp-472
	# PushParam _tmp116
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -472($fp)	# fill _tmp116 to $t0 from $fp-472
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _PrintLine
	  jal _PrintLine     	# jump to function
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  Database_Delete:
	# BeginFunc 232
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 232	# decrement sp to make space for locals/temps
	# LCall _PrintLine
	  jal _PrintLine     	# jump to function
	# _tmp3 = "Deleting person...\n\n"
	  .data			# create string constant marked with label
	  _string70: .asciiz "Deleting person...\n\n"
	  .text
	  la $t2, _string70	# load label
	  sw $t2, -20($fp)	# spill _tmp3 from $t2 to $fp-20
	# PushParam _tmp3
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -20($fp)	# fill _tmp3 to $t0 from $fp-20
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp4 = "Enter first name: "
	  .data			# create string constant marked with label
	  _string71: .asciiz "Enter first name: "
	  .text
	  la $t2, _string71	# load label
	  sw $t2, -24($fp)	# spill _tmp4 from $t2 to $fp-24
	# PushParam _tmp4
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -24($fp)	# fill _tmp4 to $t0 from $fp-24
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp5 = LCall _ReadLine
	  jal _ReadLine      	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -28($fp)	# spill _tmp5 from $t2 to $fp-28
	# f = _tmp5
	  lw $t2, -28($fp)	# fill _tmp5 to $t2 from $fp-28
	  sw $t2, -8($fp)	# spill f from $t2 to $fp-8
	# _tmp6 = "Enter last name: "
	  .data			# create string constant marked with label
	  _string72: .asciiz "Enter last name: "
	  .text
	  la $t2, _string72	# load label
	  sw $t2, -32($fp)	# spill _tmp6 from $t2 to $fp-32
	# PushParam _tmp6
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -32($fp)	# fill _tmp6 to $t0 from $fp-32
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp7 = LCall _ReadLine
	  jal _ReadLine      	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -36($fp)	# spill _tmp7 from $t2 to $fp-36
	# l = _tmp7
	  lw $t2, -36($fp)	# fill _tmp7 to $t2 from $fp-36
	  sw $t2, -12($fp)	# spill l from $t2 to $fp-12
	# _tmp8 = *(this)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -40($fp)	# spill _tmp8 from $t2 to $fp-40
	# _tmp9 = *(_tmp8 + 8)
	  lw $t0, -40($fp)	# fill _tmp8 to $t0 from $fp-40
	  lw $t2, 8($t0) 	# load with offset
	  sw $t2, -44($fp)	# spill _tmp9 from $t2 to $fp-44
	# PushParam l
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill l to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill f to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam this
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp10 = ACall _tmp9
	  lw $t0, -44($fp)	# fill _tmp9 to $t0 from $fp-44
	  jalr $t0            	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -48($fp)	# spill _tmp10 from $t2 to $fp-48
	# PopParams 12
	  add $sp, $sp, 12	# pop params off stack
	# index = _tmp10
	  lw $t2, -48($fp)	# fill _tmp10 to $t2 from $fp-48
	  sw $t2, -16($fp)	# spill index from $t2 to $fp-16
	# _tmp11 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -52($fp)	# spill _tmp11 from $t2 to $fp-52
	# _tmp12 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -56($fp)	# spill _tmp12 from $t2 to $fp-56
	# _tmp13 = _tmp11 - _tmp12
	  lw $t0, -52($fp)	# fill _tmp11 to $t0 from $fp-52
	  lw $t1, -56($fp)	# fill _tmp12 to $t1 from $fp-56
	  sub $t2, $t0, $t1	
	  sw $t2, -60($fp)	# spill _tmp13 from $t2 to $fp-60
	# _tmp14 = index == _tmp13
	  lw $t0, -16($fp)	# fill index to $t0 from $fp-16
	  lw $t1, -60($fp)	# fill _tmp13 to $t1 from $fp-60
	  seq $t2, $t0, $t1	
	  sw $t2, -64($fp)	# spill _tmp14 from $t2 to $fp-64
	# _tmp15 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -68($fp)	# spill _tmp15 from $t2 to $fp-68
	# _tmp16 = _tmp14 == _tmp15
	  lw $t0, -64($fp)	# fill _tmp14 to $t0 from $fp-64
	  lw $t1, -68($fp)	# fill _tmp15 to $t1 from $fp-68
	  seq $t2, $t0, $t1	
	  sw $t2, -72($fp)	# spill _tmp16 from $t2 to $fp-72
	# IfZ _tmp16 Goto else_46
	  lw $t0, -72($fp)	# fill _tmp16 to $t0 from $fp-72
	  beqz $t0, else_46	# branch if _tmp16 is zero 
	# _tmp17 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -76($fp)	# spill _tmp17 from $t2 to $fp-76
	# _tmp18 = *(this + 4)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 4($t0) 	# load with offset
	  sw $t2, -80($fp)	# spill _tmp18 from $t2 to $fp-80
	# _tmp19 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -84($fp)	# spill _tmp19 from $t2 to $fp-84
	# _tmp20 = _tmp18 - _tmp19
	  lw $t0, -80($fp)	# fill _tmp18 to $t0 from $fp-80
	  lw $t1, -84($fp)	# fill _tmp19 to $t1 from $fp-84
	  sub $t2, $t0, $t1	
	  sw $t2, -88($fp)	# spill _tmp20 from $t2 to $fp-88
	# _tmp21 = *(_tmp17)
	  lw $t0, -76($fp)	# fill _tmp17 to $t0 from $fp-76
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -92($fp)	# spill _tmp21 from $t2 to $fp-92
	# _tmp22 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -96($fp)	# spill _tmp22 from $t2 to $fp-96
	# _tmp23 = _tmp20 < _tmp22
	  lw $t0, -88($fp)	# fill _tmp20 to $t0 from $fp-88
	  lw $t1, -96($fp)	# fill _tmp22 to $t1 from $fp-96
	  slt $t2, $t0, $t1	
	  sw $t2, -100($fp)	# spill _tmp23 from $t2 to $fp-100
	# _tmp24 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -104($fp)	# spill _tmp24 from $t2 to $fp-104
	# _tmp25 = _tmp21 - _tmp24
	  lw $t0, -92($fp)	# fill _tmp21 to $t0 from $fp-92
	  lw $t1, -104($fp)	# fill _tmp24 to $t1 from $fp-104
	  sub $t2, $t0, $t1	
	  sw $t2, -108($fp)	# spill _tmp25 from $t2 to $fp-108
	# _tmp26 = _tmp25 < _tmp20
	  lw $t0, -108($fp)	# fill _tmp25 to $t0 from $fp-108
	  lw $t1, -88($fp)	# fill _tmp20 to $t1 from $fp-88
	  slt $t2, $t0, $t1	
	  sw $t2, -112($fp)	# spill _tmp26 from $t2 to $fp-112
	# _tmp27 = _tmp23 || _tmp26
	  lw $t0, -100($fp)	# fill _tmp23 to $t0 from $fp-100
	  lw $t1, -112($fp)	# fill _tmp26 to $t1 from $fp-112
	  or $t2, $t0, $t1	
	  sw $t2, -116($fp)	# spill _tmp27 from $t2 to $fp-116
	# IfZ _tmp27 Goto arrayAcc_48
	  lw $t0, -116($fp)	# fill _tmp27 to $t0 from $fp-116
	  beqz $t0, arrayAcc_48	# branch if _tmp27 is zero 
	# _tmp28 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string73: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string73	# load label
	  sw $t2, -120($fp)	# spill _tmp28 from $t2 to $fp-120
	# PushParam _tmp28
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -120($fp)	# fill _tmp28 to $t0 from $fp-120
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_48:
	# _tmp29 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -124($fp)	# spill _tmp29 from $t2 to $fp-124
	# _tmp30 = _tmp20 * _tmp29
	  lw $t0, -88($fp)	# fill _tmp20 to $t0 from $fp-88
	  lw $t1, -124($fp)	# fill _tmp29 to $t1 from $fp-124
	  mul $t2, $t0, $t1	
	  sw $t2, -128($fp)	# spill _tmp30 from $t2 to $fp-128
	# _tmp31 = _tmp17 + _tmp30
	  lw $t0, -76($fp)	# fill _tmp17 to $t0 from $fp-76
	  lw $t1, -128($fp)	# fill _tmp30 to $t1 from $fp-128
	  add $t2, $t0, $t1	
	  sw $t2, -132($fp)	# spill _tmp31 from $t2 to $fp-132
	# _tmp32 = _tmp31 + _tmp29
	  lw $t0, -132($fp)	# fill _tmp31 to $t0 from $fp-132
	  lw $t1, -124($fp)	# fill _tmp29 to $t1 from $fp-124
	  add $t2, $t0, $t1	
	  sw $t2, -136($fp)	# spill _tmp32 from $t2 to $fp-136
	# _tmp33 = *(_tmp32)
	  lw $t0, -136($fp)	# fill _tmp32 to $t0 from $fp-136
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -140($fp)	# spill _tmp33 from $t2 to $fp-140
	# _tmp34 = *(this + 12)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -144($fp)	# spill _tmp34 from $t2 to $fp-144
	# _tmp35 = *(_tmp34)
	  lw $t0, -144($fp)	# fill _tmp34 to $t0 from $fp-144
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -148($fp)	# spill _tmp35 from $t2 to $fp-148
	# _tmp36 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -152($fp)	# spill _tmp36 from $t2 to $fp-152
	# _tmp37 = index < _tmp36
	  lw $t0, -16($fp)	# fill index to $t0 from $fp-16
	  lw $t1, -152($fp)	# fill _tmp36 to $t1 from $fp-152
	  slt $t2, $t0, $t1	
	  sw $t2, -156($fp)	# spill _tmp37 from $t2 to $fp-156
	# _tmp38 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -160($fp)	# spill _tmp38 from $t2 to $fp-160
	# _tmp39 = _tmp35 - _tmp38
	  lw $t0, -148($fp)	# fill _tmp35 to $t0 from $fp-148
	  lw $t1, -160($fp)	# fill _tmp38 to $t1 from $fp-160
	  sub $t2, $t0, $t1	
	  sw $t2, -164($fp)	# spill _tmp39 from $t2 to $fp-164
	# _tmp40 = _tmp39 < index
	  lw $t0, -164($fp)	# fill _tmp39 to $t0 from $fp-164
	  lw $t1, -16($fp)	# fill index to $t1 from $fp-16
	  slt $t2, $t0, $t1	
	  sw $t2, -168($fp)	# spill _tmp40 from $t2 to $fp-168
	# _tmp41 = _tmp37 || _tmp40
	  lw $t0, -156($fp)	# fill _tmp37 to $t0 from $fp-156
	  lw $t1, -168($fp)	# fill _tmp40 to $t1 from $fp-168
	  or $t2, $t0, $t1	
	  sw $t2, -172($fp)	# spill _tmp41 from $t2 to $fp-172
	# IfZ _tmp41 Goto arrayAcc_49
	  lw $t0, -172($fp)	# fill _tmp41 to $t0 from $fp-172
	  beqz $t0, arrayAcc_49	# branch if _tmp41 is zero 
	# _tmp42 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string74: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t2, _string74	# load label
	  sw $t2, -176($fp)	# spill _tmp42 from $t2 to $fp-176
	# PushParam _tmp42
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -176($fp)	# fill _tmp42 to $t0 from $fp-176
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  arrayAcc_49:
	# _tmp43 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -180($fp)	# spill _tmp43 from $t2 to $fp-180
	# _tmp44 = index * _tmp43
	  lw $t0, -16($fp)	# fill index to $t0 from $fp-16
	  lw $t1, -180($fp)	# fill _tmp43 to $t1 from $fp-180
	  mul $t2, $t0, $t1	
	  sw $t2, -184($fp)	# spill _tmp44 from $t2 to $fp-184
	# _tmp45 = _tmp34 + _tmp44
	  lw $t0, -144($fp)	# fill _tmp34 to $t0 from $fp-144
	  lw $t1, -184($fp)	# fill _tmp44 to $t1 from $fp-184
	  add $t2, $t0, $t1	
	  sw $t2, -188($fp)	# spill _tmp45 from $t2 to $fp-188
	# _tmp46 = _tmp45 + _tmp43
	  lw $t0, -188($fp)	# fill _tmp45 to $t0 from $fp-188
	  lw $t1, -180($fp)	# fill _tmp43 to $t1 from $fp-180
	  add $t2, $t0, $t1	
	  sw $t2, -192($fp)	# spill _tmp46 from $t2 to $fp-192
	# *(_tmp46) = _tmp33
	  lw $t0, -140($fp)	# fill _tmp33 to $t0 from $fp-140
	  lw $t2, -192($fp)	# fill _tmp46 to $t2 from $fp-192
	  sw $t0, 0($t2) 	# store with offset
	# _tmp47 = *(this + 4)
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t2, 4($t0) 	# load with offset
	  sw $t2, -196($fp)	# spill _tmp47 from $t2 to $fp-196
	# _tmp48 = 1
	  li $t2, 1		# load constant value 1 into $t2
	  sw $t2, -200($fp)	# spill _tmp48 from $t2 to $fp-200
	# _tmp49 = _tmp47 - _tmp48
	  lw $t0, -196($fp)	# fill _tmp47 to $t0 from $fp-196
	  lw $t1, -200($fp)	# fill _tmp48 to $t1 from $fp-200
	  sub $t2, $t0, $t1	
	  sw $t2, -204($fp)	# spill _tmp49 from $t2 to $fp-204
	# _tmp50 = 4
	  li $t2, 4		# load constant value 4 into $t2
	  sw $t2, -208($fp)	# spill _tmp50 from $t2 to $fp-208
	# _tmp51 = this + _tmp50
	  lw $t0, 4($fp)	# fill this to $t0 from $fp+4
	  lw $t1, -208($fp)	# fill _tmp50 to $t1 from $fp-208
	  add $t2, $t0, $t1	
	  sw $t2, -212($fp)	# spill _tmp51 from $t2 to $fp-212
	# *(_tmp51) = _tmp49
	  lw $t0, -204($fp)	# fill _tmp49 to $t0 from $fp-204
	  lw $t2, -212($fp)	# fill _tmp51 to $t2 from $fp-212
	  sw $t0, 0($t2) 	# store with offset
	# _tmp52 = "\n"
	  .data			# create string constant marked with label
	  _string75: .asciiz "\n"
	  .text
	  la $t2, _string75	# load label
	  sw $t2, -216($fp)	# spill _tmp52 from $t2 to $fp-216
	# PushParam _tmp52
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -216($fp)	# fill _tmp52 to $t0 from $fp-216
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam l
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill l to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp53 = ", "
	  .data			# create string constant marked with label
	  _string76: .asciiz ", "
	  .text
	  la $t2, _string76	# load label
	  sw $t2, -220($fp)	# spill _tmp53 from $t2 to $fp-220
	# PushParam _tmp53
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -220($fp)	# fill _tmp53 to $t0 from $fp-220
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill f to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp54 = " successfully deleted!\n"
	  .data			# create string constant marked with label
	  _string77: .asciiz " successfully deleted!\n"
	  .text
	  la $t2, _string77	# load label
	  sw $t2, -224($fp)	# spill _tmp54 from $t2 to $fp-224
	# PushParam _tmp54
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -224($fp)	# fill _tmp54 to $t0 from $fp-224
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _PrintLine
	  jal _PrintLine     	# jump to function
	# Goto endif_47
	  b endif_47		# unconditional branch
  else_46:
	# _tmp55 = "\n"
	  .data			# create string constant marked with label
	  _string78: .asciiz "\n"
	  .text
	  la $t2, _string78	# load label
	  sw $t2, -228($fp)	# spill _tmp55 from $t2 to $fp-228
	# PushParam _tmp55
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -228($fp)	# fill _tmp55 to $t0 from $fp-228
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam l
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill l to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp56 = ", "
	  .data			# create string constant marked with label
	  _string79: .asciiz ", "
	  .text
	  la $t2, _string79	# load label
	  sw $t2, -232($fp)	# spill _tmp56 from $t2 to $fp-232
	# PushParam _tmp56
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -232($fp)	# fill _tmp56 to $t0 from $fp-232
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill f to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp57 = " not found!\n"
	  .data			# create string constant marked with label
	  _string80: .asciiz " not found!\n"
	  .text
	  la $t2, _string80	# load label
	  sw $t2, -236($fp)	# spill _tmp57 from $t2 to $fp-236
	# PushParam _tmp57
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -236($fp)	# fill _tmp57 to $t0 from $fp-236
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _PrintLine
	  jal _PrintLine     	# jump to function
  endif_47:
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
	# VTable for class Database
	  .data
	  .align 2
	  Database:		# label for class Database vtable
	  .word Database_InitDatabase
	  .word Database_Search
	  .word Database_PersonExists
	  .word Database_Edit
	  .word Database_Add
	  .word Database_Delete
	  .text
  _PrintLine:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp0 = "-------------------------------------------------..."
	  .data			# create string constant marked with label
	  _string81: .asciiz "------------------------------------------------------------------------\n"
	  .text
	  la $t2, _string81	# load label
	  sw $t2, -8($fp)	# spill _tmp0 from $t2 to $fp-8
	# PushParam _tmp0
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill _tmp0 to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  _PrintHelp:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# LCall _PrintLine
	  jal _PrintLine     	# jump to function
	# _tmp0 = "List of Commands...\n\n"
	  .data			# create string constant marked with label
	  _string82: .asciiz "List of Commands...\n\n"
	  .text
	  la $t2, _string82	# load label
	  sw $t2, -8($fp)	# spill _tmp0 from $t2 to $fp-8
	# PushParam _tmp0
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill _tmp0 to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp1 = "add - lets you add a person\n"
	  .data			# create string constant marked with label
	  _string83: .asciiz "add - lets you add a person\n"
	  .text
	  la $t2, _string83	# load label
	  sw $t2, -12($fp)	# spill _tmp1 from $t2 to $fp-12
	# PushParam _tmp1
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill _tmp1 to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp2 = "delete - lets you delete a person\n"
	  .data			# create string constant marked with label
	  _string84: .asciiz "delete - lets you delete a person\n"
	  .text
	  la $t2, _string84	# load label
	  sw $t2, -16($fp)	# spill _tmp2 from $t2 to $fp-16
	# PushParam _tmp2
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -16($fp)	# fill _tmp2 to $t0 from $fp-16
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp3 = "search - lets you search for a specific person\n"
	  .data			# create string constant marked with label
	  _string85: .asciiz "search - lets you search for a specific person\n"
	  .text
	  la $t2, _string85	# load label
	  sw $t2, -20($fp)	# spill _tmp3 from $t2 to $fp-20
	# PushParam _tmp3
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -20($fp)	# fill _tmp3 to $t0 from $fp-20
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp4 = "edit - lets you edit the attributes of a specific..."
	  .data			# create string constant marked with label
	  _string86: .asciiz "edit - lets you edit the attributes of a specific person\n"
	  .text
	  la $t2, _string86	# load label
	  sw $t2, -24($fp)	# spill _tmp4 from $t2 to $fp-24
	# PushParam _tmp4
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -24($fp)	# fill _tmp4 to $t0 from $fp-24
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _PrintLine
	  jal _PrintLine     	# jump to function
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  main:
	# BeginFunc 140
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 140	# decrement sp to make space for locals/temps
	# _tmp2 = 16
	  li $t2, 16		# load constant value 16 into $t2
	  sw $t2, -16($fp)	# spill _tmp2 from $t2 to $fp-16
	# PushParam _tmp2
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -16($fp)	# fill _tmp2 to $t0 from $fp-16
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp3 = LCall _Alloc
	  jal _Alloc         	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -20($fp)	# spill _tmp3 from $t2 to $fp-20
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp4 = Database
	  la $t2, Database	# load label
	  sw $t2, -24($fp)	# spill _tmp4 from $t2 to $fp-24
	# *(_tmp3) = _tmp4
	  lw $t0, -24($fp)	# fill _tmp4 to $t0 from $fp-24
	  lw $t2, -20($fp)	# fill _tmp3 to $t2 from $fp-20
	  sw $t0, 0($t2) 	# store with offset
	# db = _tmp3
	  lw $t2, -20($fp)	# fill _tmp3 to $t2 from $fp-20
	  sw $t2, -8($fp)	# spill db from $t2 to $fp-8
	# _tmp5 = 10
	  li $t2, 10		# load constant value 10 into $t2
	  sw $t2, -28($fp)	# spill _tmp5 from $t2 to $fp-28
	# _tmp6 = *(db)
	  lw $t0, -8($fp)	# fill db to $t0 from $fp-8
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -32($fp)	# spill _tmp6 from $t2 to $fp-32
	# _tmp7 = *(_tmp6)
	  lw $t0, -32($fp)	# fill _tmp6 to $t0 from $fp-32
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -36($fp)	# spill _tmp7 from $t2 to $fp-36
	# PushParam _tmp5
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -28($fp)	# fill _tmp5 to $t0 from $fp-28
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam db
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill db to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# ACall _tmp7
	  lw $t0, -36($fp)	# fill _tmp7 to $t0 from $fp-36
	  jalr $t0            	# jump to function
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# LCall _PrintLine
	  jal _PrintLine     	# jump to function
	# _tmp8 = "Welcome to PeopleSearch!\n"
	  .data			# create string constant marked with label
	  _string87: .asciiz "Welcome to PeopleSearch!\n"
	  .text
	  la $t2, _string87	# load label
	  sw $t2, -40($fp)	# spill _tmp8 from $t2 to $fp-40
	# PushParam _tmp8
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -40($fp)	# fill _tmp8 to $t0 from $fp-40
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _PrintLine
	  jal _PrintLine     	# jump to function
	# _tmp9 = "\n"
	  .data			# create string constant marked with label
	  _string88: .asciiz "\n"
	  .text
	  la $t2, _string88	# load label
	  sw $t2, -44($fp)	# spill _tmp9 from $t2 to $fp-44
	# PushParam _tmp9
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -44($fp)	# fill _tmp9 to $t0 from $fp-44
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp10 = ""
	  .data			# create string constant marked with label
	  _string89: .asciiz ""
	  .text
	  la $t2, _string89	# load label
	  sw $t2, -48($fp)	# spill _tmp10 from $t2 to $fp-48
	# input = _tmp10
	  lw $t2, -48($fp)	# fill _tmp10 to $t2 from $fp-48
	  sw $t2, -12($fp)	# spill input from $t2 to $fp-12
  loopBegin_50:
	# _tmp11 = "quit"
	  .data			# create string constant marked with label
	  _string90: .asciiz "quit"
	  .text
	  la $t2, _string90	# load label
	  sw $t2, -52($fp)	# spill _tmp11 from $t2 to $fp-52
	# PushParam _tmp11
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -52($fp)	# fill _tmp11 to $t0 from $fp-52
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam input
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill input to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp12 = LCall _StringEqual
	  jal _StringEqual   	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -56($fp)	# spill _tmp12 from $t2 to $fp-56
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp13 = 0
	  li $t2, 0		# load constant value 0 into $t2
	  sw $t2, -60($fp)	# spill _tmp13 from $t2 to $fp-60
	# _tmp14 = _tmp12 == _tmp13
	  lw $t0, -56($fp)	# fill _tmp12 to $t0 from $fp-56
	  lw $t1, -60($fp)	# fill _tmp13 to $t1 from $fp-60
	  seq $t2, $t0, $t1	
	  sw $t2, -64($fp)	# spill _tmp14 from $t2 to $fp-64
	# IfZ _tmp14 Goto loopEnd_51
	  lw $t0, -64($fp)	# fill _tmp14 to $t0 from $fp-64
	  beqz $t0, loopEnd_51	# branch if _tmp14 is zero 
	# _tmp15 = "Please enter your command(type help for a list of..."
	  .data			# create string constant marked with label
	  _string91: .asciiz "Please enter your command(type help for a list of commands): "
	  .text
	  la $t2, _string91	# load label
	  sw $t2, -68($fp)	# spill _tmp15 from $t2 to $fp-68
	# PushParam _tmp15
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -68($fp)	# fill _tmp15 to $t0 from $fp-68
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp16 = LCall _ReadLine
	  jal _ReadLine      	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -72($fp)	# spill _tmp16 from $t2 to $fp-72
	# input = _tmp16
	  lw $t2, -72($fp)	# fill _tmp16 to $t2 from $fp-72
	  sw $t2, -12($fp)	# spill input from $t2 to $fp-12
	# _tmp17 = "help"
	  .data			# create string constant marked with label
	  _string92: .asciiz "help"
	  .text
	  la $t2, _string92	# load label
	  sw $t2, -76($fp)	# spill _tmp17 from $t2 to $fp-76
	# PushParam _tmp17
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -76($fp)	# fill _tmp17 to $t0 from $fp-76
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam input
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill input to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp18 = LCall _StringEqual
	  jal _StringEqual   	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -80($fp)	# spill _tmp18 from $t2 to $fp-80
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# IfZ _tmp18 Goto else_52
	  lw $t0, -80($fp)	# fill _tmp18 to $t0 from $fp-80
	  beqz $t0, else_52	# branch if _tmp18 is zero 
	# LCall _PrintHelp
	  jal _PrintHelp     	# jump to function
	# Goto endif_53
	  b endif_53		# unconditional branch
  else_52:
  endif_53:
	# _tmp19 = "search"
	  .data			# create string constant marked with label
	  _string93: .asciiz "search"
	  .text
	  la $t2, _string93	# load label
	  sw $t2, -84($fp)	# spill _tmp19 from $t2 to $fp-84
	# PushParam _tmp19
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -84($fp)	# fill _tmp19 to $t0 from $fp-84
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam input
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill input to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp20 = LCall _StringEqual
	  jal _StringEqual   	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -88($fp)	# spill _tmp20 from $t2 to $fp-88
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# IfZ _tmp20 Goto else_54
	  lw $t0, -88($fp)	# fill _tmp20 to $t0 from $fp-88
	  beqz $t0, else_54	# branch if _tmp20 is zero 
	# _tmp21 = *(db)
	  lw $t0, -8($fp)	# fill db to $t0 from $fp-8
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -92($fp)	# spill _tmp21 from $t2 to $fp-92
	# _tmp22 = *(_tmp21 + 4)
	  lw $t0, -92($fp)	# fill _tmp21 to $t0 from $fp-92
	  lw $t2, 4($t0) 	# load with offset
	  sw $t2, -96($fp)	# spill _tmp22 from $t2 to $fp-96
	# PushParam db
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill db to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# ACall _tmp22
	  lw $t0, -96($fp)	# fill _tmp22 to $t0 from $fp-96
	  jalr $t0            	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# Goto endif_55
	  b endif_55		# unconditional branch
  else_54:
  endif_55:
	# _tmp23 = "add"
	  .data			# create string constant marked with label
	  _string94: .asciiz "add"
	  .text
	  la $t2, _string94	# load label
	  sw $t2, -100($fp)	# spill _tmp23 from $t2 to $fp-100
	# PushParam _tmp23
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -100($fp)	# fill _tmp23 to $t0 from $fp-100
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam input
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill input to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp24 = LCall _StringEqual
	  jal _StringEqual   	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -104($fp)	# spill _tmp24 from $t2 to $fp-104
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# IfZ _tmp24 Goto else_56
	  lw $t0, -104($fp)	# fill _tmp24 to $t0 from $fp-104
	  beqz $t0, else_56	# branch if _tmp24 is zero 
	# _tmp25 = *(db)
	  lw $t0, -8($fp)	# fill db to $t0 from $fp-8
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -108($fp)	# spill _tmp25 from $t2 to $fp-108
	# _tmp26 = *(_tmp25 + 16)
	  lw $t0, -108($fp)	# fill _tmp25 to $t0 from $fp-108
	  lw $t2, 16($t0) 	# load with offset
	  sw $t2, -112($fp)	# spill _tmp26 from $t2 to $fp-112
	# PushParam db
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill db to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# ACall _tmp26
	  lw $t0, -112($fp)	# fill _tmp26 to $t0 from $fp-112
	  jalr $t0            	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# Goto endif_57
	  b endif_57		# unconditional branch
  else_56:
  endif_57:
	# _tmp27 = "delete"
	  .data			# create string constant marked with label
	  _string95: .asciiz "delete"
	  .text
	  la $t2, _string95	# load label
	  sw $t2, -116($fp)	# spill _tmp27 from $t2 to $fp-116
	# PushParam _tmp27
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -116($fp)	# fill _tmp27 to $t0 from $fp-116
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam input
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill input to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp28 = LCall _StringEqual
	  jal _StringEqual   	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -120($fp)	# spill _tmp28 from $t2 to $fp-120
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# IfZ _tmp28 Goto else_58
	  lw $t0, -120($fp)	# fill _tmp28 to $t0 from $fp-120
	  beqz $t0, else_58	# branch if _tmp28 is zero 
	# _tmp29 = *(db)
	  lw $t0, -8($fp)	# fill db to $t0 from $fp-8
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -124($fp)	# spill _tmp29 from $t2 to $fp-124
	# _tmp30 = *(_tmp29 + 20)
	  lw $t0, -124($fp)	# fill _tmp29 to $t0 from $fp-124
	  lw $t2, 20($t0) 	# load with offset
	  sw $t2, -128($fp)	# spill _tmp30 from $t2 to $fp-128
	# PushParam db
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill db to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# ACall _tmp30
	  lw $t0, -128($fp)	# fill _tmp30 to $t0 from $fp-128
	  jalr $t0            	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# Goto endif_59
	  b endif_59		# unconditional branch
  else_58:
  endif_59:
	# _tmp31 = "edit"
	  .data			# create string constant marked with label
	  _string96: .asciiz "edit"
	  .text
	  la $t2, _string96	# load label
	  sw $t2, -132($fp)	# spill _tmp31 from $t2 to $fp-132
	# PushParam _tmp31
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -132($fp)	# fill _tmp31 to $t0 from $fp-132
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam input
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# fill input to $t0 from $fp-12
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp32 = LCall _StringEqual
	  jal _StringEqual   	# jump to function
	  move $t2, $v0		# copy function return value from $v0
	  sw $t2, -136($fp)	# spill _tmp32 from $t2 to $fp-136
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# IfZ _tmp32 Goto else_60
	  lw $t0, -136($fp)	# fill _tmp32 to $t0 from $fp-136
	  beqz $t0, else_60	# branch if _tmp32 is zero 
	# _tmp33 = *(db)
	  lw $t0, -8($fp)	# fill db to $t0 from $fp-8
	  lw $t2, 0($t0) 	# load with offset
	  sw $t2, -140($fp)	# spill _tmp33 from $t2 to $fp-140
	# _tmp34 = *(_tmp33 + 12)
	  lw $t0, -140($fp)	# fill _tmp33 to $t0 from $fp-140
	  lw $t2, 12($t0) 	# load with offset
	  sw $t2, -144($fp)	# spill _tmp34 from $t2 to $fp-144
	# PushParam db
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# fill db to $t0 from $fp-8
	  sw $t0, 4($sp)	# copy param value to stack
	# ACall _tmp34
	  lw $t0, -144($fp)	# fill _tmp34 to $t0 from $fp-144
	  jalr $t0            	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# Goto endif_61
	  b endif_61		# unconditional branch
  else_60:
  endif_61:
	# Goto loopBegin_50
	  b loopBegin_50		# unconditional branch
  loopEnd_51:
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
_PrintInt:
        subu $sp, $sp, 8
        sw $fp, 8($sp)
        sw $ra, 4($sp)
        addiu $fp, $sp, 8
        li   $v0, 1
        lw   $a0, 4($fp)
        syscall
        move $sp, $fp
        lw $ra, -4($fp)
        lw $fp, 0($fp)
        jr $ra
                                
_PrintString:
        subu $sp, $sp, 8
        sw $fp, 8($sp)
        sw $ra, 4($sp)
        addiu $fp, $sp, 8
        li   $v0, 4
        lw $a0, 4($fp)
        syscall
        move $sp, $fp
        lw $ra, -4($fp)
        lw $fp, 0($fp)
        jr $ra
        
_PrintBool:
	subu $sp, $sp, 8
	sw $fp, 8($sp)
	sw $ra, 4($sp)
        addiu $fp, $sp, 8
	lw $t1, 4($fp)
	blez $t1, fbr
	li   $v0, 4		# system call for print_str
	la   $a0, TRUE		# address of str to print
	syscall			
	b end
fbr:	li   $v0, 4		# system call for print_str
	la   $a0, FALSE		# address of str to print
	syscall				
end:	move $sp, $fp
	lw $ra, -4($fp)
	lw $fp, 0($fp)
	jr $ra

_Alloc:
        subu $sp, $sp, 8
        sw $fp, 8($sp)
        sw $ra, 4($sp)
        addiu $fp, $sp, 8
        li   $v0, 9
        lw $a0, 4($fp)
	syscall
        move $sp, $fp
        lw $ra, -4($fp)
        lw $fp, 0($fp) 
        jr $ra


_StringEqual:
	subu $sp, $sp, 8      # decrement sp to make space to save ra, fp
	sw $fp, 8($sp)        # save fp
	sw $ra, 4($sp)        # save ra
	addiu $fp, $sp, 8     # set up new fp
	subu $sp, $sp, 4      # decrement sp to make space for locals/temps

	li $v0,0

	#Determine length string 1
	lw $t0, 4($fp)       
	li $t3,0
bloop1: 
	lb $t5, ($t0) 
	beqz $t5, eloop1	
	addi $t0, 1
	addi $t3, 1
	b bloop1
eloop1:
	
	#Determine length string 2
	lw $t1, 8($fp)
	li $t4,0
bloop2: 
	lb $t5, ($t1) 
	beqz $t5, eloop2	
	addi $t1, 1
	addi $t4, 1
	b bloop2
eloop2:
	bne $t3,$t4,end1       #Check String Lengths Same

	lw $t0, 4($fp)	
	lw $t1, 8($fp)
	li $t3, 0     		
bloop3:	
	lb $t5, ($t0) 
	lb $t6, ($t1) 
	bne $t5, $t6, end1
	beqz $t5, eloop3
	addi $t3, 1
	addi $t0, 1
	addi $t1, 1
	#bne $t3,$t4,bloop3
	b bloop3
eloop3:	li $v0,1

end1:	move $sp, $fp         # pop callee frame off stack
	lw $ra, -4($fp)       # restore saved ra
	lw $fp, 0($fp)        # restore saved fp
	jr $ra                # return from function

_Halt:
        li $v0, 10
        syscall

_ReadInteger:
	subu $sp, $sp, 8      # decrement sp to make space to save ra, fp
	sw $fp, 8($sp)        # save fp
	sw $ra, 4($sp)        # save ra
	addiu $fp, $sp, 8     # set up new fp
	subu $sp, $sp, 4      # decrement sp to make space for locals/temps
	li $v0, 5
	syscall
	move $sp, $fp         # pop callee frame off stack
	lw $ra, -4($fp)       # restore saved ra
	lw $fp, 0($fp)        # restore saved fp
	jr $ra
        

_ReadLine:
	subu $sp, $sp, 8      # decrement sp to make space to save ra, fp
	sw $fp, 8($sp)        # save fp
	sw $ra, 4($sp)        # save ra
	addiu $fp, $sp, 8     # set up new fp
	subu $sp, $sp, 4      # decrement sp to make space for locals/temps
	# allocate space to store memory
	li $a0, 128           # request 128 bytes
	li $v0, 9	      # syscall "sbrk" for memory allocation
	syscall               # do the system call
	# read in the new line
	li $a1, 128	      # size of the buffer
	#la $a0, SPACE        
	move $a0, $v0	      # location of the buffer	
	li $v0, 8 
	syscall

	#la $t1, SPACE  
	move $t1, $a0
bloop4: 
	lb $t5, ($t1) 
	beqz $t5, eloop4	
	addi $t1, 1
	b bloop4
eloop4:
	addi $t1,-1
	li $t6,0
	sb $t6, ($t1)

	#la $v0, SPACE
	move $v0, $a0	      # save buffer location to v0 as return value	
	move $sp, $fp         # pop callee frame off stack
	lw $ra, -4($fp)       # restore saved ra
	lw $fp, 0($fp)        # restore saved fp
	jr $ra
	

	.data
TRUE:.asciiz "true"
FALSE:.asciiz "false"
SPACE:.asciiz "Making Space For Inputed Values Is Fun."
SPACE2:.asciiz "AAA.\n"
