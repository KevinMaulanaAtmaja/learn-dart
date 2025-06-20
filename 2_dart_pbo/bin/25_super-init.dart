void mainSuperInit() {
  print("======NAMED-PARAM & SUPER-INIT & ENHANCED-ENUM======");
  User u1 = User(1, "Kevin", fullname: "Kevin Maulana", age: 20);
  // stlah update dart 2.17
  // boleh urutan dari named param tereserah, nmun yg wajib harus urut(id, username)
  User u2 = User(fullname: "Kevin Maulana", 1, age: 19, "Kevin");

  print("${u1.id} - ${u1.username}, ${u1.fullname}, ${u1.age}.");
  print("${u2.id} - ${u2.username}, ${u2.fullname}, ${u2.age}.");
  print("============");

  UserAuthException e1 = UserAuthException.invalidUsername;
  UserAuthException e2 = UserAuthException.invalidUsername;
  print(e1.toString());
  print(e1.description);
  print(e1.convertToString());
  print("============");
  print(e2.code);
  print(e2.message);
  print(e2.exceptionCodeInDouble);
  print(e2.toString2());
}

// named param
class User {
  int? id;
  String? username;
  String? fullname;
  int? age;

  User(this.id, this.username, {this.fullname = "no name", required this.age});
}

// named super initializer
class Administrator extends User {
  AdministratorType? administratorType;

  // sblum update dart 2.17
  // Administrator(int id, String username,
  //     {String fullname = "no name",
  //     required int age,
  //     required this.administratorType})
  //     : super(id, username, fullname: fullname, age: age);

  // stlah update dart 2.17
  Administrator(super.id, super.username,
      {super.fullname, required super.age, required this.administratorType});
}

// enhanced enum
// enum biasa
enum AdministratorType {
  generalAdministrator,
  securityAdministrator,
  superAdministrator,
}

// enhanced enum
// stlah dart 2.17
enum UserAuthException {
  // nama/konstanta, argumen di enum
  invalidPassword(100, "Wrong Password, Please Try Again"),
  invalidUsername(200, "Username is not exist");

  // field/property di enum
  final int code;
  final String message;

  // constructor di enum
  const UserAuthException(this.code, this.message);

  // method di enum
  double get exceptionCodeInDouble => code.toDouble();

  // override di enum
  @override
  String toString2() => "$name is another of User Auth Exceptions";
}

// sblum dart 2.17
extension UserAuthExceptionExtension on UserAuthException {
  String get description {
    if (name == "invalidPassword") {
      return "Wrong Password, Please Try Again";
    } else {
      return "Username is not exist";
    }
  }

  @override
  String convertToString() => "$name is one of User Auth Exceptions";
}
