#ifndef CACULATOR_H
#define SCACULATOR_H

#include <string>

class Calculator{
public:	
	Calculator(std::string calc_operator);
  ~Calculator();
	void doCalculation(int a,int b);
private:	
	std::string calcOperator;
};

#endif //CACULATOR_H