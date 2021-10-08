;the "h" command

help_string:          data "commands: exit, help, ver", 0
help:
  load help_string, B
  call print_string
  ret
