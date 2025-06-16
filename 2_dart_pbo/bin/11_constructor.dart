import 'package:dart_pbo/person.dart';
import 'package:dart_pbo/student.dart';

void mainCons() {
  // constructor slalu dipanggil paling awal
  Person p = Person("Kevin", jenkel: "laki-laki");
  Student s = Student("Amel", jenkelStudent: "perempuan");
  // p.name = "Kevin";

  print(p.name);
  print(p.jenkel);
  print("======CONSTRUCTOR=======");
  print(s.name);
  print(s.jenkel);
  print(s.info());
}
