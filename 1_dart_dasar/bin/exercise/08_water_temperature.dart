import 'dart:io';

void main() {
  int temperature;

  stdout.write("Enter a temperature: ");
  temperature = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  if (temperature <= 0) {
    print("The water is frozen.");
  } else if (temperature > 0 && temperature <= 100) {
    print("The water is liquid.");
  } else {
    print("The water is evaporated.");
  }
}
