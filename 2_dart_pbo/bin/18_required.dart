// import 'package:meta/meta.dart';
// @required (versi lama sblum 2.12)

void mainRequired() {
  print("======REQUIRED-ASSERT-TRY & CATCH======");
  Person p;

  try {
    // spya jika ada error program tdk akan langsung berhenti/crash
    // p = Person(name: "kevin");
    p = Person(name: null);
    print(p.name);
    print(p.age);
  } catch (e) {
    print(e);
  }

  print("Orang baik");
}

class Person {
  final String? name; //required
  final int? age; //optional

  Person({required this.name, this.age = 0}) {
    // required => spaya harus diisi
    // assert => mngeek apa program mengembalikan true, jika tdk kembalikan error saat debugging
    assert(name != null, "Name cannot be null");
  } // default jika tak diisi = null
}
