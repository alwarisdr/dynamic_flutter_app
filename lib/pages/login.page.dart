import 'package:flutter/material.dart';
import 'package:dynamic_flutter_app/main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _status = 'no-action';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text('Log in for App (${this._status})'),
            onPressed: () {
              setState(() => this._status = 'loading');

              appAuth.login().then((result) {
                if (result) {
                  Navigator.of(context).pushReplacementNamed('/home');
                } else {
                  setState(() => this._status = 'reject');
                }
              });
            }
          ),
        ),
      ),
    );
  }
}
