import 'package:dart_pbo/character.dart';
import 'package:dart_pbo/mixin_aktivitas.dart';

abstract class Monster extends Character with RespawnAbilityMixin {
  String eatHuman() => "Grrr... Delicious... Yummy...";
  String move();
}
