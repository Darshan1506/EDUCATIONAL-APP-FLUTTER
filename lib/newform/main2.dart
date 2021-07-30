import 'package:flutter/material.dart';
import 'package:flutter_udemyapk/newform/auth.dart';
import 'package:flutter_udemyapk/newform/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'auth.dart';
import 'root_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(Newform());
}

class Newform extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(auth: new Auth()));
  }
}

