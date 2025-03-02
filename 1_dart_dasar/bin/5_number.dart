void mainNumber() {
  print("======NUMBER======");
  String string1 = "10";
  String string2 = "abc";
  double num1 = 10.101;
  double num2 = -100.105;

  int numbInt = int.parse(string1); // konversi ke int
  // double numbDouble = double.parse(string2); // konversi ke double
  int? numbInt2 = int.tryParse(string2); // konversi ke int
  double? numbDouble2 = double.tryParse(string1); // konversi ke double
  // bedanya parse & tryParse?
  // parse => mengembalikan exception/error
  // tryParse => mengembalikan null

  String str = numbInt.toString(); //ubah smua tipe data ke string
  // String str2 = true.toString();
  String str2 = [90, 90].toString();
  String str3 = num1.toStringAsFixed(2); // ubah ke

  print(numbInt);
  // print(numbDouble);
  print(numbInt2);
  print(numbDouble2);
  print("============");
  print(str);
  print(str2);
  print(str3);
  print("============");
  print(num1 < 0); //pake operator
  print(num2.isNegative); //mengecek apkh negatif atau tdk
  print("=============");
  print(num1.ceil()); //pembulatan ke atas
  print(num1.floor()); //pembulatan ke bwh
  print(num2.round());
  // lbih besar/sm dg 5 => keatas
  // lbih kecil dri 5 => kebwah
  print("=============");
  print(num2.roundToDouble()); // jika ingin masih ke bntuk double
  print(num2.toInt()); // jika ingin masih ke bntuk int
}
