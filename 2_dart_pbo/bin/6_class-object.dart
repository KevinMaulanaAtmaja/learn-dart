import 'dart:io';

void main() {
  prosedural();

  PersegiPanjang kotak1, kotak2;
  double luasKotak1;
  kotak1 = new PersegiPanjang();
  kotak1.panjang = 10.0;
  kotak1.lebar = 5.0;
  // print(kotak1.hitungLuas());
  luasKotak1 = kotak1.hitungLuas();
  print(luasKotak1);

  // tdk perlu nulis keyword new (rekomendasi)
  kotak2 = PersegiPanjang();
  kotak2.panjang = double.tryParse(stdin.readLineSync()!);
  kotak2.lebar = double.tryParse(stdin.readLineSync()!);
  print(kotak2.hitungLuas());
}

void prosedural() {
  // prosedural
  // rumus keliling
  double? panjang1, panjang2, lebar1, lebar2;

  panjang1 = double.tryParse(stdin.readLineSync()!);
  panjang2 = double.tryParse(stdin.readLineSync()!);
  lebar1 = double.tryParse(stdin.readLineSync()!);
  lebar2 = double.tryParse(stdin.readLineSync()!);

  print(panjang1! * panjang2! + lebar1! * lebar2!);
}

class PersegiPanjang {
  // rumus luas
  double? panjang, lebar;

  double hitungLuas() {
    return this.panjang! * lebar!; //bisa pake this/tdk
  }
}
