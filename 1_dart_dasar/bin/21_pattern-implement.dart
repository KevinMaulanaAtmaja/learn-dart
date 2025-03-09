void main() {
  print("======PATTERN-IMPLEMENT======");
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
}

(String, int) getDataUser() => ("Kevin", 19);
