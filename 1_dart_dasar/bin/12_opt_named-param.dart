void mainOptParam() {
  print("=====OPTIONAL-NAMED-PARAM======");
  say("Kevin", "Hello", "Amelia", "Twitter");
  say2("Kevin", "Hello", to: "Dina");
  say3(from: "Kevin", message: "Hello", to: "Dina");
}

void say(String from, String message,
    [String? to, String? appName = "Whatsapp"]) {
  print("$from says $message ${to != null ? "to $to" : ""} via $appName.");
}

void say2(String from, String message,
    {String? to, String? appName = "Facebook"}) {
  print("$from says $message ${to != null ? "to $to" : ""} via $appName.");
}

void say3(
    {required String from,
    required String message,
    required String to,
    String? appName = "Instagram"}) {
  print("$from says $message to $to via $appName.");
}
