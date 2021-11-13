;the "user" command prints the current user using the OS
;which is by default and unchangable, "crlnusr" or Crylon User
%include A:/sys/syscall.asm
userName:      data "crlnusr"
user:
  load A, userName
  call print
