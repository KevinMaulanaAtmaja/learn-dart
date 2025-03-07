void mainFungsi() {
  // fungsi => utk melakukan suatu tugas trntu(spesifik)
  // fungsi bisa bertipe void dan non-void(string,int,double,bool)

  // void => tdk mengembalikan nilai
  // non-void => mengembalikan nilai
  // int result1;
  int n1 = 1;
  int n2 = 2;

  // result1 = add(1, 2);
  // result1 = add(n1, n2);
  // printToTheScreen(1, 2, result1);
  printToTheScreen(1, 2, add(n1, n2));
}

int add(int a, int b) {
  int result2 = a + b;
  return result2;
}

void printToTheScreen(int number1, int number2, int result3) {
  // bisa dipanggil didlm fungsi lain juga
  // print("$number1 + $number2 = ${add(1, 2)}");
  print("$number1 + $number2 = $result3");
}
