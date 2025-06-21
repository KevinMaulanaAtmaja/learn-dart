import 'dart:async';
import 'dart:math';

void mainUnawaited() async {
  print("Previous statement(s)");
  // test
  // futureTask();
  // await futureTask(isSuccess: false);

  // antisipasi ktika error program spya tdk crash
  // try {
  //   await futureTask();
  // } catch (e) {
  //   print(e);
  // }

  // unawaited => memberi tau scara eksplisit sengaja g ditunggu
  // unawaited(futureTask());
  // ignore => utk tak peduli dg hasil dari future
  // hati2 pemakaiannya spaya saat future error tdk akn pengaruh ke system(bingungin)
  futureTask(isSuccess: false).ignore(); // abaikan jiak error

  // harus pake await karna logikanya
  // harus nunggu dulu sblum di jdikan nilai var
  int number = await futureValue();
  print("number: $number");
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
