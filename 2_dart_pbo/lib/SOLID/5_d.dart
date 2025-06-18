//^ WRONG
class UserWrong {
  // user related things
}

class UserManagerWrong {
  void saveUserData(UserWrong user) {
    // connect to firebase
    // save data
  }
}

//? RIGHT
class UserRight {
  // user related things
}

class UserManagerRight {
  final IDataStorage dataStorage;

  UserManagerRight(this.dataStorage);

  void saveUserData(UserRight user) {
    dataStorage.saveData(user);
  }
}

abstract class IDataStorage {
  void saveData(UserRight user);
}

class FirebaseStorage implements IDataStorage {
  @override
  void saveData(UserRight user) {
    // connect to firebase
    // save data
  }
}

class LocalStorage implements IDataStorage {
  @override
  void saveData(UserRight user) {
    // connect to local storage
    // save data
  }
}
