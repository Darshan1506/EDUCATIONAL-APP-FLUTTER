import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_udemyapk/setup/Pages/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_udemyapk/setup/last.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({
    Key key,
    @required this.user
  }) : super(key: key);
  final User user;
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController sampledata8 = new TextEditingController();
  TextEditingController sampledata9 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:300.0,left: 25,right: 25),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: sampledata9,
                  style: TextStyle(color: Colors.white),
                  validator: (input) {
                    if(input.isEmpty){
                      return 'please enter the email';
                    }
                  },
                  onSaved: (input) => _email = input,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    labelText: 'Email',labelStyle: TextStyle(color: Colors.red)
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
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      labelText: 'password',labelStyle: TextStyle(color: Colors.red)
                  ),
                  obscureText: true,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      labelText: 'enter course name',labelStyle: TextStyle(color: Colors.red)),
                  keyboardType: TextInputType.name,
                  controller: sampledata8,
                  validator: (value) {
                    if (value.isEmpty || value.length <= 1) {
                      return 'invalid course';
                    }
                    return null;
                  },
                  onSaved: (value) {},
                ),

                Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: RaisedButton(onPressed: signIn,

                  child: Text('sign in'),
                  color: Colors.red,),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
  Future<void> signIn() async{
    //login to firebaase
    final formState= _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try {
        User user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: _email, password: _password)).user;
        Navigator.push(context, MaterialPageRoute(builder: (context) => Lastscreen(user: null,)));
        Map<String,dynamic> data= {"course":sampledata8.text,"email":sampledata9.text};
        FirebaseFirestore.instance.collection("test").add(data);
      } catch(e){
        print(e.message);
      }
    }
  }
}