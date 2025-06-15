import 'package:dart_pbo/flying_monster.dart';
import 'package:dart_pbo/monster.dart';
import 'package:dart_pbo/monster_kecoak.dart';
import 'package:dart_pbo/monster_ubur_ubur.dart';
import 'package:dart_pbo/ucoa.dart';

void mainAbstractInterface() {
  print("======ABSTRACT & INTERFACE======");
  MonsterUburUbur u = MonsterUburUbur();
  Monster k = MonsterKecoak();
  MonsterUburUbur ucoa = MonterUcoa();

  List<Monster> monsters = [];
  monsters.add(u);
  monsters.add(k);
  monsters.add(ucoa);

  // abstract
  for (var m in monsters) {
    print(m.move());
    print(m.eatHuman());
  }

  // interface
  print("============");
  for (var m in monsters) {
    if (m is FlyingMonster) {
      print((m as FlyingMonster).fly());
    }
  }
}
