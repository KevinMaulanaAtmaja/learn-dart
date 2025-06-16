import 'package:dart_pbo/person.dart';
import 'package:dart_pbo/student.dart';

void mainCons() {
  Person p = Person("Kevin", jenkel: "laki-laki");
  Student s = Student("Amel", jenkelStudent: "perempuan");
  // p.name = "Kevin";

  print(p.name);
  print(p.jenkel);
  print("=============");
  print(s.name);
  print(s.jenkel);
  print(s.info());
}
