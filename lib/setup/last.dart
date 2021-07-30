import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_udemyapk/ethical%20videos/video1.dart';
import 'package:flutter_udemyapk/videoplayer/videoplayer1.dart';
import 'package:page_transition/page_transition.dart';

class Lastscreen extends StatefulWidget {
  const Lastscreen({Key key, @required this.user}) : super(key: key);
  final User user;
  @override
  _LastscreenState createState() => _LastscreenState();
}

class _LastscreenState extends State<Lastscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Center(
              child: Container(
                child: Image.asset(
                  'assets/images/tick.png',
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: Text(
              'Enrolled',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                // fontFamily: 'yusei'
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, PageTransition(child: Videoo(), type: PageTransitionType.rightToLeftWithFade));

                  },
                  color: Colors.red,
                  child: Text('Continue to courses',style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          )
        ]),
      ),
    );
    ;
  }
}
