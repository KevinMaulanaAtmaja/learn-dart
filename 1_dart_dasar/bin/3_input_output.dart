import 'dart:io'; // utk akses stdin

void mainInputan() {
  print("======INPUT & OUTPUT======");
  String? input; //nullable string
  input = stdin.readLineSync(); // membaca inputan dari user

  // menmpilkan output
  print("Hello World!");
  print(input);
}
