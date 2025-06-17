// var reference/pointer/identifier => sbgai penunjuk ke alamat memori
// cth: Tree firstTree = Tree(numberOfFruits: 5);
//      Tree secondTree = Tree(numberOfFruits: 5);
//      Tree thirdTree = firstTree();
// firstTree == secondTree => false; karena alamat memori beda
// firstTree == thirdTree => true; karena alamat memori sama

// perbedaan final & const
// final => dijalankan saat runtime(saat dart run)
// const => dijalankan saat compile(saat diubah ke bhsa mesin)
// final => bisa di set 1x
// const => hrus konstan/tdk bisa dirubah sjak awal

// top-level variable
const phi = 3.14;

void mainFinalConst() {
  print("======FINAL & CONST======");
  var a = RegularClass(number: 10);
  var b = RegularClass(number: 10);
  print(identical(a, b));

  print("=============");
  var c = const ConstClass(age: 19);
  var d = const ConstClass(age: 19);
  print(identical(c, d));
  print("======END OF FINAL & CONST=======");
}

class RegularClass {
  // static-level variable
  final int? number;
  static const staticConst = 12;

  RegularClass({this.number}) {
    // local-level variable
    // const anotherConst = 22 / 7;

    // bisa akses top-level var dsini
    // print(phi);
    // print(staticConst);
    // print(anotherConst);
  }
}

// kelebihan pake const
// hemat memo karna tdk membuat obj baru klo sama
class ConstClass {
  final int? age;

  const ConstClass({this.age});
}
