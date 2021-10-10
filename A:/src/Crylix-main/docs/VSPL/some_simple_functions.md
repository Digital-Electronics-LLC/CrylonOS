# VSPL Functions

## save();

The save(); function's syntax is written like this: `save(reg, address);`. "reg" is the register in which the data in RAM address "address"
is saved. Example: `save(A, 456);`. So, right now, A = whatever is in RAM address 456. So, if address 456 contains the number 10, the A = 10. I hope that's a good enough explenation. (PS, there are 4 usable registers, A, B, X, Y)

## savei();

The savei(); function's syntax is written like this: `savei(reg, data)`. This statement functions similar to save(); but instead of an address's data being saved into a register, an immediate value is being saved. So, `savei(A, 10);` says that A = 10.

## store();

The store(); function is basically the save(); function but reversed. The syntax is written like: `store(reg, address);`. If you typed `store(X, 4000);` and X had the number 12 stored in it, the RAM address 4000 would equal 12. I hope that makes sense lol.

## add(); sub(); xor(); and(); or();

They do what they say. Syntax for all of them:
```
add(reg1, reg2); // adds contents in reg1 to reg2. Stores answer in reg2.
sub(reg1, reg2); // subtracts contents in reg1 to reg2. Stores answer in reg2.
xor(reg1, reg2); // logical xor
and(reg1, reg2); // logical and
or(reg1, reg2); // logical or
```
## lodsb();

lodsb(); is kinda complex to explain. Just google, lodsb.

## inc(); dec();

syntax: int(reg); dec(reg);
increases or decreases the register "reg" by 1, respectivly.

