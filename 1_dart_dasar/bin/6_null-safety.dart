void mainNullSafety() {
  print("======NULL-SAFETY-OPERATORS======");
  // null safety operator => utk menghindari error karna data kosong/null
  String string1 = '123';
  String string2 = 'abc';

  int? number1 = int.tryParse(string1);
  int? number2 = int.tryParse(string2);

  int res1 = number1! + 2; //null assertion => utk meyakinkan klo var tdk null
  int res2 = (number2 ?? 0) + 2; //null-coalescing => utk mengisi nilai default jika var tdk sesuai
  // jika ada nilai dri number2 dipake, jika tdk pake 0

  number2 ??= 1; //null-aware => utk memberi nilai pda var, jika var tdk punya nilai/null
  // int res3 = number1 + 2;
  int res3 = number2 + 2;

  print(res1);
  print(res2);
  print(res3);
}
