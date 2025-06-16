import 'package:dart_pbo/person2.dart';

void mainParamUnder() {
  // utk menghemat memo jika tdk pake param
  print("======PARAM-UNDERSCORE======");
  Person2 p = Person2("Kevin", doingHobby: kevinsHobby);
  Person2 p2 = Person2("Dina", doingHobby: (String name) {
    print("$name sedang memasak mie rebus");
  });
  Person2 p3 = Person2("Amel", doingHobby: (_) {
    print("Main game di rumah");
  });

  p.takeARest();
  p2.takeARest();
  p3.takeARest();
}

void kevinsHobby(String name) {
  print("$name sedang main game");
}
