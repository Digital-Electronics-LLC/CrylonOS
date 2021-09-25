;CrylonOS kernel by DiamondCoder1000
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
%include A:/src/Crylix-main/kernel/sys_calls/print_string.asm; yesssssssss finally!!!

;|--------------------------|
;|                          |
;|        MALLOC            |
;|                          |
;|--------------------------|


%include A:/src/Crylix-main/kernel/malloc.asm
  
  
;|-------------------|
;|        FS         |
;|-------------------|


%include A:/src/Crylix-main/kernel/vsfs/vsfs.asm


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
loadi A, "9"
call print_char

;testing memory
loadi A, 10
store A, 0x400000
load B, 0x400000
loadi A, 10
comp A, B
jmpif shell_init, E
call panic; panic! the memory doesn't work!

shell_init:
  %include A:/bin/shell.asm
  call main
  
