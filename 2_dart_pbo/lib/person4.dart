// tdk khawatir lagi ada yg override method/property di final class di luar file
final class Person4 {
  final String name;

  Person4(this.name);

  void sayHello() {
    print("Hello");
  }
}

// base, final, sealed
final class Student4 extends Person4 {
  Student4(super.name);
}
