import 'dart:io';

void main() {
  double xc, yc, r, x, y;

  stdout.write("Enter the x-coordinate of the circle's center: ");
  xc = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  stdout.write("Enter the y-coordinate of the circle's center: ");
  yc = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  stdout.write("Enter the radius of the circle's center: ");
  r = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  stdout.write("Enter the x-coordinate of the point: ");
  x = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  stdout.write("Enter the y-coordinate of the point: ");
  y = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  double distance = (x - xc) * (x - xc) + (y - yc) * (y - yc);

  if (distance < r * r) {
    print("The point ($x, $y) is inside the circle.");
  } else if (distance > r * r) {
    print("The point ($x, $y) is outside the circle.");
  } else {
    print("The point ($x, $y) is on the circle.");
  }
}
