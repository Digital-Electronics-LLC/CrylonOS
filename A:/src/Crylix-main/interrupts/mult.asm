;mult interrupt by DiamondCoder1000
;assumes num1 is in A and num2 is in B
;clears X and Y
;answer is stored in X
mult:
  xor X, X; clear X
  xor Y, Y; clear Y
  add X, A; add X to A
  dec B
  comp B, Y
  jmpif 13, E
  jump 8
