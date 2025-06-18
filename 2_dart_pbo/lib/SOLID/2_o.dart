//* BEFORE
class MyRobot {
  void talk() {
    // ...
  }
  void walk() {
    // ...
  }
}

//^ WRONG
class MyRobotWrong {
  void talk() {
    // ...
  }
  void killCrocoach() {
    // ...
  }
  void fly() {
    // ...
  }
}

//? RIGHT
class MyRobotRight {
  void talk() {
    // ...
  }
  void walk() {
    // ...
  }
}

class MySuperRobot extends MyRobotRight {
  void killCrocoach() {
    // ...
  }
  void fly() {
    // ...
  }
}
