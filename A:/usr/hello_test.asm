;store at ssd block 0x300001
%include A:/src/Crylix-main/kernel/sys_calls/print.asm
hello_test:
  message:      data "hello from CrylonOS!"

  load A, message
  call print
  ret
