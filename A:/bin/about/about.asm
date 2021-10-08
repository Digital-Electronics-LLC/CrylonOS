%include A:/src/Crylix-main/kernel/sys_calls/print.asm
about:
  push A
  about_string:     data "CrylonOS 0.1-alpha18 \nyou are using a dev version of CrylonOS"
  about_string_two:       data "made by DiamondCoder1000 \ninspired by Robotman2412"
  loadi A, about_string
  call print
  loadi A, about_string_two
  call print
  pop A
