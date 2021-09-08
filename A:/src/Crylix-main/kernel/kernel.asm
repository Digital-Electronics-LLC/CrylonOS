;CrylixOS kernel by DiamondCoder1000
;basically, the OS
;store in SSD at block 0

;-------------------------------------------------------------------
;|                                                                 |
;|                         Interrupts                              |
;|                                                                 |
;|                                                                 |
;-------------------------------------------------------------------

;print_char interrupt by DiamondCoder1000
;assumes the character has been loaded into A

print_char:
  loadi B, 2 ;load the device address for display monitor, 2, into B
  outa B ;enables the display monitor
  outd 2, A ;outputs A to dislay monitor
  xor B, B ;sets B to zero
  outa B ;loads 0 into the I/O bus, unselecting all devices enabled
  ret

;input_char interrupt by DiamondCoder1000
;loads char into A

input_char:
  xor A, A; clear A
  loadi B, 1; loads the device address for keyboard into B
  ind 1, A ;input from keyboard
  xor B, B ;clear B
  outa B ;disables all enabled peripherals
  ret

;print hex interrupt by DiamondCoder1000
;assumes the number has been loaded into A

print_hex:
  loadi B, 3; load the device address into B
  outa B; enables the hex display
  outd B, A; outputs A to hex display
  xor B, B; clear B
  outa B; disables all enabled devices
  ret
  
;mult interrupt by DiamondCoder1000
;assumes num1 is in A and num2 is in B
;clears X and Y
;answer is stored in X

mult:
  xor X, X; clear X
  xor Y, Y; clear Y
  label3: add X, A; add X to A
  dec B
  comp B, Y
  jmpif return, E
  jump 49
  return: ret
  
;mod interrupt by DiamondCoder1000
;assumes num1 is in A and num2 is in B
;finds the remainder of 2 numbers A and B if said numbers were divided
;answer in X

mod:
  label1: sub A, B
  jmpif label2, N
  jump label1
  label2: add B, A
  copy B, X
  ret
  
;readSSD interrupt by DiamondCoder1000
;the address the block is sent to is in B
;the block chosen is in A

readSSD:
  ssdr A, B
  xor A, A
  xor B, B
  ret
  
;writeSSD interrupt by DiamondCoder1000
;the address the block is sent to is in B
;the block chosen is in A

writeSSD:
  ssdw A, B
  xor A, A
  xor B, B
  ret

;kernel panic by DiamondCoder1000
panic:
  label:  loadi A, "p"
  call print_char
  loadi A, "a"
  call print_char
  loadi A, "n"
  call print_char
  loadi A, "i"
  call print_char
  loadi A, "c"
  jump label
  
;|--------------------------|
;|                          |
;|        MALLOC            |
;|                          |
;|--------------------------|

;memory alloctation by DiamondCoder1000
;location of block allocated stored in X
;each block is 256 bytes 
;224 blocks accessible
;store this right next to kernel in SSD

malloc:
  ;unfinished
  ;still procrastinating
  ret
  
  
;|-------------------|
;|        FS         |
;|-------------------|


;simpleFS by DiamondCoder1000
;very simple file system
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

;|--------------------|
;|        Code        |
;|--------------------|

loadi A, "k"
call print_char
loadi A, "e"
call print_char
loadi A, "r"
call print_char
loadi A, "n"
call print_char
loadi A, "e"
call print_char
loadi A, "l"
call print_char
loadi A, "0"
call print_char
loadi A, "."
call print_char
loadi A, "5"
call print_char

end:
  jump end
