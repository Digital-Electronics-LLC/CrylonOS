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

;strings
kernel_string:      data "Crylix Kernel 0.12"
shell_init_string:      data "initializing shell..."

load A, kernel_string
call print_string

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
  
