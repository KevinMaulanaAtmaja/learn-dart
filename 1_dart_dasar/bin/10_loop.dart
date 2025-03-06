import 'dart:io';

void mainLoop() {
  print("======LOOPING======");
// loop statement
  String input = stdin.readLineSync() ?? "";
  int limit = int.tryParse(input) ?? 0;
  int number = 0;

  // for => perulangan jika diketahui brp bnyk
  // syntax
  // for(initialization; condition; inrement/decrement){
  // code to be executed
  // }

  // for (var counter = 0; counter < limit; counter += 1) {
  //   print("looping ke $counter");
  // }

  // while => di cek dulu baru lakukan aksi
  // syntax
  // while (condition) {
  //   code to be executed
  // }
  // while (number >= 0) {
  //   input = stdin.readLineSync() ?? "";
  //   number = int.tryParse(input) ?? 0;
  // }
  // print("Input trakhir adalah $number");

  // do-while => lakukan dulu aksi baru di cek
  // syntax
  // do {
  //   code to be executed
  // } while (condition);

  // do {
  //   input = stdin.readLineSync() ?? "";
  //   number = int.tryParse(input) ?? 0;
  // } while (number >= 0);
  // print("Input trakhir adalah $limit");

  // perbandingan while & do while
  print("Using while");
  while (number < limit) {
    print(number);
    number += 1;
  }

  number = 0;
  print("Using do while");
  do {
    print(number);
    number += 1;
  } while (number < limit);
}
