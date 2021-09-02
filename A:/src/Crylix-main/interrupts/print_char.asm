;print_char interrupt by DiamondCoder1000
;assumes the character has been loaded into A
print_char: ;print_char subroutine, er, interrupt 
  loadi B, 2 ;load the device address for display monitor, 2, into B
  outa B ;enables the display monitor
  outd B, A ;outputs A to dislay monitor
  xor B, B ;sets B to zero
  outa B ;loads 0 into the I/O bus, unselecting all devices enabled
;small example:
;loadi A, "a"
;call print_char
;xor A, A
