void mainDestruc() {
  // normalnya bgini
  // final food = getFood();
  // print("Food: ${food.name}, Price: ${food.price}");

  // versi destructuring
  var Food(name: foodName, :price) = getFood();
  // bisa hilangkan kurung jika hanya 1 teks
  print("Food: $foodName, Price: $price");

  var menu = getMenu();

  switch (menu) {
    // obj pattern matching
    // cth: case User(name: var n, age: > 18)
    case Food(:final name, :final price):
      print("Food: $name, Price: $price");
      break;
    case Beverage(:final name, :final price, :final isHot):
      print("=> Beverage: $name, ${isHot ? "Hot" : "Cold"} Price: $price");
      break;
    default:
      print("Unknown menu");
  }
}

// method get
Food getFood() => const Food(name: "Fried Chicken", price: 100);

Menu getMenu() => Beverage(name: "Americano", price: 50, isHot: true);
// Menu getMenu() => Food(name: "Nasi Goreng", price: 25);

abstract class Menu {
  final String name;
  final int price;

  const Menu({required this.name, required this.price});
}

// file food
class Food extends Menu {
  const Food({required super.name, required super.price});
}

class Beverage extends Menu {
  final bool isHot;

  const Beverage(
      {required super.name, required super.price, required this.isHot});
}
