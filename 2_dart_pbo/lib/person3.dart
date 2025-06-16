class Person3 {
  String? name;
  int? age;
  static int maxAge = 150; // property jdi milik si class bukan obj
  // static const int maxAge2 = 150; // property ttap saat compile time

  Person3(this.name, int age) {
    this.age = (age > maxAge) ? 150 : age;
  }

  // method jdi milik si class bukan obj
  static void makan() {
    print("Person sedang makan");
  }
}
