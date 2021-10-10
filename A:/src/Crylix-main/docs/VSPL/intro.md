# What is VSPL?
VSPL(very simple prpgramming language) is a low level programming language that is anything but simple. So, it's a cross between the 
Jack Language from nand2tetris and assembly. About 50% of CrylonOS is gonna be coded in VSPL. So, this is the intro. Ummm, Bye?

#### VSPL Sample

```
//debug.vspl
//made by DiamondCoder1000

#include "A:/src/Crylix-main/kernel/sys_calls/print.asm"
#include "A:/src/Crylix-main/kernel/libs/libvspl/"

function error()
{
  print();
  //basically the error is written into A register
  //the, error() prints it out
  //AND halts the system
  int x = 5;
  while(x)
  {
    nop();
  }
}
```
