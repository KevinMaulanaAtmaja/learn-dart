import 'dart:io';

void main() {
  int number;

  stdout.write("Enter a number: ");
  number = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  if (number == 0) {
    print("$number is zero.");
  } else if (number > 0) {
    if (number % 2 == 0) {
      print("$number is a positive even number.");
    } else {
      print("$number is a positive odd number.");
    }
  } else {
    print("$number is a negative ${number % 2 == 0 ? "even" : "odd"} number.");
  }
}
