void mainMapping() {
  // mapping(pemetaan) => sbuah proses membuat himpunan baru
  // dri sbuah himpunan yg pake fungsi tertentu(f(x) = x+1)
  // bisa diaplikasikan di kumpulan data kyk list & map
  // iterable => kumpulan data yg dpt diakses scara berurutan

  List<String> names = ["Kevin", "Amel", "Dina Lita", "Rika Ayuk"];
  Map<int, String> days = {
    1: "Monday",
    2: "Tuesday",
    3: "Wednesday",
    4: "Thursday",
    5: "Friday",
    6: "Saturday",
    7: "Sunday",
  };

  List<String> initials =
      names.map((name) => name.substring(0, 2).toUpperCase()).toList();
  List<int> nameLengths = names.map((name) => name.length).toList();
  Map<int, String> shortenedDays =
      days.map((key, value) => MapEntry(key, value.substring(0, 3)));

  for (var initial in initials) {
    print(initial);
  }
  print("==============");
  for (var nameLength in nameLengths) {
    print(nameLength);
  }
  print("==============");
  for (var entry in shortenedDays.entries) {
    print("Key: ${entry.key}, Value: ${entry.value}");
  }
  print("==============");
  print(shortenedDays);
}
