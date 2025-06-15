import 'package:dart_pbo/hero.dart';
import 'package:dart_pbo/monster.dart';
import 'package:dart_pbo/monster_kecoak.dart';
import 'package:dart_pbo/monster_ubur_ubur.dart';

void mainIheritance() {
  print("======INHERITANCE======");
  Hero h = Hero();
  // Monster m = Monster();
  MonsterUburUbur u = MonsterUburUbur();
  Monster k = MonsterKecoak();

  List<Monster> monsters = [];
  // monsters.add(m);
  monsters.add(u);
  monsters.add(k);

  // data cast => utk mengubah tipe obj menjdi lebih spesifik 
  print((u as MonsterUburUbur).swim());

  print("============");
  for (var m in monsters) {
    if (m is MonsterUburUbur) { // cek apkah obj bertipe tertntu
      print(m.eatHuman());
    }
  }

  print("============");
  h.healthPoint = 30;
  // m.healthPoint = -30;
  u.healthPoint = 20;
  print("Punya HP: " + h.healthPoint.toString() + " Dia Bisa: " + h.killAMonster().toString());
  // print("Punya HP: " + m.healthPoint.toString() + " Dia Bisa: " + m.eatHuman().toString());
  print("Punya HP: " + u.healthPoint.toString() + " Dia Bisa: " + u.swim().toString());
}
