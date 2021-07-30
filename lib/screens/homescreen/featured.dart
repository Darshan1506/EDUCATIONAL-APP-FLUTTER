import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_udemyapk/new/ethical.dart';
import 'package:flutter_udemyapk/new/exploitation.dart';
import 'package:flutter_udemyapk/screens/homescreen/wishlist.dart';
import 'package:flutter_udemyapk/screens/homescreen/mycourses.dart';
import 'package:flutter_udemyapk/screens/homescreen/search.dart';
import 'package:page_transition/page_transition.dart';

class Featured extends StatefulWidget {
  @override
  _FeaturedState createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(

        actions: [

          IconButton(icon: Icon(EvaIcons.shoppingCartOutline),
      onPressed: (){
      },),

        ],
        backgroundColor: Colors.black,
      ),
      body: Container(

        child: ListView(
          children: [
            CarouselSlider(
              items: [

                //1st Image of Slider
                RaisedButton(onPressed: (){
                  Navigator.pushReplacement(context, PageTransition(child: Wishlist(), type: PageTransitionType.rightToLeftWithFade));
                },

                  color: Colors.black,
                  child: ClipRRect(

                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/slider/555.png',
                      width: 1700.0,
                      height: 150.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                //2nd Image of Slider
                RaisedButton(onPressed: (){
                  Navigator.pushReplacement(context, PageTransition(child: Ethical(), type: PageTransitionType.rightToLeftWithFade));
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
                //3rd Image of Slider
                RaisedButton(onPressed: (){
                  Navigator.pushReplacement(context, PageTransition(child: Wishlist(), type: PageTransitionType.rightToLeftWithFade));
                },
                  color: Colors.black,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/slider/3333.png',
                      width: 1700.0,
                      height: 150.0,
                      fit: BoxFit.fill,
                    ),
                  ),

                ),

                //4th Image of Slider
                RaisedButton(onPressed: (){
                  Navigator.pushReplacement(context, PageTransition(child: Wishlist(), type: PageTransitionType.rightToLeftWithFade));
                },
                  color: Colors.black,
                  child: ClipRRect(


                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/slider/4444.png',
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
            Padding(
              padding: const EdgeInsets.fromLTRB(3, 11, 3, 11),
              child: RaisedButton(onPressed: (){
                Navigator.pushReplacement(context, PageTransition(child: Mycourses(), type: PageTransitionType.rightToLeftWithFade));
              },
                color: Colors.black,
                child: ClipRRect(

                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/temp/2.png',
                    width: 1000.0,
                    height: 130.0,
                    fit: BoxFit.fill,
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(3, 11, 3, 11),
              child: RaisedButton(onPressed: (){
                Navigator.pushReplacement(context, PageTransition(child: Search(), type: PageTransitionType.rightToLeftWithFade));
              },
                color: Colors.black,
                child: ClipRRect(

                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/slider/cert1.png',
                    width: 1000.0,
                    height: 130.0,
                    fit: BoxFit.fill,
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(3, 11, 3, 11),
              child: RaisedButton(onPressed: (){
                Navigator.pushReplacement(context, PageTransition(child: Wishlist(), type: PageTransitionType.rightToLeftWithFade));
              },
                color: Colors.black,
                child: ClipRRect(

                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/slider/sec1.png',
                    width: 1000.0,
                    height: 130.0,
                    fit: BoxFit.fill,
                  ),
                ),

              ),
            ),
          ],
        ),
          )
    );

  }
}





