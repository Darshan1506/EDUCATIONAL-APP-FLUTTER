import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_udemyapk/newform/main2.dart';
import 'package:flutter_udemyapk/screens/homescreen/featured.dart';
import 'package:flutter_udemyapk/screens/homescreen/mycourses.dart';
import 'package:flutter_udemyapk/screens/homescreen/wishlist.dart';
import 'package:flutter_udemyapk/setup/welcome.dart';
import 'package:page_transition/page_transition.dart';


import 'package:flutter_udemyapk/screens/homescreen.dart';

class Ethical extends StatefulWidget {
  @override
  _EthicalState createState() => _EthicalState();
}

class _EthicalState extends State<Ethical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                        child: Mycourses(),
                        type: PageTransitionType.rightToLeftWithFade));
              },
            ),
          ),

        ],
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: 1000,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/slider/1111.png')),
              ),
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(
                'The Leedma Certified Ethical Hacker (LCH) program is the pinnacle of the most desired information security training program.You will be taught the five phases of ethical hacking and the ways to approach your target and succeed at breaking in every time!This ethical hacking course puts you in the driver’s seat of a hands-on environment with a systematic process. We provide you with thebest hacking tools and techniques used by hackers and information security professionals alike to break into an organization.Here, you will be exposed to five phases that include Reconnaissance, Gaining Access, Enumeration, Maintaining Access, and covering your tracks..',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.yellow[300],
                  fontSize: 14,
                  letterSpacing: 1.5,
                  fontFamily: 'yusei',
                ),
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(right: 60, left: 60, top: 10),
              child: Container(
                child: Divider(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Syllabus',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60, left: 60, top: 10),
              child: Container(
                child: Divider(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11),
              child: Container(
                child: Text(
                  '1.Introduction to Ethical hacking\n2.Footing printing and Reconnaissance\n3)Scanning Network\n4)Enumeration\n5)Vulnerability Analysis\n6)System Hacking\n7)Malware Threats\n8)Sniffing\n9)Social Engineering\n10)Denial-of-Service\n11)Session Hijacking\n12)Evading IDS,Firewalls,and Honeypots\n13)Hacking Web Servers\n14)Hacking Web Applications\n15)SQL Injection\n16)Hacking Wireless Networks\n17)Hacking Mobile Platforms\n18)IoT Hacking\n19)Cloud Computing\n20)Cryptography',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.yellow[300],
                    fontFamily: 'yusei',
                    letterSpacing: 3,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60, left: 60, top: 10),
              child: Container(
                child: Divider(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Purpose',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60, left: 60, top: 10),
              child: Container(
                child: Divider(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11),
              child: Container(
                child: Text(
                  '•	Establish and govern minimum standards for credentialing professional information securityspecialists in ethical hacking measures.\n•	Inform the public that credentialed individuals meet or exceed the minimum standards\n•	Reinforce ethical hacking as a unique and self-regulating profession',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.yellow[300],
                    fontFamily: 'yusei',
                    letterSpacing: 1.5,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: new RaisedButton(
                highlightElevation: 20,

                onPressed: (){
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: WelcomePage(),
                          type: PageTransitionType.rightToLeftWithFade));

                },
                textColor: Colors.white,
                color: Colors.red,
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "Enroll now",
                ),
              ),
            ),




          ],
        ),



      ),
    );
  }
}
