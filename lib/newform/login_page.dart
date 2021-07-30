import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_udemyapk/newform/auth.dart';
import 'auth.dart';
class LoginPage extends StatefulWidget {
  LoginPage({this.auth, this.onSignedIn});
  final BaseAuth auth;
  final VoidCallback onSignedIn;
  @override
  _LoginPageState createState() => _LoginPageState();
}
enum FormType{
  login,
  register
}

class _LoginPageState extends State<LoginPage> {
  final formKey = new GlobalKey<FormState>();
  String _email;
  String _password;
  FormType _formType = FormType.login;

  bool validateAndSave() {
    final form = formKey.currentState;
    form.save();
    if (form.validate()) {
     form.save();
     return true;
    }
    return false;
  }
  void validateAndSubmit() async{
    if(validateAndSave()){
      try {
        if (_formType == FormType.login) {
          String userId = await widget.auth.signInWithEmailAndPassword(_email, _password);
          // User user = (await FirebaseAuth.instance
          //     .signInWithEmailAndPassword(
          //     email: _email, password: _password)).user;
          print('signed in ${userId}');
        }else {
          String userId = await widget.auth.createUserWithEmailAndPassword(_email,_password);
          // User user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password)).user;
          print('registered user: ${userId}');
        }
        widget.onSignedIn();
      }
      catch(e){
        print('Error: $e');
      }


    }

    }
  void moveToRegister(){
    formKey.currentState.reset();
    setState(() {
      _formType=FormType.register;
    });
  }
  void moveToLogin(){
    formKey.currentState.reset();
    setState(() {
      _formType=FormType.login;
    });
  }
  




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            children: buildInputs() + buildsubmitButtons(),
          ),
        ),
      ),
    );
  }
  List<Widget> buildInputs(){
    return [
      TextFormField(
        decoration: InputDecoration(labelText: 'email'),
        validator: (value) => value.isEmpty ? 'Email can\'t be empty': null,
        onSaved: (value)=>_email=value,
      ),
      TextFormField(
        decoration: InputDecoration(labelText: 'password'),
        obscureText: true,
        validator: (value) => value.isEmpty ? 'password can\'t be empty': null,
        onSaved: (value)=>_password=value,
      ),
    ];

  }
  List<Widget> buildsubmitButtons(){
    if(_formType == FormType.login) {
      return [
        Padding(
          padding: const EdgeInsets.only(top: 13.0),
          child: RaisedButton(

            child: Text('Login', style: TextStyle(fontSize: 20),),
            onPressed: validateAndSubmit,
          ),
        ),
        FlatButton(
          child: Text('new here?', style: TextStyle(fontSize: 20),),
          onPressed: moveToRegister,
        )
      ];
    }else{
      return[
        Padding(
          padding: const EdgeInsets.only(top: 13.0),
          child: RaisedButton(

            child: Text('Create a acccout', style: TextStyle(fontSize: 20),),
            onPressed: validateAndSubmit,
          ),
        ),
        FlatButton(
          child: Text('already a member? login', style: TextStyle(fontSize: 20),),
          onPressed: moveToLogin,
        )
      ];

    }
  }
}
