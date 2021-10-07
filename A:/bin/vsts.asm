;VSTS(very simple text shell) by DiamondCoder1000

%include A:/bin/e/exit.asm
%include A:/bin/d/ls.asm
%include A:/bin/h/help.asm
%include A:/bin/o/open.asm
%include A:/src/Crylix-main/kernel/sys_calls/print_char.asm
%include A:/src/Crylix-main/kernel/sys_calls/input_char.asm
%include A:/src/Crylix-main/kernel/sys_calls/print_string.asm
%include A:/bin/apps/basic.asm
%include A:/bin/apps/calculator.asm
%include A:/bin/apps/hello_test.asm
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
  jump main
  
ERRORSTRING:      data "ERROR: COMMAND, PROGRAM, OR FILE NOT FOUND"

main:
  loadi A, ">"
  call print_char
  xor A, A
  call input_char
  ;the "E" command
  loadi B, "e"
  comp A, B
  jmpif command_e, E
  xor B, B
  ;the "H" command
  loadi B, "h"
  comp A, B
  jmpif command_h, E
  xor B, B
  
  command_e: 
    call e
    jump NoError
  command_h: 
    call h
    jump NoError
  NoError:
    loadi A, "\n"
    call print_char
    jump main
  load A, ERRORSTRING
  call print_string
  loadi A, "\n"
  call print_char
  jump main


  
