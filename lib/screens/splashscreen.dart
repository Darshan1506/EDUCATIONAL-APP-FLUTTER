import 'dart:async';

import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';
import 'package:flutter_udemyapk/screens/homescreen.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 3),
        () => Navigator.pushReplacement(context, PageTransition(child: Homescreen(), type: PageTransitionType.rightToLeftWithFade))
    );
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                child: Image.asset('assets/images/leedma png.png'),
                // child: Image.network('https://logodownload.org/wp-content/uploads/2019/07/udemy-logo-5.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: CircularProgressIndicator(
                  backgroundColor: Colors.black,
                ),
              )
            ],
          ),

        ),
      ),
    );
  }
}
