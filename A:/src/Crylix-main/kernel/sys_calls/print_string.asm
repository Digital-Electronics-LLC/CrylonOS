print_string:
  push A
  push B
  
  repeat:
    lodsb A
    cmp A, B
    jmpif done, E
    
    call print_char
    jump repeat
  done:
    pop A
    pop B
    ret
