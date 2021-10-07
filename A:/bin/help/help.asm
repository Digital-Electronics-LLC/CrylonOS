;the "h" command

help_string:          data "commands: exit, help", 0
h:
  load help_string, B
  call print_string
  ret
