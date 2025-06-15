import 'package:dart_pbo/hero.dart';

// pembuatan mixin pda class tertntu
mixin DrinkAbilityMixin on Hero {
  String drink() => "Gluk...Gluk...Gluk...";
}

mixin RespawnAbilityMixin {
  String respawn() {
    return "I am back!";
  }
}
