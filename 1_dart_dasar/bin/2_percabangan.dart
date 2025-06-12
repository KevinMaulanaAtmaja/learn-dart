import 'dart:io';

void mainPercabangan() {
  int number = int.parse(stdin.readLineSync()!);

  if (number > 0) {
    print("positif");
  } else if (number == 0) {
    print("nol");
  } else {
    print("negatif");
  }

  print(number > 0 ? "positif" : "negatif atau nol");

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
