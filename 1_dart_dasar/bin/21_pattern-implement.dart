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
}

(String, int) getDataUser() => ("Kevin", 19);

dynamic getSomething() => switch (Random().nextInt(3)) {
      0 => ("Kevin", 19),
      1 => [1, 2],
      _ => "anything"
    };
