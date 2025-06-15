import 'package:dart_pbo/character.dart';

abstract class Monster extends Character {
  String eatHuman() => "Grrr... Delicious... Yummy...";
  String move();
}
