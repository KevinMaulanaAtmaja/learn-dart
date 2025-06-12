import 'dart:io';

void mainInputan() {
  // meminta input dari user
  String input = stdin.readLineSync()!;
  int number = int.tryParse(input)!; //konversi ke int

  // konversi ke double
  // double doubleNum = int.parse(input);
  // print(input);
  print(number + 9);
}
