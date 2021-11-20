;CrylonOS kernel by DiamondCoder1000
;basically, the OS
;store in SSD at block 0


;+----------------------------------------------------------------+
;|                                                                |
;|                                                                |
;|                            INIT                                |
;|                                                                |
;|                                                                |
;|                                                                |
;+----------------------------------------------------------------+
      ;The Kernel init code is down there  ↓↓↓↓↓
;+-----------------------------------------------------------------+
;|                                                                 |
;|                         System Calls                            |
;|                                                                 |
;|                                                                 |
;+-----------------------------------------------------------------+

%include A:/src/Crylix-main/kernel/sys_calls/end.asm
%include A:/src/Crylix-main/kernel/sys_calls/input_char.asm
%include A:/src/Crylix-main/kernel/sys_calls/mod.asm
%include A:/src/Crylix-main/kernel/sys_calls/mult.asm
%include A:/src/Crylix-main/kernel/sys_calls/panic.asm
%include A:/src/Crylix-main/kernel/sys_calls/print_char.asm
%include A:/src/Crylix-main/kernel/sys_calls/print_hex.asm
%include A:/src/Crylix-main/kernel/sys_calls/readSSD.asm
%include A:/src/Crylix-main/kernel/sys_calls/writeSSD.asm
%include A:/src/Crylix-main/kernel/sys_calls/print.asm; yesssssssss finally!!!

;+--------------------------+
;|                          |
;|        MALLOC            |
;|                          |
;+--------------------------+


;no more malloc, its completely in VSPL
  
  
;+-------------------+
;|        FS         |
;+-------------------+


%include A:/src/Crylix-main/kernel/vsfs/vsfs.asm
call fs_init

;+------------------+
;|       DEBUG      |
;+------------------+

%include A:/src/Crylix-main/kernel/debug.vspl

;+--------------------+
;|        Code        |
;+--------------------+

;strings
kernel_string:      data "Crylix Kernel 0.12", 0
shell_init_string:      data "initializing shell...", 0

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
  xor A, A
  load A, shell_init_string
  call print_char
  xor A,A
  %include A:/bin/vsts.vspl
  call init
  
;end
