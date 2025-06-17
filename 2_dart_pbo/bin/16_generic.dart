void main() {
  var boxInt = SecureBox<int>(0907, "123");
  var boxString = SecureBox<String>("data zzz, takopi's original sin", "456");
  var boxDate = SecureBox<DateTime>(DateTime.now(), "789");
  var boxP = SecureBox<Person>(Person("Amel"), "012");

  print(boxInt.getData("123"));
  print(boxString.getData("456"));
  print(boxDate.getData("789"));
  print(boxP.getData("012")?.name);
}

class Person {
  String name;

  Person(this.name);
}

// sbgai placeholder utk type apapun(int, string, boolean, class/obj)
// bisa utk class, tipe data bgi property, method, atupun param
class SecureBox<T> {
  final T _data;
  final String _pin;
  SecureBox(this._data, this._pin);

  T? getData(String pin) => (pin == _pin) ? _data : null;
}
