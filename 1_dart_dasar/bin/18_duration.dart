void mainDuration() {
  print("======DURATION======");
  Duration duration = Duration(
    days: 1,
    hours: 24,
    minutes: 60,
    seconds: 60,
    milliseconds: 1000,
    microseconds: 1,
  );

  // pembulatan ke bwh, 24 jam = 1 hari, 23 jam = 0 hari
  print("Duration: $duration");
  print("Duration in days: ${duration.inDays}");
  print("Duration in hours: ${duration.inHours}");
  print("Duration in minutes: ${duration.inMinutes}");
  print("Duration in seconds: ${duration.inSeconds}");
  print("Duration in milliseconds: ${duration.inMilliseconds}");
  print("Duration in microseconds: ${duration.inMicroseconds}");

  print("============");
  DateTime now = DateTime.now();

  print("Now: $now");
  print("Now in days: ${now.day}");
  print("Now in hours: ${now.hour}");
  print("Now in minutes: ${now.minute}");
  print("Now in seconds: ${now.second}");
  print("Now in milliseconds: ${now.millisecond}");
  print("Now in microseconds: ${now.microsecond}");
  print("Year: ${now.year}");
  print("Weekday: ${now.weekday}");
  print("Timezone name: ${now.timeZoneName}");
  print("Timezone offset: ${now.timeZoneOffset}");

  print("============");
  // yg wajib year yg lain optional param
  DateTime time = DateTime(2025, 07, 17, 20, 16);
  print("Time $time");
  print("Is After: ${time.isAfter(now)}");
  print("Is Before: ${time.isBefore(now)}");
  print("Is At Same Moment: ${time.isAtSameMomentAs(now)}");

  print("============");
  Duration difference = time.difference(now);
  // Duration difference2 = now.difference(time);
  print("Difference: $difference"); //bedanya brp
  print("Is Negative: ${difference.isNegative}"); //cek apakah negatif
  print("Absolute duration: ${difference.abs()}"); //utk rubah paksa jdi positif

  print("============");
  DateTime tomorrow = now.add(Duration(days: 1));
  DateTime yesterday = now.subtract(Duration(days: 1));

  print("Tomorrow: $tomorrow");
  print("Yesterday: $yesterday");

  //waktu miliseconds brdasarkan waktu sltah 1 januari 1970
  int milliseconds = now.millisecondsSinceEpoch;
  print("Milliseconds since epoch: $milliseconds");
}
