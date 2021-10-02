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
;unfinished
