import 'dart:io';

void mainIfConditional() {
  print("======IF-CONDITIONAL-OPERATOR======");
  // if => memecah alur program jdi bbrp bagian
  // if(condition){statement}
  String input = stdin.readLineSync() ?? "no input";
  int number = int.tryParse(input) ?? 0;

  // else dan else if tdk wajib ada
  // if (number < 0) {
  //   number *= -1;
  // }

  // if (number == 0) {
  //   print("Zero");
  // } else {
  //   print("Not Zero");
  // }

  if (number > 0) {
    print("Positive");
  } else if (number < 0) {
    print("Negative");
  } else {
    print("Not Zero");
  }

  // conditional operator => expression yg nilai bergantung pada syarat trtentu
  // condition ? expression_if_true : expression_if_false;
  print((number >= 0) ? number : number * -1);
}
