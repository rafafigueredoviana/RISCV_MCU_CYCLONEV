#include <stdio.h>

#define DATA_RAM_BASE 	0x00100000
#define APB_BASE_ADDR 	0x1A100000

#define UART_APB_BASE   0x00000000
#define GPIO_APB_BASE	0x00001000

#define GPIO_ADDR (APB_BASE_ADDR + GPIO_APB_BASE)

int main()
{


  int *pointer_ram;
  int *pointer_apb;
  int value = 10;
  pointer_ram = (int *) DATA_RAM_BASE;
  pointer_apb = (int *) (GPIO_ADDR + 0x08);
  // pointer_apb++;
  pointer_ram++;

  for (int i = 0; i < 10; i++){
	  *pointer_ram = value;
	  pointer_ram++;
	  value++;

  }

  *pointer_apb = 0x1;

  return 0;
}
