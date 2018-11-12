#include <stdio.h>

#define DATA_RAM_BASE 0x100000;

int main()
{

  int *pointer;
  int value = 10;
  pointer = (int *) DATA_RAM_BASE;

  for (int i = 0; i < 10; i++){
	  *pointer = value;
	  pointer++;
	  value++;

  }



  return 0;
}
