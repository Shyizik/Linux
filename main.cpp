#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;
    std::cout << "3 + 4 = " << calc.Add(3, 4) << std::endl;
    return 0;
}
