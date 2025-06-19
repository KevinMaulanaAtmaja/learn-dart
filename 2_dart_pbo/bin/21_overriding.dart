void mainOverriding() {
  print("======OPERATOR OVERLOADING======");
  int a = 10;
  int b = 12;
  String c = "Hello ";
  String d = "World!";

  Hero e = Hero(20);
  Hero f = Hero(10);

// override operator sperti +,-,==,> spya obj bisa seperti string/int saat digabungkan
  print(a + b);
  print(c + d);
  print("=============");
  print((e + f).power);
  print(e == f);
  print(e > f);
}

class Hero {
  final int power;

  Hero(this.power);

  Hero operator +(var other) {
    if (other is Hero) {
      return Hero(power + other.power);
    } else if (other is int) {
      return Hero(power + other);
    } else {
      return this;
    }
  }

  @override
  bool operator ==(var other) {
    if (other is Hero) {
      if (power == other.power) {
        return true;
      }
    }
    return false;
  }

  bool operator >(var other) {
    if (other is Hero) {
      if (power > other.power) {
        return true;
      }
    }
    return false;
  }
}
