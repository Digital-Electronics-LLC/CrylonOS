;vsfs by DiamondCoder1000
;very simple file system
%include A:/src/Crylix-main/kernel/sys_calls/print.asm

fs_init:
  loadi A, "Mounting filesystem..."
  call print
  jump main
  
main:
  
createFile:
  ;unfinished
  ret

deleteFile:
  ;unfinished
  ret
  
readFile:
  ;unfinished
  ret
  
writeFile:
  ;you guessed it, unfinished
  ret
