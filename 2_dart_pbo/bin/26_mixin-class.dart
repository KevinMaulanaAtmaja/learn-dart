void mainMixinClass() {
  print("======MIXIN-CLASS & MIXIN-MURNI======");
  HumanRobot hr = HumanRobot();
  hr.sayHello();
  print("=============");
  HumanToy ht = HumanToy();
  ht.saySomething();
}

// sblum dart 3 class biasa bisa dianggap mixin
// class biasa
// abstract class Person {
//   void sayHello() {
//     print("Hello");
//   }
// }

// mixin (murni)
// g bisa di extends, cuma bisa mixin aja
mixin SayMixin {
  void saySomething() {
    print("Konnichiwa");
  }
}

// mixin class
// bisa di extends + dianggap mixin
abstract mixin class Person2 {
  void sayHello() {
    print("Hello");
  }
}

// pda dart 3 => class biasa tdk bisa digunakan sbgai mixin
// class HumanRobot with Person {} // error
// mixin (murni)
class HumanRobot with Person2 {}

// mixin (class)
// bisa klo pake class mixin di extends
class Student extends Person2 {}

// tdk bisa jika extends ke mixin murni
// class HumanToy extends SayMixin {}
class HumanToy with SayMixin {}
