void mainForeach() {
  List<Person> listPerson = [
    Person("User", 33),
    Person("Admin", 23),
    Person("Merchant", 18),
    Person("Admin", 34),
    Person("Merchant", 25),
    Person("User", 21),
    Person("Admin", 19),
    Person("Merchant", 18),
    Person("User", 39),
  ];

  // sort custom
  // listPerson.sort((p1, p2) => p1.age! - p2.age!);
  // listPerson.sort((p1, p2) => p1.age!.compareTo(p2.age!));
  listPerson.sort((p1, p2) {
    if (p1.roleWeight - p2.roleWeight != 0) {
      // return p1.role!.compareTo(p2.role!);
      return p1.roleWeight - p2.roleWeight;
    } else {
      return p1.age!.compareTo(p2.age!);
    }
  });
  // listPerson.sort((Person a, Person b) => a.roleWeight.compareTo(b.roleWeight));

  // foreach => utk mencetak per elemen
  listPerson.forEach((element) {
    print(element.role.toString() + " - " + element.age.toString());
  });
}

class Person {
  final String? role;
  final int? age;

  Person(this.role, this.age);

  int get roleWeight {
    switch (role) {
      case "Merchant":
        return 1;
      // break;
      case "Admin":
        return 2;
      // break;
      default:
        return 3;
    }
  }
}
