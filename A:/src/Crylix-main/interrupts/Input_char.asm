;input_char interrupt by DiamondCoder1000
;loads char into A
input_char:
  xor A, A; clear A
  loadi B, 1; loads the device address for keyboard into B
  ind B, A ;input from keyboard
  xor B, B ;clear B
  outa B ;disables all enabled peripherals

;sample program :
;call input_char
;store A, $ffff
;xor A, A
