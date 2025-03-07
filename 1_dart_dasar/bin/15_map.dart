void mainMap() {
  print("======MAP======");
  // analogi: mencari arti kata di kamus inggris
  // eat => sbgai key, makan => sbgai value

  Map<String, String> dictionary = {
    "onion": "Bawang Bombay",
    "garlic": "Bawang Putih",
    "tomato": "Tomat",
    "carrot": "Wortel",
  };

  dictionary["onion"] = "Bombay"; //ubah value dari key trtntu
  print(dictionary["potato"] = "kentang"); //nmbhkan data baru(jika blum ada)
  // print(dictionary["onion"]); //akses element(value)
  // print(dictionary.keys); //akses smua key
  // print(dictionary.values); //akses smua value

  // pake for
  // for (var i = 0; i < dictionary.length; i++) {
  //   // print(dictionary.keys.toList()[i]);
  //   // print(dictionary.values.toList()[i]);
  //   // print(dictionary.entries.elementAt(i));
  //   print(dictionary.values.elementAt(i));
  // }

  // pake foreach
  dictionary.forEach((key, value) {
    return print("$key : $value");
  });

  Map<String, String> dictionary2 = {
    "cabbage": "Kol",
    "potato": "Kentang",
    "orange": "Jeruk",
    "cucumber": "Buncis",
    "cocoa": "Cokelat",
  };

  // List<MapEntry<String, String>> listEntries = [
  //   MapEntry("coconut", "Kelapa"),
  //   MapEntry("apple", "Apel"),
  // ];
  dictionary.addAll(dictionary2); //mnmbhkan seluruh data pada map
  // dictionary.addEntries(listEntries); //tdk harus menmbhkan sluruh data(key/value)
  dictionary.addEntries(dictionary2.entries.where((element) => element.key
      .startsWith("c"))); //akan ditmbhkan klo key di dictionary2 awalan huruf c

  String val1 = dictionary.putIfAbsent("onion",
      () => "bawang saja"); //akan lngsung ditampilkan yg lama klo udh ada
  String val2 = dictionary.putIfAbsent(
      "chili", () => "Cabe"); //nmbhkan data baru jika key blum ada

  dictionary.update("chili", (value) => "new $value",
      ifAbsent: () => "Cabe Rawit"); //ubah value dari key trtntu
  dictionary.update("chili2", (value) => "new $value",
      ifAbsent: () =>
          "Cabe Rawit"); //ubah value dari key trtntu/tmbhkan klo blum ada

  dictionary.updateAll((key, value) => key.contains("g")
      ? "Contains G"
      : value); //ubah smua berdasrkan syarat trntentu

  dictionary.remove("cabbage"); //mnghapus brdasarkan key
  dictionary.removeWhere(
      (key, value) => key.startsWith("o")); //mnghapus brdasarkan syarat trtentu

  print("=============");
  print(val1);
  print(val2);
  dictionary.forEach((key, value) {
    return print("$key : $value");
  });
  print("=============");
  print(dictionary.containsKey("carrot")); //cek apkh punya key dg nama trtntu
  print(
      dictionary.containsValue("Tomat")); //cek apkh punya value dg nama trtntu
  // dictionary.clear(); //utk hapus smua yg ada di dlm map
}
