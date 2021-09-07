; VSBoot by DiamondCoder1000
;store this in ROM, not Flash

ssdr $0000, $0000 ;SSD read block 0 to address 0, overwriting this instruction

;only 2 words of ROM, and our bootloader is done!
;machine code for our loader:
;0x100000 0x000000
