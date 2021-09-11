;mod interrupt by DiamondCoder1000
;assumes num1 is in A and num2 is in B
;finds the remainder of 2 numbers A and B if said numbers were divided
;answer in X
mod:
  sub A, B
  jmpif 9, N
  jump 6
  add B, A
  copy B, X
