import 'dart:async';
import 'dart:math';

class AuthService {
  //Login
  Future<bool> login() async {
    return await new Future<bool>.delayed(
        new Duration(seconds: 2), () => new Random().nextBool());
  }

  //Logout
  Future<void> logout() async {
    return await new Future<void>.delayed(
      new Duration(seconds: 1),
    );
  }
}
