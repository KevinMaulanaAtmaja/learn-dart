import 'dart:io';

void mainSwitch() {
  print("======SWITCH-STATEMENT & SWITCH-EXPRESSION======");
  // switch => versi upgrade dari if statement,jika expression sudah pasti/ttap
  // switch(expression){
  // case pattern1: codes;
  // case pattern2: codes;
  // case pattern3: codes;
  // ...
  // default: default_codes;
  // }
  String input = stdin.readLineSync() ?? "no input";
  int number = int.tryParse(input) ?? 0;

  // if-else if-else version
  // if (number == 1) {
  //   print("one");
  // } else if (number == 2) {
  //   print("two");
  // } else if (number == 3) {
  //   print("three");
  // } else {
  //   print("other number");
  // }

  // switch statement version
  switch (number) {
    case 1:
      print("one");
      break;
    case 2:
      print("two");
      break;
    case 3:
      print("three");
      break;
    default:
      print("other number");
  }

  // switch expression => nilai yg digunakan sesuai dg case mana yg terpenuhi
  String output = switch (number) {
    1 => "one",
    2 => "two",
    3 => "three",
    _ => "other number"
  };
  // _ => wildcard, pengganti default
  print(output);
}
