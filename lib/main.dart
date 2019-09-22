import 'package:flutter/material.dart';
import 'package:dynamic_flutter_app/pages/home.page.dart';
import 'package:dynamic_flutter_app/pages/login.page.dart';
import 'package:dynamic_flutter_app/services/auth.service.dart';

AuthService appAuth = new AuthService();

void main() async {
  Widget _defaultHome = new LoginPage();

  bool _result = await appAuth.login();

  if (_result) {
    _defaultHome = new HomePage();
  }

  runApp(new MaterialApp(
    title: 'App',
    home: _defaultHome,
    routes: <String, WidgetBuilder>{
      '/home': (BuildContext context) => new HomePage(),
      '/login': (BuildContext context) => new LoginPage()
    },
  ));
}
