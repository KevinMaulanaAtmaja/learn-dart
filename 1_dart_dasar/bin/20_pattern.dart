void mainPattern() {
  print("======PATTERN======");
  // pattern matching => pencocokan/perbandingan trhdap pola trtentu
  int number = 1;

  switch (number) {
    case 1:
      print("one");
      break;
    case 2:
      print("two");
      break;
    case 3:
      print("three");
      break;
    case _: //wilcard pattern => nilai apapun akan cocok slain case yg ada
      print("other number");
  }

  switch (number) {
    case > 0:
      print("positive");
      break;
    case < 0:
      print("negative");
      break;
    case 0:
      print("zero");
      break;
  }

  // pattern destructuring => memecah nilai yg ada di variable
  var list = [1, 2, 3];
  var [a, b, c] = list;
  print("$a, $b, $c");

  // pattern matching & pattern destructuring
  var r = getRecord();
  switch (r) {
    case (int a, var b, var c):
      print("$a, $b, $c");
      break;
    case _:
      print("other number");
      break;
  }
}

Record getRecord() {
  // return (1, 2, "Kevin");
  return ("1", 2, "Kevin");
}
