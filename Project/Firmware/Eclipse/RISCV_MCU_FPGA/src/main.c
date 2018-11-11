#include <stdio.h>

#define MY_REGISTER *(volatile int *) 0x100FEF

int main()
{

  MY_REGISTER = 0xDEFEBA;

  return 0;
}
