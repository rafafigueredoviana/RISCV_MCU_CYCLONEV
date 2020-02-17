#include <stdio.h>
#include <event.h>
#include <gpio.h>

#define DATA_RAM_BASE 	0x00100000
#define APB_BASE_ADDR 	0x1A100000

#define UART_APB_BASE   0x00000000
#define GPIO_APB_BASE	0x00001000

#define GPIO_ADDR (APB_BASE_ADDR + GPIO_APB_BASE)
#define __riscv__

void jump_and_start(volatile int *ptr);

int main()
{
  

  // Sets GPIO[0] pin to HIGH
  set_gpio_pin_value(0, 1); 

  //-----------------------------------------------------------
  // Set new boot address -> exceptions/interrupts/events rely
  // on that information
  //-----------------------------------------------------------

  BOOTREG = 0x00;

  //-----------------------------------------------------------
  // Done jump to main program
  //-----------------------------------------------------------

  //jump to program start address (instruction base address)
  jump_and_start((volatile int *)(INSTR_RAM_START_ADDR));


  return 0;
}


void jump_and_start(volatile int *ptr)
{
#ifdef __riscv__
  asm("jalr x0, %0\n"
      "nop\n"
      "nop\n"
      "nop\n"
      : : "r" (ptr) );
#else
  asm("l.jr\t%0\n"
      "l.nop\n"
      "l.nop\n"
      "l.nop\n"
      : : "r" (ptr) );
#endif
}