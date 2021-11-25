;the "user" command prints the current user using the OS
;which is by default and unchangable, "user1" or Crylon User
%include A:/sys/syscall.asm
userName:      data "user1"
user:
  load A, userName
  call print
