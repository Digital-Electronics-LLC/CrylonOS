;VSTS(very simple text shell) by DiamondCoder1000

version:      data "0.1-alpha20"

%include A:/bin/user/user.asm
%include A:/bin/exit/exit.asm
%include A:/bin/ls/ls.asm
%include A:/bin/help/help.asm
%include A:/bin/open/open.asm
%include A:/bin/ver/ver.asm
%include A:/bin/about/about.asm
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
  loadi A, "8"
  jump main
  
ERRORSTRING:      data "ERROR: COMMAND, PROGRAM, OR FILE NOT FOUND"

main:
  loadi A, "shell>"
  call print_char
  xor A, A
  call input_char
  
  ;the "exit" command
  loadi B, "exit"
  comp A, B
  jmpif command_exit, E
  xor B, B
  
  ;the "help" command
  loadi B, "help"
  comp A, B
  jmpif command_help, E
  xor B, B
  
  ;the "ver" command
  loadi B, "ver"
  comp A, B
  jumpif command_ver, E
  
  ;the "about" command
  loadi B, "about"
  comp A, B
  jumpif command_about, E
  
  ;the "user" command
  loadi B, "user"
  comp A, B
  jumpif command_about, E
  
  command_exit: 
    call exit
    jump NoError
  command_help: 
    call help
    jump NoError
  command_ver:
    call ver
    jump NoError
  command_about:
    call about
    jump NoError
  command_user:
    call user
    jump NoError
  NoError:
    loadi A, "\n"
    call print_char
    jump main
  
  ;if there is an error
  load A, ERRORSTRING
  call print_string
  loadi A, "\n"
  call print_char
  jump main


  
