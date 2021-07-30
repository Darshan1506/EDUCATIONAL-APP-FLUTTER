import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_udemyapk/setup/Pages/home.dart';
import 'package:flutter_udemyapk/setup/last.dart';
import 'package:flutter_udemyapk/setup/signIn.dart';
class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('sign up'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:13,right:13,top:180.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    validator: (input) {
                      if(input.isEmpty){
                        return 'please enter the email';
                      }
                    },
                    onSaved: (input) => _email = input,
                    decoration: InputDecoration(
                        labelText: 'Email',labelStyle: TextStyle(color: Colors.red),enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    validator: (input) {
                      if(input.length < 6 ){
                        return 'your password needs to be of 6 character';
                      }
                    },
                    onSaved: (input) => _password = input,
                    decoration: InputDecoration(
                        labelText: 'create a password',labelStyle: TextStyle(color: Colors.red),enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:13.0),
                    child: RaisedButton(onPressed: signUp,
                      color: Colors.red,
                      child: Text('sign up'),),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Future<void> signUp() async{
    //login to firebase
    final formState= _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try {
        User user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _email, password: _password)).user;
        user.sendEmailVerification();
        Navigator.of(context).pop();
        Navigator.push(context, MaterialPageRoute(builder: (context) => Home(user: null)));
        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(user: null)));
      } catch(e){
        print(e.message);
      }
    }
  }
}