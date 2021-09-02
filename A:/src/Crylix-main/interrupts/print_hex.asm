;print hex interrupt by DiamondCoder1000
;assumes the number has been loaded into A
print_hex:
  loadi B, 3; load the device address into B
  outa B; enables the hex display
  outd B, A; outputs A to hex display
  xor B, B; clear B
  outa B; disables all enabled devices
