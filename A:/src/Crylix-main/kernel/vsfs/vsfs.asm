;vsfs by DiamondCoder1000
;very simple file system
%include A:/src/Crylix-main/kernel/sys_calls/print.asm

fs_init:
  loadi A, "Mounting filesystem..."
  call print
  jump main
  
main:
  %include A:/src/Crylix-main/kernel/vsfs/deleteFile.asm
  %include A:/src/Crylix-main/kernel/vsfs/createFile.asm
  %include A:/src/Crylix-main/kernel/vsfs/readFile.asm
  %include A:/src/Crylix-main/kernel/vsfs/writeFile.asm
