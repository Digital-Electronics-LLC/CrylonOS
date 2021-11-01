;store at ssd block 0x300001
hello_test:
  message:      data "hello from CrylonOS!"

  load A, message
  call print_string
