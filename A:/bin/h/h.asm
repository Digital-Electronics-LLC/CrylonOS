;the "h" command

help_string:          data "commands: e h", 0
h:
  load help_string, B
  call print_string
  ret
