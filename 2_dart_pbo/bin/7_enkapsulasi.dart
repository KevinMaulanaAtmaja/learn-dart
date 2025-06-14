import 'dart:io';
import '../lib/persegi_panjang.dart';

void mainEnkap() {
  PersegiPanjang kotak1, kotak2;
  double luasKotak1;

  print("=====ENKAPSULASI=======");
  kotak1 = new PersegiPanjang();
  // setter property
  kotak1.panjang = 10.0;
  // setter method
  kotak1.setLebar(3.0);
  // getter property
  print(kotak1.panjang);
  // getter method
  print("getter");
  print(kotak1.getLebar());
  luasKotak1 = kotak1.luas;
  print(luasKotak1);

  print("============");
  kotak2 = PersegiPanjang();
  kotak2.panjang = double.tryParse(stdin.readLineSync()!)!;
  kotak2.setLebar(double.tryParse(stdin.readLineSync()!)!);
  print(kotak2.luas);
}
