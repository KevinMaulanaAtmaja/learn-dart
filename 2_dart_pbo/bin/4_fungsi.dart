// non-void
double luas_segiempat(double panjang, double lebar) {
  return panjang * lebar;
}

// void/tdk mengembalikan nilai
void sapa() {
  print("Halo!");
}

// optional parameter
// positional param & default param values
String say(String from, [String? message, String? app = "Whatsapp"]) {
  return "From: $from say $message, app: $app";
}

// named param & default param values
String say2(String from, {String? message, String? app = "Whatsapp"}) {
  return "From: $from say $message, app: $app";
}

// lambda expression/arrow func
int luas_segiempat2(c, d) => c * d;

void mainFungsi() {
  // fungsi tanpa return/void
  sapa();

  // fungsi dg return
  // double hasil = luas_segiempat(10, 5);
  // print(hasil);
  print(luas_segiempat(6, 5));

  // fungsi dg optional parameter
  print(say("Kevin", "Ohayou"));
  print(say2("Amelia", message: "Konnichiwa", app: "Twitter"));

  // lambda expression/arrow func
  print(luas_segiempat2(3, 5));

  // function adalah first class object
  // sbgai variable/param/kembalian
  Function l = luas_segiempat2;
  print(l(1, 4));

  // anonymous function
  Function l2 = (a, b) => a - b;
  print(l2(3, 5));

  double doMathOps(int numb1, int numb2, Function(int, int) operator) {
    return operator(numb1, numb2);
  }

  print(doMathOps(15, 5, (a, b) => a / b));
}
