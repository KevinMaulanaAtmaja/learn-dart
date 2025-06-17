void mainEnum() {
  print("======ENUM & CASCADE NOTATION======");
  MonsterUcoa m = MonsterUcoa(status: UcoaStatus.normal); // normal
  m.move();

  print("=============");
  // posioned
  MonsterUcoa m2 = MonsterUcoa(status: UcoaStatus.poisoned)
    ..move()
    ..eat(); //cascade notation => utk memanggil method tnpa harus mmanggil obj

  print("=============");
  // confused
  MonsterUcoa m3 = MonsterUcoa(status: UcoaStatus.confused);
  print("Ucoa is here!");

  m3
    ..move()
    ..eat();
}

// enum utk mewakili pilihan2 / konstanta
enum UcoaStatus { normal, poisoned, confused }

class MonsterUcoa {
  final UcoaStatus? status; // 1 = normal, 2 = poisoned, 3 = confused, 4

  MonsterUcoa({this.status});

  void move() {
    switch (status) {
      case UcoaStatus.normal:
        print("Ucoa is moving");
        break;
      case UcoaStatus.poisoned:
        print("Ucoa cannot move, Ucoa is dying, Ucoa is poisoned");
        break;
      case UcoaStatus.confused:
        print("Ucoa is spinning, Ucoa is confusing");
        break;
      default:
        print("Ucoa is confused");
    }
  }

  void eat() {
    print("Ucoa is eating indomie");
  }
}
