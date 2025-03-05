import 'dart:io';

void main() {
  double price, discount;

  stdout.write("Enter the price: ");
  price = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  discount = 0;

  if (price >= 20000) {
    discount = price * 0.2;
    discount = discount > 20000 ? 20000 : discount;
  }

  print("The discount price is: ${price - discount}");
}
