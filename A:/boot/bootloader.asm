print_string:
  push B
  
  repeat:
    copy B, A
    comp A, B
    jmpif done, E
    
    call print_char
    jump repeat
  done:
    xor A, A
    pop B
    ret

loadi A, "Booting CrylonOS..."
call print_string

xor A, A
loadi A, 5
outa A
loadi A, 1
outd A
loadi A, 0
outd A
xor A, A
xor B, B

loadi A, "Welcome"
call print_string

times 4096-($-$$) data 0
data 0x55aa

