;CrylixOS kernel by DiamondCoder1000
;basically, the OS
;store in SSD at block 0

;-------------------------------------------------------------------
;|                                                                 |
;|                         System Calls                            |
;|                                                                 |
;|                                                                 |
;-------------------------------------------------------------------

%include A:/src/Crylix-main/kernel/sys_calls/end.asm
%include A:/src/Crylix-main/kernel/sys_calls/input_char.asm
%include A:/src/Crylix-main/kernel/sys_calls/mod.asm
%include A:/src/Crylix-main/kernel/sys_calls/mult.asm
%include A:/src/Crylix-main/kernel/sys_calls/panic.asm
%include A:/src/Crylix-main/kernel/sys_calls/print_char.asm
%include A:/src/Crylix-main/kernel/sys_calls/print_hex.asm
%include A:/src/Crylix-main/kernel/sys_calls/readSSD.asm
%include A:/src/Crylix-main/kernel/sys_calls/writeSSD.asm
  
;|--------------------------|
;|                          |
;|        MALLOC            |
;|                          |
;|--------------------------|

;memory alloctation by DiamondCoder1000
;location of block allocated stored in X
;each block is 256 bytes 
;224 blocks accessible
;store this right next to kernel in SSD

malloc:
  ;unfinished
  ;still procrastinating
  ret
  
  
;|-------------------|
;|        FS         |
;|-------------------|


;simpleFS by DiamondCoder1000
;very simple file system
createFile:
  ;unfinished
  ret

deleteFile:
  ;unfinished
  ret

readFile:
  ;unfinished
  ret

writeFile:
  ;you guessed it, unfinished
  ret

;|--------------------|
;|        Code        |
;|--------------------|

loadi A, "k"
call print_char
loadi A, "e"
call print_char
loadi A, "r"
call print_char
loadi A, "n"
call print_char
loadi A, "e"
call print_char
loadi A, "l"
call print_char
loadi A, " "
call print_char
loadi A, "0"
call print_char
loadi A, "."
call print_char
loadi A, "5"
call print_char

;testing memory
loadi A, 10
store A, 0x101401
load B, 0x101401
loadi A, 10
comp A, B
je the_end
call panic; panic! the memory doesn't work!

the_end:
  call end
