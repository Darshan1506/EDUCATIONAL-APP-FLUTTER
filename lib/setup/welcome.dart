import 'package:flutter/material.dart';
import 'package:flutter_udemyapk/setup/signIn.dart';
import 'package:flutter_udemyapk/setup/signup.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 500,
                    child: Image.asset('assets/images/leedma png.png'),
                  ),
                  RaisedButton(
                    onPressed: navigateToSignIn,
                    color: Colors.red,
                    child: Text('Already a member?'),
                  ),
                  RaisedButton(
                    onPressed: navigateToSignUp,
                    color: Colors.red,
                    child: Text('New here?'),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  void navigateToSignIn() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginPage(user: null),
            fullscreenDialog: true));
  }

  void navigateToSignUp() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SignUpPage(), fullscreenDialog: true));
  }
}
