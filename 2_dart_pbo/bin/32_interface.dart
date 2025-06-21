void mainInterface() {
  print("======INTERFACE MODIFIER======");
  MyClass myClass = MyClass();
  myClass.doSomething();
  print("See on the file for detail");
}

// class modifier utk membedakan abstract class dan interface
// hanya mnjdi sbuah pola, bisa di implement oleh sbuah class, tdk dpt jdi parent class
abstract interface class MyInterface {
  void doSomething();
}

// harus beda file spya tdk bisa di extends
// class MyClass extends MyInterface {
// ini cara benar
class MyClass implements MyInterface {
  @override
  void doSomething() {
    print("Doing something in MyClass");
  }
}

// ttap bisa di extends klo masih 1 file/1 lib
// ini cara salah
class MyOtherClass extends MyInterface {
  @override
  void doSomething() {
    print("Doing something in MyOtherClass");
  }
}
