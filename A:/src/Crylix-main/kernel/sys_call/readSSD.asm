;readSSD interrupt by DiamondCoder1000
;the address the block is sent to is in B
;the block chosen is in A
readSSD:
  ssdr A, B
  xor A, A
  xor B, B
