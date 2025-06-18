//^ WRONG

abstract class IHeroAbility {
  void heal();
  void castMagic();
  void stealMoney();
}

abstract class HeroWrong implements IHeroAbility {
  void regularAttack();
}

//&---------------------------------------------

class ThiefWrong extends HeroWrong {
  @override
  void regularAttack() {
    // ...
  }

  @override
  void castMagic() {
    // do nothing
  }

  @override
  void heal() {
    // do nothing
  }

  @override
  void stealMoney() {
    // ...
  }
}

//&---------------------------------------------

class WhiteMageWrong extends HeroWrong {
  @override
  void regularAttack() {
    // ...
  }

  @override
  void castMagic() {
    // ...
  }

  @override
  void heal() {
    // ...
  }

  @override
  void stealMoney() {
    // do nothing
  }
}

//&---------------------------------------------

class BlackMage extends HeroWrong {
  @override
  void regularAttack() {
    // ...
  }

  @override
  void castMagic() {
    // ...
  }

  @override
  void heal() {
    // do nothing
  }

  @override
  void stealMoney() {
    // do nothing
  }
}

//? RIGHT
abstract class HeroRight {
  void regularAttack();
}

//&---------------------------------------------

abstract class IMagicCaster {
  void castMagic();
}

abstract class IHealer {
  void heal();
}

abstract class IStealer {
  void stealMoney();
}

//&---------------------------------------------

class ThiefRight extends HeroRight implements IStealer {
  @override
  void regularAttack() {
    // ...
  }

  @override
  void stealMoney() {
    // ...
  }
}

//&---------------------------------------------

class WhiteMageRight extends HeroRight implements IMagicCaster, IHealer {
  @override
  void regularAttack() {
    // ...
  }

  @override
  void castMagic() {
    // ...
  }

  @override
  void heal() {
    // ...
  }
}

//&---------------------------------------------

class BlackMageRight extends HeroRight implements IMagicCaster {
  @override
  void regularAttack() {
    // ...
  }

  @override
  void castMagic() {
    // ...
  }
}
