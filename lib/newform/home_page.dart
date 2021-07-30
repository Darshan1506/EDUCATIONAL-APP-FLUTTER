import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_udemyapk/newform/auth.dart';
import 'auth.dart';
class Homepage extends StatelessWidget {
  Homepage ({this.auth,this.onSignedOut});
  final BaseAuth auth;
  final VoidCallback onSignedOut;
  void _signOut() async{
    try{
      await auth.signOut();
      onSignedOut();
    } catch(e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome'),
        actions: [
          FlatButton(onPressed: _signOut, child: Text('logout',style: TextStyle(fontSize: 17,color: Colors.white),))
        ],
      ),
      body: Container(
        child: Center(
          child: Text(
            'welcome',style: TextStyle(
            fontSize: 32
          ),
          ),
        ),
      ),
    );
  }
}
