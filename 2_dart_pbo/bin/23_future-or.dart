import 'dart:async';

// futureOr => nilai yg return nya bisa berupa T (generic type) atau Future<T>
// FutureOr<String> | FutureOr<int>

void mainFutureOr() {
  print("======FUTURE-OR======");
  print("See on the file for detail");
}

class User {
  // user related data
  int age = 0;
}

class UserManager {
  final IDataStorage dataStorage;

  UserManager(this.dataStorage);

  void saveUserData(User user) {
    dataStorage.saveData(user);
  }

  FutureOr<int> getUserAge(User user) async {
    return await dataStorage.getUserAge(user);
  }
}

abstract class IDataStorage {
  void saveData(User user);
  FutureOr<int> getUserAge(User user);
}

class FirebaseStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // connect to firebase
    // save data
  }

  @override
  FutureOr<int> getUserAge(User user) async {
    // ambil data di firebase
    await Future.delayed(Duration(seconds: 3));
    return 20;
  }
}

class LocalStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // connect to local storage
    // save data
  }

  @override
  FutureOr<int> getUserAge(User user) {
    // ambil tgl lahir dari user
    // bandingkan tgl lahir dg tgl skrng
    // lalu huitung umurnya
    return 10;
  }
}
