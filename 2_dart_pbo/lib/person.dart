class Person {
  String? name;
  String? jenkel;

  Person(String name, {String jenkel = "rahasia"}) {
    //opt(named) param
    print("Sedang membuat objek person");
    // this.name = "no name";
    // (this)kembalikan ke property/sbgai pembeda dari param
    this.name = name;
    this.jenkel = jenkel;
  }

  String belajar() {
    return "masih belajar!";
  }
}
