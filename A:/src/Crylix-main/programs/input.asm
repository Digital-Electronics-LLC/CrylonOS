;converts a inputed decimal number to a hexadecimal
loadi B, 1
outa B
ind 1, A
xor B, B
outa B
loadi B, 3
outd 3, A
xor B, B
outa B
xor A, A
