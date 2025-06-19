void mainDynaVar() {
  print("======DYNAMIC-VAR======");
  // tipe yg bisa menunjuk ke tipe apapun(string,int,obj/class dll)
  dynamic myDynamic;

  myDynamic = "takopi";
  myDynamic = 12;
  print(myDynamic);
  myDynamic = Person();
  // print((myDynamic as Person).name); //spya bisa lngsung akses .name
  if (myDynamic is Person) {
    print(myDynamic.name);
  }
  print("=============");
  // nilai pertama kali jka diisi dg tipe data, mka strusnya ttap harus tipe data itu
  var myVar = 22;
  print(myVar);
  // myVar = "helloo"; //error karna dari int -> string
  // print(myVar);

  // klo tdk di isi nilai awal otomatis jdi dynamic tipenya
  var myVar2;
  myVar2 = 32;
  print(myVar2);
  myVar2 = "zzz"; // bisa karna dynamic
  print(myVar2);

  // bisa lngsung dipake tanpa pake keyword is/as
  var myVar3 = Person();
  print(myVar3.name);
}

class Person {
  String name = "crl";
}
