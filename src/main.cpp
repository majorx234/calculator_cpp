#include <iostream>
#include <string>
#include <stdio.h>

#include <calculator.h>

int main(int argc, char **argv)
{
  int a = 0;
  int b=0;
  if(argc == 3)
  {
    a = atoi(argv[1]);
    b = atoi(argv[2]);
  }
  else
  {
    printf("you need exact 2 arguments\n");
  }

  Calculator mycalc("add");

  mycalc.doCalculation(a, b);

  return 0;
}