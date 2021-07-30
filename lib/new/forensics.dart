import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_udemyapk/screens/homescreen/mycourses.dart';
import 'package:flutter_udemyapk/setup/welcome.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_udemyapk/screens/homescreen.dart';

class Forensics extends StatefulWidget {
  @override
  _ForensicsState createState() => _ForensicsState();
}

class _ForensicsState extends State<Forensics> {
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
                    image: AssetImage('assets/images/ud.png')),
              ),
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(
                'Computer hacking forensic investigation is the process of detecting hacking attacks and properly extracting evidence to report the crime and conduct audits to prevent future attacks. Computer forensics is simply the application of computer investigation and analysis techniques in the interests of determining potential legal evidence CHFI investigators can draw on an array of methods for discovering data that resides  in a computer system, or recovering deleted, encrypted, or damaged file information known as computer data recovery.',
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
                  'Who should take this course?',
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
                  '•	Police and other law enforcement personnel\n•	Defense and Military personnel\n•	e-Business Security professionals\n•	Systems administrators\n•	Legal professionals\n•	Banking, Insurance and other professionals\n•	Government agencies\n•	IT managers',
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
                  '1.	Computer Forensics in Today’s World\n2.	Computer Forensics Investigation Process\n3.	Understanding Hard Disks and File Systems\n4.	Operating System Forensics\n5.	Defeating Anti-Forensics Techniques\n6.	Data Acquisition and Duplication\n7.	Network Forensics\n8.	Investigating Web Attacks\n9.	Database Forensics\n10.	Cloud Forensics\n11.	Malware Forensics\n12.	Investigating E-mail Crimes\n13.	Mobile Forensics\n14.	Investigative Reports',
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
