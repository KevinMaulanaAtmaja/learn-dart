void mainList() {
  print("======LIST======");
  // list => skumpulan nilai
  // dimulai dari index 0
  List<int> numbers = [11, 22, 33, 44, 55];
  List<int> numbers2 = [1, 2, 3, 4, 5, 6, 7, 8];

  // akses elemen/index
  // print(numbers[0]);

  // pake for
  // for (var index = 0; index < numbers.length; index++) {
  //   print(numbers[index]);
  // }

  // pake for in
  // for (var element in numbers) {
  //   print(element);
  // }

  // pake foreach
  // numbers.forEach((element) => print(element));
  // numbers.forEach((number) {
  //   number += 1;
  //   print(number);
  // });

  numbers.add(66); //tmbh di blkng list
  numbers.addAll(numbers2); //tmbh bnyk di blkng list
  numbers.insert(2, 77); //sisipkan di list
  numbers.insertAll(4, [10, 20, 30]); //sisipkan bnyk di list
  numbers.remove(44); //hapus element list
  numbers.removeLast(); //hapus element paling blkng list
  numbers2 .removeAt(6); //hapus element di index(); //hapus element brdasarkan index
  numbers2.removeRange(0, 2); //hapus element di index(); //hapus element brdasarkan kriteria jarak index
  // removeRange=> index 0 sampai index 1
  numbers2.removeWhere((n) => n % 2 == 0); //hapus element di index(); //hapus element brdasarkan kriteria tertntu

  for (var element in numbers) {
    print(element);
  }
  print("============");
  for (var element in numbers2) {
    print(element);
  }
  print("============");

  print(numbers.contains(11)); // cek apkh ada element yg dicari
  numbers.sort(); //utk mengurutkan element di list
  print(numbers.every((element) => element % 2 == 0)); //utk mengecek semua elemen di list
  print("============");
  print(numbers.isEmpty); //utk mengecek apakah list kosong
  print(numbers.isNotEmpty); //utk mengecek apakah list tdk kosong
  List<int> numbers3 = numbers.sublist(2, 5);

  // ubah dari list jdi set
  List<int> numbers4 = [1, 1, 2, 2, 3, 4, 5, 6, 6, 7, 8];
  Set<int> set1 = numbers4.toSet();
  // numbers3.clear(); //hapus smua elemen di list
  for (var element in numbers3) {
    print(element);
  }
  print("============");
  for (var element in set1) {
    print(element);
  }
}
