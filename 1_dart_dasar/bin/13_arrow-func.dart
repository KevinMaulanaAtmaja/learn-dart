void mainArrowFunc() {
  print("======ARROW-FUNCTION======");
  int num1 = 10;
  var num2 = 20;

  // function as first class object
  // dpt di-assign pada sbuah variable
  // dpt jdi sbgai param
  // dpt jdi sbgai nilai kembalian func

  int Function(int, int) myFunc1 = add;
  // void Function(int) myFunc2 = printNumber;
  int Function(int, int) myFunc3 = getMathOperator();

  // var result = add(num1, num2);
  var result = myFunc1(num1, num2);
  // func sbgai param
  var result2 = doMathOperator(num1, num2, subtract);
  var result3 = doMathOperator(num1, num2, myFunc3);

  // anonymous func
  // (n1, n2) => n1 * n2; //arrow func ver
  var result4 = doMathOperator(num1, num2, (n1, n2) {
    return n1 * n2;
  });

  // myFunc2(num1);
  printNumber(result);
  printNumber(result2);
  printNumber(result3);
  printNumber(result4);
}

// arrow func => mempersingkat penulisan jika hanya 1 baris
int add(int number1, int number2) => number1 + number2;

int subtract(int number1, int number2) {
  return number1 - number2;
}

void printNumber(int number) => print("The number is $number.");

int doMathOperator(int number1, int number2, int Function(int, int) operator) {
  return operator(number1, number2);
}

// func sbgai kembalian dari func(add func)
int Function(int, int) getMathOperator() {
  return add;
}
