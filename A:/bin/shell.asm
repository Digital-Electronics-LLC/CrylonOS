;VSTS(very simple text shell) by DiamondCoder1000

%include A:/bin/e/e.asm
%include A:/bin/d/d.asm
%include A:/bin/h/h.asm
%include A:/bin/o/o.asm
%include A:/src/Crylix-main/kernel/sys_calls/print_char.asm
%include A:/src/Crylix-main/kernel/sys_calls/input_char.asm
%include A:/src/Crylix-main/kernel/sys_calls/print_char.asm

init:
  loadi A, "s"
  call print_char
  loadi A, "e"
  call print_char
  loadi A, "l"
  call print_char
  call print_char
  loadi A, " "
  call print_char
  loadi A, "0"
  call print_char
  loadi A, "."
  call print_char
  loadi A, "1"

main:
  loadi A, ">"
  call print_char
  xor A, A
  call input_char
  loadi B, "e"
  comp A, B
  jmpif command_e, E
command_e: call e  
  loadi A, "\n"
  call print_char
  jump main


  
