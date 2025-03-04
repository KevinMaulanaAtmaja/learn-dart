import 'dart:io';
import 'dart:math';

void main() {
  double firstX, firstY, secondX, secondY;

  stdout.write("Enter the x-coordinate of the first point: ");
  firstX = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  stdout.write("Enter the y-coordinate of the first point: ");
  firstY = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  stdout.write("Enter the x-coordinate of the second point: ");
  secondX = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  stdout.write("Enter the y-coordinate of the second point: ");
  secondY = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  double h1 = (secondX - firstX);
  double h2 = (secondY - firstY);
  double distance = sqrt(pow(h1, 2).toDouble() + pow(h2, 2).toDouble());

  // versi pak erico
  double distance2 = sqrt(pow(secondX - firstX, 2) + pow(secondY - firstY, 2));

  print("The distance between the two points is: ${distance.toStringAsFixed(2)}");
  print("The distance between the two points is: ${distance2.toStringAsFixed(2)}");
}
