;VSTS(very simple text shell) by DiamondCoder1000

%include A:/bin/e/e.asm
%include A:/bin/d/d.asm
%include A:/bin/h/h.asm
%include A:/bin/o/o.asm
%include A:/src/Crylix-main/kernel/sys_calls/print_char.asm
%include A:/src/Crylix-main/kernel/sys_calls/input_char.asm
%include A:/src/Crylix-main/kernel/sys_calls/print_string.asm
%include A:/bin/apps/basic.asm
%include A:/bin/apps/calculator.asm
%include A:/bin/apps/test.asm
%include A:/bin/apps/vste.asm

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
  ;the E command
  xor A, A
  call input_char
  loadi B, "e"
  comp A, B
  jmpif command_e, E
command_e: call e  
  loadi A, "\n"
  call print_char
  jump main


  
