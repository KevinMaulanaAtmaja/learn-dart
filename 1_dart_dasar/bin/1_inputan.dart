import 'dart:io';

void mainInputan() {
  String input = stdin.readLineSync()!;
  int number = int.tryParse(input)!;
  // double doubleNum = int.parse(input);
  // print(input);
  print(number + 9);
}
