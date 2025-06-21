import 'dart:async';
import 'dart:math';

void mainThenOnError() async {
  print("======THEN & ONERROR======");
  print("Previous statement(s)");

  // try-catch biasanya pasangannya await
  // try {
  //   await futureValue(isSuccess: false);
  //   // masih error karna ga nunggu kyk await
  //   // futureValue(isSuccess: false).then((value) {
  //   //   print(value);
  //   // });
  // } catch (e) {
  //   print(e);
  // }

  // then & onError
  futureValue(isSuccess: false).then((value) {
    print(value);
  }).onError(
    (error, stackTrace) {
      print(error);
      // print(stackTrace);
    },
  );

  print("Next statement(s)");
}

Future<void> futureTask({bool isSuccess = true}) async {
  print("- Task started");
  await Future.delayed(Duration(seconds: 3));
  if (!isSuccess) {
    throw Exception("- Task failed");
  }
  print("- Task completed");
}

Future<int> futureValue({bool isSuccess = true}) async {
  print("- Task started");
  await Future.delayed(Duration(seconds: 3));
  if (!isSuccess) {
    throw Exception("- Task failed");
  }
  print("- Task completed");
  return Random().nextInt(100);
}
