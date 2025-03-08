void mainRecord() {
  print("======RECORD======");
  // record => tipe data yg bersifat anonymous dan bersifat immutable
  // bisa jdi variable, tipe param, atupun return value
  (String name, int age) personData =
      ("Kevin", 19); //name, age cuma sbgai penanda
  (int personId, String address, {String name, int age}) personData2 =
      (1, "Jakarta", name: "Kevin", age: 19); //name, age cuma sbgai nama param

  // immutable
  // personData.$1 = "Amel";

  print(personData);
  print(personData.$1);
  print(personData.$2);
  print("============");
  print(personData2.$1);
  print(personData2.$2);
  print(personData2.name);
  print(personData2.age);
  print("============");

  // named record => rect.width bisa diakses gtu
  ({int width, int height}) rect = (width: 10, height: 20);

  print(rectangleArea(rect));
  print("============");
  ({int area, int circumference}) rect2 = rectangleAreaCircumference(rect);
  print(rect2.area);
  print(rect2.circumference);
  print("============");

  // value semantik => klo value/isi record sm dg value record yg lain maka true
  (int, int) rect3 = (10, 20);
  (int, int) position = (10, 20);
  print(rect3 == position);

  ({int width, int height}) rect4 = (width: 10, height: 20);
  ({int x, int y}) position2 = (x: 10, y: 20);
  print(rect4 == position2); //false karna pake named param yg beda
}

// rectangle(record) disini sbgai param
int rectangleArea(({int width, int height}) rectangle) {
  return rectangle.width * rectangle.height;
}

// rectangleArea...(record) disini sbgai return value
({int area, int circumference}) rectangleAreaCircumference(
    ({int width, int height}) rectangle) {
  return (
    area: rectangle.width * rectangle.height,
    circumference: 2 * (rectangle.width + rectangle.height)
  );
}
