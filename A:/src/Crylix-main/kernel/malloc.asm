;memory alloctation by DiamondCoder1000
;location of block allocated stored in X
;each block is 4096 bytes 
;512 blocks accessible

%include A:/src/Crylix-main/kernel/sys_calls/print.asm

malloc_init:
  loadi A, "initializing malloc..."
  call print
  jump main

main:
  
