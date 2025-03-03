import 'dart:io';

void main() {
  // cara boleh beda tpi klo di programming,
  // efisien/tdk efisien itu yg dibandingkan
  stdout.write("Enter your floating number: ");

  double input = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  print("Your number is: ${input.toStringAsFixed(2)}");
}
