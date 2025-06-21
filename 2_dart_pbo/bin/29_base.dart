void mainBase() {
  print("======BASE======");
  // modifier => utk membatasi & mengontrol class
  print("Final modifier");
  print("Tak boleh diturunkan sama sekali");
  print("Utk util/helper/domain");
  print("==============");
  print("Sealed modifier");
  print("Boleh diturunkan hanya di file yg sama");
  print("Utk union/ADT (state, hasil response)");
  print("==============");
  print("Base modifier");
  print("Boleh diturunkan, tpi hanya ke class yg punya modifier juga");
  print("Utk domain model/layer abstraction");
  print("See on the file for detail");
}

// cth misal dipisah per file
// file vehicle
// vehicle cuma jdi parent bgi car maka pake base class
abstract base class Vehicle {
  final String name;

  Vehicle({required this.name});
}

// file car
// class Car implements Vehicle {
// menjmin car tdk bisa di implement(interface) ke class lain
// maka pake base/final/sealed class
base class Car extends Vehicle {
  // karna sudah g implement tpi extends maka harus make constructor

  Car() : super(name: "I am a car");
  // @override // g butuh karna udh punya akses ke name property
  // String get name => 'I am a car';
}

// mixin (murni)
// file fly_mixin
// diubah lngsung jdi mixin jdi g bisa implement(interface) lagi
// mixin FlyMixin {
base mixin FlyMixin {
  void fly() {
    print('I am flying');
  }
}

// file air_plane
// class AirPlane implements Vehicle, FlyMixin {
// base/final/sealed class AirPlane extends Vehicle implements FlyMixin {
final class AirPlane extends Vehicle with FlyMixin {
  AirPlane() : super(name: "I am an airplane");

  // @override // g perli di ovrride lagi
  // void fly() {
  //   print('I am flying with airplane speed');
  // }

  // @override
  // String get name => 'I am an airplane';
}

// mixin class => dpt jdi class parent, mixin, interface
// jika ingin ke tujuan utama mixin class yaitu:
// jdi parent class dan mixin maka pake base modifier
// file flying_object
base mixin class FlyingObject {
  void fly() {
    print('I am flying');
  }
}

// file ufo
// klo udh diubah pake base modifier maka:
// hanya bisa pake with/extends
// class Ufo implements FlyingObject { //error
// class Ufo extends FlyingObject { //bisa
// class Ufo with FlyingObject { //bisa
final class Ufo with FlyingObject {
  // @override
  // void fly() {
  //   print('I am flying with UFO speed');
  // }
}
