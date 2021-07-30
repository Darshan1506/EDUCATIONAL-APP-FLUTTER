import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_udemyapk/screens/homescreen.dart';
import 'package:flutter_udemyapk/screens/homescreen/featured.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_udemyapk/new/exploitation.dart';
import 'package:flutter_udemyapk/new/forensics.dart';
import 'package:flutter_udemyapk/new/reverse.dart';
import 'package:flutter_udemyapk/new/wireless.dart';
import 'package:flutter_udemyapk/new/ethical.dart';
import 'package:flutter_udemyapk/new/webattack.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(


              children: [
               Container(
                 width: 1000,
                 height: 150,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage('assets/slider/cert.png')
                   ),
                 ),
               ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'This online ethical  pass the exam earn the coveted Offensive Security Certified Professional (OSCP)  Certified Profes (OSCP)   Certified Profes (OSCP) certification..',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 20,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: CarouselSlider(
                    items: [
                      //1st Image of Slider
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: Ethical(),
                                  type: PageTransitionType.rightToLeftWithFade));
                        },
                        color: Colors.black,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/slider/1111.png',
                            width: 1700.0,
                            height: 150.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                      //2nd Image of Slider
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: Webattack(),
                                  type: PageTransitionType.rightToLeftWithFade));
                        },
                        color: Colors.black,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/ud.png',
                            width: 1700.0,
                            height: 150.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                      //3rd Image of Slider
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: Exploitation(),
                                  type: PageTransitionType.rightToLeftWithFade));
                        },
                        color: Colors.black,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/ud.png',
                            width: 1700.0,
                            height: 150.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                      //4th Image of Slider
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: Wireless(),
                                  type: PageTransitionType.rightToLeftWithFade));
                        },
                        color: Colors.black,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/ud.png',
                            width: 1700.0,
                            height: 150.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                      //5th Image of Slider
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: Forensics(),
                                  type: PageTransitionType.rightToLeftWithFade));
                        },
                        color: Colors.black,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/ud.png',
                            width: 1700.0,
                            height: 150.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      //6th Image of Slider
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: Reverse(),
                                  type: PageTransitionType.rightToLeftWithFade));
                        },
                        color: Colors.black,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/ud.png',
                            width: 1700.0,
                            height: 150.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      height: 180.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 600),
                      viewportFraction: 0.7,
                    ),
                  ),
                ),


          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 310),
            child: IconButton(
              icon: Icon(EvaIcons.arrowBack),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: Homescreen(),
                        type: PageTransitionType.rightToLeftWithFade));
              },
            ),
          ),

        ],
        backgroundColor: Colors.black,
      ),


    );
  }
}
