class Person2 {
  String? name;
  Function(String name)? doingHobby;

  Person2(this.name, {this.doingHobby});

  void takeARest() {
    if (doingHobby != null) {
      doingHobby!(name!);
    }
  }
}
