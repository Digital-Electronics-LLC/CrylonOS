%include A:/src/Crylix-main/kernel/sys_calls/print_char.asm

hello:
  loadi A, "h"
  call print_char
  loadi A, "e"
  call print_char
  loadi A, "l"
  call print_char
  call print_char
  loadi A, "o"
  call print_char
  
