;the "h" command
;i can actually code this, but i have to take an eye break
;don't wanna go blind!

%include A:/src/Crylix-main/kernel/sys_calls/print_char.asm

h:
  loadi A, "c"
  call print_char
  loadi A, "o"
  call print_char
  loadi A, "m"
  call print_char
  call print_char
  loadi A, "a"
  call print_char
  loadi A, "n"
  call print_char
  loadi A, "d"
  call print_char
  loadi A, "s"
  call print_char
  loadi A, ":"
  call print_char
  loadi A, " "
  call print_char
  loadi A, "e"
  call print_char
  loadi A, " "
  call print_char
  loadi A, "h"
  call print_char
