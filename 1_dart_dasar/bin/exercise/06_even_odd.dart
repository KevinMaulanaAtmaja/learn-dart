import 'dart:io';

void main() {
  int number;

  stdout.write("Enter a number: ");
  number = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  if (number % 2 == 0) {
    print("$number is an even number.");
  } else {
    print("$number is an odd number.");
  }

  // ternary operator ver
  print("$number is ${number % 2 == 0 ? "even" : "odd"} number.");
}
