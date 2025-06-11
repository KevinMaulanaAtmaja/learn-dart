import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  int number = int.tryParse(input)!;
  // double doubleNum = int.parse(input);
  print("Hello world");
  // print(input);
  print(number + 9);
}
