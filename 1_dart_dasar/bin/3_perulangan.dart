void mainPerulangan() {
  // for
  for (var counter = 0; counter < 5; counter += 1) {
    print("Halo!");
  }

  print("=============");

  // while
  int numb1 = 0;
  while (numb1 < 5) {
    print("Angka ke " + numb1.toString());
    numb1 += 1;
  }

  print("=============");

  // do while
  int numb2 = 5;
  do {
    print("dododo ke " + numb2.toString());
    numb2 -= 1;
  } while (numb2 > 0);

  print("=============");

  // unary operator
  int a = 10;
  int b = a++;

  int c = 10;
  int d = ++c;

  print(a.toString() +"-"+ b.toString() +"-"+ c.toString() +"-"+ d.toString());
}
