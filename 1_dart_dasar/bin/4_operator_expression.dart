// operator => simbol yg memberi printah/intruksi utk melakukan operasi/aksi pda 1/lebih operand
// operand => obj yg dioperasikan oleh operator
void mainOperator() {
  print("======OPERATOR & EXPRESSION======");
  // assigment operator => menugaskan var utk ambil pointer/alamat data
  // cth: =
  // int score = 100;

  // binary operators => perlu 2 buah operand
  // cth: + - * / ~/ %
  double number;
  // number = 5 + 2;
  number = 5 / 2;
  int number2 = 5 ~/ 2;
  print(number);
  print(number2);

  // mathematical operators => perlu 1 buah operand
  // cth: ++ --
  // prefix => ditambah/dikurangi dulu baru dipake
  // postfix => dipake dulu baru ditambah/dikurangi
  print("============");
  int num1 = 7;
  int num2 = 7;

  int res1 = ++num1; //prefix
  int res2 = num2++; //postfix

  print(res1);
  print(res2);

  print(num1);
  print(num2);

  print("============");
  // += -= *= /= ~/ %=
  num1 += 5;
  print(num1);

  // relational operator => perlu 2 buah operand & dibandingkan apakah true/false
  // cth: == != > < >= <=
  bool result3;
  // result3 = 5 < 3;
  result3 = 5 <= 5;
  print(result3);

  // logical operator => mengoperasikan 1/bbrpa nilai boolean jdi nilai boolean baru
  // cth: && || !
  // operator AND dulu, trs operator OR yg dieksekusi
  // urutan(precedence) => ! => ++,-- => * / ~/ %  => + - => < <= > >= => == != => && => ||
  bool result4;
  // result4 = true || false;
  result4 = (9 != 9) || ((2 < 5) && (9 > 10));
  print(result4);

  // expression => sgala sesuatu yg dpt dievaluasi jdi sebuah nilai
  // simple expression => var, constants(literal, symbolic)
  // literal => nyatakan scara langsung
  // symbolic => kontanta simbolik yg diberi nama
  // complex expression => expression sderhana yg dikoneksikan dg operator

  // 5; // konstanta
  int numb3 = 5; //operator sederhana(variable)
  print(numb3 + 10); //operator complex (2 buah expression sdrhana yg digabungkan)
}
