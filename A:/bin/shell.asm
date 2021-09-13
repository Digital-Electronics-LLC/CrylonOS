;VSTS(very simple text shell) by DiamondCoder1000

%include A:/bin/d
%include A:/bin/f
%include A:/bin/h
%include A:/bin/o
%include A:/src/Crylix-main/kernel/sys_calls/print_char.asm
%include A:/src/Crylix-main/kernel/sys_calls/input_char.asm

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
  ;the e command
  xor A, A
  call input_char
  loadi B, "e"
  comp A, B
  je command_e
command_e: call e  


  
