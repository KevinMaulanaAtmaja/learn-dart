import 'dart:io';

void main() {
  double width, height;

  stdout.write("Enter the width of the rectangle: ");
  width = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  stdout.write("Enter the height of the rectangle: ");
  height = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  double area = width * height;
  double perimeter = 2 * (width + height);

  print("The area of the rectangle is: ${area.toStringAsFixed(2)}");
  print("The perimeter of the rectangle is: ${perimeter.toStringAsFixed(2)}");
}
