import 'dart:io';

void main() {
  double price, discount;

  stdout.write("Enter the price of the item: ");
  price = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  stdout.write("Enter the discount percentage: ");
  discount = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  double discountedPrice = price - (price * discount / 100);

  print("The discounted price is: ${discountedPrice.toStringAsFixed(2)}");
}
