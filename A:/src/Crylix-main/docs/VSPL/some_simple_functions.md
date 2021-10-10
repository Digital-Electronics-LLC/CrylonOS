# VSPL Functions

## save();

The save(); function's syntax is written like this: `save(reg, address);`. "reg" is the register in which the data in RAM address "address"
is saved. Example: `save(A, 456);`. So, right now, A = whatever is in RAM address 456. So, if address 456 contains the number 10, the A = 10. I hope that's a good enough explenation. (PS, there are 4 usable registers, A, B, X, Y)

## savei();

The savei(); function's syntax is written like this: `savei(reg, data)`. This statement functions similar to save(); but instead of an address's data being saved into a register, an immediate value is being saved. So, `savei(A, 10);` says that A = 10.

## store();

The store(); function is basically the save(); function but reversed.
