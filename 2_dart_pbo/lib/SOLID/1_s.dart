//^ WRONG
class CarWrong {
  void turnOnCar() {
    // ...
  }
  void turnOffCar() {
    // ...
  }
  void turnOnAirConditioner() {
    // ...
  }
  void turnOffConditioner() {
    // ...
  }
  void playMusic() {
    // ...
  }
}

//? RIGHT
class CarRight {
  AirConditioner? airConditioner;
  Radio? radio;
  void turnOnCar() {
    // ...
  }
  void turnOffCar() {
    // ...
  }
}

class AirConditioner {
  void turnOnAirConditioner() {
    // ...
  }
  void turnOffConditioner() {
    // ...
  }
}

class Radio {
  void playMusic() {
    // ...
  }
}
