void mainString() {
  print("======STRING======");
  // string => kumpulan karakter
  // bisa pake kutip satu/dua ("" '')
  // String name = "Kevin";
  // String name = 'Amel';
  // String hari = "Hari Jum'at";

  // \n => newline
  // \t => tab
  // \" => double quote (escape char)
  // \\ (double backslash) => backslash (\)
  String s = "This\n is\t a \"string\"\\";
  String s2 = """
  Hello
  my name is
  Kevin Maulana
  """;
  print(s);
  print(s2);

  print("=============");
  int number = 12;
  String numb1 = number.toString();
  print(numb1); //dimiliki smua obj di dart kyk int,double dll

  // String s3 = "My number is" + " " + number.toString();
  // String s3 = "My number is $number"; //jika expression simple
  String s3 = "My number is ${number + 10}"; //jika expression complex
  String s4 = "Hello${String.fromCharCode(111)}";
  String s5 = "Hello${String.fromCharCode(128519)}";

  print(s3);
  print(s4.runes); //mngambil kode tiap huruf jdi bilangan bulat
  print(s5); // iemoji.com -> emoji -> click emoji name -> search UTF-32 Dec

  print("=============");
  print(s4.toUpperCase()); //rubah jdi huruf besar smua
  print(s4.toLowerCase()); //rubah jdi huruf kecil smua
  print(s4.substring(0, 4)); //ambil karakter ke 0 smpai 4
  // start, end(exclusive) => artinya 4 tidak diambil (cuma 3)
  List<String> s6 = s3.split(" "); //pake spasi/char tertntu buat pisah string
  print(s6); // jika ada spasi lagi maka akan jdi item terpisah jga
  print("=============");

  String s7 = " ";
  print(s7.isEmpty); //true jka string kosong
  print(s7.isNotEmpty); //true jka string tdk kosong
  print(s3.length);
  print("=============");
  print(s4.contains("Hello"));
  print(s4.contains("h"));
  // utk cek apkh ada karakter trntu(case-sensitive)
  print(s4.startsWith("H")); //cek apkh diawali dg string/char tertntu(case-sensitive)
  print(s4.endsWith("o")); //cek apkh diakhiri dg string/char tertntu(case-sensitive

  print("=============");
  print(numb1.padLeft(5, "0")); // char pengisi di sisi kiri
  print(numb1.padRight(5, "0")); // char pengisi di sisi kanan

  // utk hilangkan whitespace(spasi,enter) di sisi kanan/kiri string
  String s8 = "   Hello    ";
  // String res = s8.trimLeft();
  // String res = s8.trimRight();
  String res = s8.trim();
  print("$res World!");
  print("=============");

  print(s3.replaceAll("i", "1"));
  print(s3.replaceAll("number", "point"));

  double number2 = 4.123; // number >= 5 => keatas
  double number3 = 4.125; // number < 5 => kbwh

  print(number2.toString()); // konversi ke string
  // rubah panjang desimal 4.123 => 4.12
  print(number2.toStringAsFixed(2));
  print(number3.toStringAsFixed(2));

  // masih lebih bnyk method2 lain => liat di dart doc
}
