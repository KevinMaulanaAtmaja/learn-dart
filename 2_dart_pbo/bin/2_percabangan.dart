import 'dart:io';

void mainPercabangan() {
  int number = int.parse(stdin.readLineSync()!);

  // if, else if, else
  if (number > 0) {
    print("positif");
  } else if (number == 0) {
    print("nol");
  } else {
    print("negatif");
  }

  // ternary
  print(number > 0 ? "positif" : "negatif atau nol");

  // switch
  switch (number) {
    case 0:
      print("nol");
      break;
    case 1:
      print("satu");
      break;
    case 2:
      print("dua");
      break;
    default:
      print("angka lain");
  }
}
