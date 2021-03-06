#include <calculator.h>
#include <stdio.h>
#include "libadd_cpp/add.h"
#include "libmul_cpp/mul.h"

Calculator::Calculator(std::string calc_operator): 
  calcOperator(calc_operator)
{}

Calculator::~Calculator()
{}

void Calculator::doCalculation(int a,int b){
  if (calcOperator.compare("add") == 0)
  {
    int sum = 0;
    sum = add(a,b);
    printf("calculation of %d %s %d is %d \n", a, calcOperator.c_str(), b, sum);
  }
  else if (calcOperator.compare("mul") == 0)
  {
    int sum = 0;
    sum = mul(a,b);
    printf("calculation of %d %s %d is %d \n", a, calcOperator.c_str(), b, sum);
  }
}