import 'package:dart_pbo/person.dart';

class Student extends Person {
  // keyword super utk memanggil/mengkses constructor/property/method dari parent
  Student(name, {jenkelStudent = "gtw"}) : super(name, jenkel: jenkelStudent) {
    print("Constructor Student");
  }

  // akses property & method dri parent
  String info() {
    return super.name.toString() + " sekarang " + super.belajar();
  }
}
