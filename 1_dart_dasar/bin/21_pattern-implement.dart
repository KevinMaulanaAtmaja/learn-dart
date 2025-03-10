import 'dart:io';
import 'dart:math';

void mainPatternImp() {
  print("======PATTERN-IMPLEMENT======");
  print("======VARIABLE-DECLARATION & ASSIGNMENT======");
  // pattern implement => implementasi trhadap pola trtentu
  String name = "Kevin";
  int age = 19;
  List<int> numbers = [1, 2];

  (name, age, numbers) = ("Amel", 6, [3, 4]);
  print("My name is $name and I'm $age years old.");

  print("=============");
  int a = 10;
  int b = 20;

  print("A:$a and B:$b");
  // int temp  = a;
  // a = b;
  // b = temp;
  // atau cara lain
  // a = a + b;
  // b = a - b;
  // a = a - b;
  // pake pattern
  (a, b) = (b, a);
  print("A:$a and B:$b");

  print("============");
  // var data = getDataUser();
  (name, age) = getDataUser();
  // print("Name ${data.$1}, Age ${data.$2}");
  print("Name $name, Age $age");

  print("======SWITCH & IF-IMPLEMENTATION=======");
  // harus sama persis jumlah elemennya
  var value = getSomething();

  print(value);
  switch (value) {
    case (String name, int age):
      print("Name $name, Age $age");
      break;
    case [int first, int second]:
      print("First $first, Second $second");
      break;
    case _:
      print("Unknown");
      break;
  }

  if (value case (String name, int age)) {
    print("Name $name, Age $age");
  } else if (value case [int first, int second]) {
    print("First $first, Second $second");
  } else {
    print("Unknown");
  }

  print("=====DESTRUCTURING-MAP======");
  Map<String, dynamic> carData = {
    "brand": "Ford",
    "model": "Mustang",
    "year": 1964,
  };
  // String brand = carData["brand"];
  // String model = carData["model"];
  // int year = carData["year"];
  // versi destructuring
  var {"brand": brand, "model": model, "year": year} = carData;
  // var {"brand": brand, "model": model, "year": year, "color": color} = carData; //error jika asal destructuring

  print("Brand $brand, Model $model, Year $year");

  List<Map<String, dynamic>> carDatas = [
    {
      "brand": "Ford",
      "model": "Mustang",
      "year": 1964,
    },
    {
      "brand": "Honda",
      "model": "Civic",
      "year": 2000,
    },
    {
      "brand": "Toyota",
      "model": "Corolla",
      "year": 1995,
    },
  ];

  for (var {"brand": brand, "model": model} in carDatas) {
    // for (var data in carDatas) {
    // String brand = data["brand"];
    // String model = data["model"];
    print("Brand $brand, Model $model");
  }

  print("=============");
  var result = callApi();

  if (result.containsKey("name") && result.containsKey("email")) {
    String name = result["name"];
    String email = result["email"];
    print("Name: $name, Email: $email");
  } else {
    print("Data not found");
  }

  // versi destructuring
  if (result
      case {"name": final name, "email": final email, "age": final age}) {
    print("Name: $name, Email: $email, Age: $age");
  } else {
    print("Data not found");
  }

  print("======LOGICAL & RELATIONAL-PATTERN=======");
  int? number1 = int.tryParse(stdin.readLineSync() ?? "0");

  // urutan pengerjaan
  // logical operator(&&) dulu baru relational operator(>, <=)
  // pake tanda kurung biar dieksekusi dulu
  // (&&) dulu baru (||) dan dari kiri ke kanan pengerjaannya
  switch (number1) {
    case null || < 0:
      print("Null or negative number");
    case >= 0 && <= 100:
      print("Number between 0 and 100");
    default:
      print("Number greater than 100");
  }

  print("======LIST-PATTERN & REST-ELEMENT========");
  var list = getList();
  var list2 = getList2();
  var list3 = getList3();
  var list4 = getList4();

  switch (list) {
    case [int a, int b]:
      print("List with to integers: $a, $b");
    case [String a, int b]:
      print("List with a string and an integer: $a, $b");
    case [var a, var b]:
      print("List with two variables: $a, $b");
    default:
      print("Unknown list");
  }

  // list destructuring & rest element
  var [first, second, third, ...others, last] = list2;
  print("First: $first, Second: $second, Third: $third, Last: $last");
  print("Others: $others");

  print("============");
  if (list3 case [var first, var second, var third, ...var others, var last]) {
    print("First: $first, Second: $second, Third: $third, Last: $last");
    print("Others: $others");
  } else {
    print("List with less than 4 elements");
  }

  print("=====WILDCARD-PATTERN=======");
  switch (list4) {
    case [int a, int b]:
      print("List with to integers: $a, $b");
    case [String a, int b]:
      print("List with a string and an integer: $a, $b");
    // sbgai pengecek tipe data aja(ga dipake destructuringnya)
    case [String _, String _]:
      print("List with two strings");
    case [var a, var b]:
      print("List with two variables: $a, $b");
    // default:
    //   print("Unknown list");
    // wildcard sbgai pengganti default
    case _:
      print("Something else");
  }
  print("=============");
  // langung dibuang jik pake wildcard
  // if (list2 case [var first, var second, var third, ...]) {
  if (list2 case [var _, var _, var third, ...]) {
    print("Third element: $third");
  }
}

(String, int) getDataUser() => ("Kevin", 19);

dynamic getSomething() => switch (Random().nextInt(3)) {
      0 => ("Kevin", 19),
      1 => [1, 2],
      _ => "anything"
    };

Map<String, dynamic> callApi() =>
    {"name": "Kevin", "age": 19, "email": "kevin@gmail.com"};

List getList() =>
// [1, 2]
// ["1", 2]
    ["1", "2"]
    // [1, 2, 3]
    ;

List getList2() => [1, 2, 3, 4, 5, 6, 7, 8, 9];
List getList3() => [1, 2, 3];
List getList4() => ["Haloo", "Ju FUFu"];
