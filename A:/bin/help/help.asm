;the "h" command

%include A:/src/Crylix-main/kernel/sys_calls/print.asm

help_string:          data "commands: exit, help, ver", 0
help:
  load help_string, B
  call print_string
  ret
