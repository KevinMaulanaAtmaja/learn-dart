import 'package:dart_pbo/knight.dart';
import 'package:dart_pbo/monster.dart';
import 'package:dart_pbo/monster_ubur_ubur.dart';

void mainMixin() {
  print("======MIXIN======");
  Knight k = Knight();
  print(k.killAMonster());
  print(k.drink());
  print(k.respawn());

  print("============");
  Monster u = MonsterUburUbur();
  print(u.eatHuman());
  print(u.respawn());
}
