import 'dart:io';

void main() {
  int totalSeconds, second, minute, hour;

  stdout.write("Enter the total seconds: ");
  totalSeconds = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  hour = totalSeconds ~/ 3600;
  minute = (totalSeconds % 3600) ~/ 60;
  second = totalSeconds % 60;

  print("The time is: $hour hours, $minute minutes, and $second seconds.");
}
