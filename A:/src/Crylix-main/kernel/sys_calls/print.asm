print:
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
