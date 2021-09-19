;the "h" command
;i can actually code this, but i have to take an eye break
;don't wanna go blind!

%include A:/src/Crylix-main/kernel/sys_calls/print_char.asm

help_string: data "commands: e h", 0
h:
  load help_string, B
  call print_string
  
