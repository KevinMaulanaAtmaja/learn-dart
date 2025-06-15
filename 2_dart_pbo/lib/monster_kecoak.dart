import 'package:dart_pbo/flying_monster.dart';
import 'package:dart_pbo/monster.dart';

class MonsterKecoak extends Monster implements FlyingMonster {
  @override
  String fly() => "Syuung...";

  @override
  String move() => "Jalan jalan santay";
}
