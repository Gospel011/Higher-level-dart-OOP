mixin SignIn {
  Future<void> signInTo(String appName) async {
    await Future.delayed(
        Duration(seconds: 2), () => print('Signed in to $appName'));
  }
}
