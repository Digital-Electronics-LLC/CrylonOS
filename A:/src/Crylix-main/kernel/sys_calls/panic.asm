;kernel panic by DiamondCoder1000
panic:
  loadi A, "p"
  call print_char
  loadi A, "a"
  call print_char
  loadi A, "n"
  call print_char
  loadi A, "i"
  call print_char
  loadi A, "c"
  jump panic
  
