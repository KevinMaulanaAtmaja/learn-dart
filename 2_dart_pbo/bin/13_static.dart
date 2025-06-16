import 'package:dart_pbo/person3.dart';

void mainStatic() {
  // spya hemat memo hanya dipanggil skali, milik klas bukan per obj
  // tdk bisa akses this, akses langsng dri nama class
  // utk konstanta global, config dll
  print("======STATIC======");
  Person3 p = Person3("Manusia", 160);
  print(p.age);

  Person3 p2 = Person3("kevin", 19);
  print(p2.age);
  print("============");
  print(Person3.maxAge);
  Person3.makan();
}
