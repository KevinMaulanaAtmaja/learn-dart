void mainStream() async {
  print("======STREAM======");
  // stream(asynchronous) => representasi dta yg dikirim scra bertahap/trs-menrus (event-based)
  // bkan sperti future yg hanya skali
  // cocok utk input user, real-time app, state update, timer
  // listen => utk menangkap data yg dikirim dari stream
  // streamSubscription => obj StreamSubscription yg memberi kontrol penuh terhadap stream
  // pause/resume/cancel => utk mengontrol stream

  var subs = getNumbers().listen((event) => print(event),
      onDone: () => print(
          "Done"), // onData => (callback) utk menangkap dta yg dikirim dari stream
      onError: (error) =>
          print("$error"), //onError => (callback) utk menangkap error
      cancelOnError: // cancelOnError => utk hentikan program tergantung false/true
          false); // klo true maka stlah error lngsung berhenti programnya

  subs.onData((number) => print("Number: $number"));
  await Future.delayed(Duration(seconds: 6));
  subs.pause(); //menunda penerimaan event/data
  await Future.delayed(Duration(seconds: 3));
  subs.resume(); //melanjutkan stlah pause
  await Future.delayed(Duration(seconds: 3));
  subs.cancel(); // menghentikan langganan stream scara permanen
}

// stream =>> memberikan event scara terus menrus
// scara asynchronous
Stream<int> getNumbers() async* {
  int i = 0;

  while (i < 11) {
    await Future.delayed(Duration(seconds: 1));

    if (i > 0 && i % 5 == 0) {
      // mengembalikan pesan error
      yield* Stream.error("The number is divisible by 5");
    } else {
      // utk mengirim satu nilai tunggal ke stream
      // bedanya dg yield* adlh mngirim bnyk nilai ke stream
      yield i;
    }
    i += 1;
  }
}
