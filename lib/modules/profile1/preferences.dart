class Preferences {
  static Future<bool> hasToken() async {
    await Future.delayed(Duration(seconds: 1));
    return true; // simulate logged in
  }
}
