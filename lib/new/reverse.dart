import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_udemyapk/screens/homescreen/mycourses.dart';
import 'package:flutter_udemyapk/setup/welcome.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_udemyapk/screens/homescreen.dart';

class Reverse extends StatefulWidget {
  @override
  _ReverseState createState() => _ReverseState();
}

class _ReverseState extends State<Reverse> {
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
                'Mobile forensics is certainly, here to stay as every mobile device is different and different results will occur based on that device requiring unique expertise Develop a thorough understanding of the core concepts. Terminologies, tactics used in the cyberworld. This course was put together to focusing on what today computer and mobile forensics investigators some of the advanced areas this course will be covering are the intricacies of manual Acquisition (physical vs. logical)  & advanced analysis using reverse engineering, understanding how the popular Mobile OSs are hardened to defend against common attacks and exploits.',
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
                  'Benefits',
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
                  '•	Protect your organization by retrieving stolen data and incriminating evidence from communications devices used by rogue employees.\n•	Influence results of civil, private litigation and criminal cases by providing crucial evidence such as the suspects involved, their locations at the time of question and the role they played by extracting this information from mobile devices.\n•	Refine current mobile forensic processes by addressing its unique problems of preserving crucial data and producing valid results.\n•	Protecting your organization by conducting proper & regular IT Audit investigations on mobile devices to ensure no misuse of company information.',
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
                  'Who Should Attend ?',
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
                  '•	Information security professional\n•	Risk Assessment Professionals\n•	Digital Forensics Investigators\n•	Information Security Professionals\n•	Mobile Developer \n•	Law Enforcement Officers and Government Agencies\n•	Attorneys, Paralegals and First Responders\n•	Accountants and Financial Personnel\n•	Anyone who deals with implementation, testing, security\n•	hardening of mobile devices',
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
                  'Course Prerequisites',
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
                  '•	Students should have an understanding of Fundamental principles and process for digital forensics.\n•	Knowledge includes evidence acquisitions, examination analysis and final reporting.\n•	A minimum of 6 months Digital Forensics experience is Recommended.',
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
