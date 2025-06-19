void mainSingleton() {
  print("======SINGLETON======");
  Services services1 = Services();
  Services services2 = Services();

  ServicesSingleton services3 = ServicesSingleton();
  ServicesSingleton services4 = ServicesSingleton();

  // pake singleton (services3, services4) jdi hanya buat 1 kali aja(instance) di memo
  // bisa dipake berulang tanpa nmbah memo
  print(services1 == services2);
  if (services3 == services4) {
    print("sama");
  } else {
    print("beda");
  }
}

class User {}

class Services {
  Future<User> getUserData() async {
    // fetch data from db
    return User();
  }
}

// singleton => class yg hanya bisa dibuat obj nya 1 aja
// hemat memory
class ServicesSingleton {
  static final ServicesSingleton _instance = ServicesSingleton._internal();

  ServicesSingleton._internal();

  // factory constructor adlh constructor khusus tdk membuat instance baru/hemat memo
  factory ServicesSingleton() {
    return _instance;
  }

  Future<User> getUserData() async {
    // fetch data from db
    return User();
  }
}
