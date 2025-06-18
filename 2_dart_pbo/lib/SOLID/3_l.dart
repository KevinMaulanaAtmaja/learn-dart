//^ WRONG
class DuckWrong {
  void swim() {
    // ...
  }
  void quack() {
    // ...
  }
  void eat() {
    // ...
  }
}

class RubberDuck extends DuckWrong {
  @override
  void eat() {
    // do nothing
  }
}

//? RIGHT
class DuckRight {
  void swim() {
    // ...
  }
  void quack() {
    // ...
  }
  void eat() {
    // ...
  }
}

class Malard extends DuckRight {
  @override
  void eat() {
    // do Malard way of eating
  }
}
