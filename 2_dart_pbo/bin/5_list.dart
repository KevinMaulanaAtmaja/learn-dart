void mainList() {
  List<int> myList = [];
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> list2 = [20, 40, 61, 10, 34, 50, 72, 93];
  List<int> listKosong = [];

  // akses per elemen
  // print(list[0]);

  // dg for
  // for (int i = 0; i < list.length; i++) {
  //   print(list[i]);
  // }

  // dg for in
  // for (int bilangan in list) {
  //   print(bilangan);
  // }

  // dg forEach
  // list.forEach((bilangan) => print(bilangan));

  // menmbhkan elemen ke list
  myList.add(5); //tmbh di akhir
  myList.addAll([6, 7, 8]); //tmbh bnyk nilai di akhir
  myList.insert(1, 9); //sisipkan di index & nilainya
  myList.insertAll(2, [10, 11]); //sisipkan bnyk nilai di index & nilainya
  print(myList);

  // menghapus elemen
  print(list);
  list.remove(1); //hpus berdsarkan nilai
  list.removeRange(1, 3); //hpus berdsarkan range tertntu
  list.removeLast(); //hpus nilai trakhir
  list.removeAt(3); //hpus berdsarkan index
  print(list);

  print("=============");
  list2.removeWhere((item) => item % 2 != 0); //hpus berdsarkan kriteria tertntu
  // listBaru.clear(); //hpus smua elemen
  print(list2.contains(72)); //cek apa ada elemen di list
  List<int> listBaru = list2.sublist(1, 3); // ambil sbgian isi list
  list2.sort(); //utk urutkan list(asc)
  print(listBaru.every((item) => item % 2 == 0));

  print("=============");
  print(listKosong.isEmpty);
  print(listKosong.isNotEmpty);
  print(listBaru);
  print(list2);

  print("=============");
  List<int> list3 = [1, 1, 2, 2, 3, 3, 4, 5];
  Set<int> s;
  s = list3.toSet(); //konversi list ke set
  print(s);

  //konversi list ke map
  Map<int, String> tomap = {for (var item in list) item: "angka ke $item"};
  print(tomap);

  var mapping = listBaru
      .map((numb) => "angka ke " + numb.toString())
      .toList(); //konversi list(int) ke string dg fungsi map
  print(mapping);
}
