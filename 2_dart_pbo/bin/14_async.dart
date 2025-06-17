void mainAsync() async {
  print("======ASYNC======");
  Person4 p = Person4();
  print("job 1");
  print("job 2");
  p.getData(); // g pake async/cuma synchronous
  print("job 3 " + p.name);
  print("job 4");

  print("=============");
  Person4 p2 = Person4();
  print("job 1");
  print("job 2");
  await p2.getDataAsync(); // masih salah karna msih nunggu si getDataAsync
  print("job 3 " + p2.name);
  print("job 4"); // jdinya job 4 harus nunggu dlu g bisa ngelewatin

  print("=============");
  Person4 p3 = Person4();
  print("job 1");
  print("job 2");
  // sama kyk fetch data trs pke then res.json
  p3.getDataAsync().then((_) => {print("job 3 " + p3.name)});
  print("job 4");
}

class Person4 {
  String name = "default name";

  void getData() {
    name = "Kevin"; // misal ambil data dari db (3 detik)
    print("get data [done]");
  }

  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 3));
    name = "Amel"; // misal ambil data dari db (3 detik)
    print("get data [done]");
  }
}
