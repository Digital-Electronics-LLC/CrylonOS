;VSTS(very simple text shell) by DiamondCoder1000

version:      data "0.1-alpha18"

%include A:/bin/exit/exit.asm
%include A:/bin/ls/ls.asm
%include A:/bin/help/help.asm
%include A:/bin/open/open.asm
%include A:/bin/ver/ver.asm
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
  ;the "exit" command
  loadi B, "exit"
  comp A, B
  jmpif command_e, E
  xor B, B
  ;the "help" command
  loadi B, "help"
  comp A, B
  jmpif command_h, E
  xor B, B
  ;the "ver" command
  command_exit: 
    call exit
    jump NoError
  command_help: 
    call help
    jump NoError
  command_ver:
    call ver
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


  
