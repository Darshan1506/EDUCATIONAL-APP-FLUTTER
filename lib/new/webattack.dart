import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_udemyapk/screens/homescreen/mycourses.dart';
import 'package:flutter_udemyapk/setup/welcome.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_udemyapk/screens/homescreen.dart';

class Webattack extends StatefulWidget {
  @override
  _WebattackState createState() => _WebattackState();
}

class _WebattackState extends State<Webattack> {
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
                'AWAE is not a course focused on black box methodology. You will be learning white box web app pentest methods. The bulk of your time will be spent analyzing source code, decompiling Java, debugging DLLs, manipulating requests, and more, using tools like Burp Suite, dnSpy, JD-GUI, Visual Studio, and the trusty text editor. The course covers the following topics in detail. For a more complete breakdown of the course topics, please refer to the AWAE syllabus.',
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
                  'Students will learn how to:',
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
                  '•	Perform a deep analysis on decompiled web app source code\n•	Identify logical vulnerabilities that many enterprise scanners are unable to detect\n•	Combine logical vulnerabilities to create a proof of concept on a web app\n •	Exploit vulnerabilities by chaining them into complex attacks\n',
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
                  'WHO IS THIS COURSE FOR?',
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
                  '1)Experienced penetration testers who want to better understand white box web app pentesting \n2)Web application security specialists\n3)Web professionals working with the codebase and security infrastructure of a web application\n4)(software engineer, full stack web developer, etc)',
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
                  '1.web security tools and methodlogy\n2.Source code analysis\n3)Persistent cross-site scripting\n4)Session hijacking\n5).NET deserialization\n6)Remote code execution\n7)Blind SQL injections\n8)Data exfiltration\n9)Bypassing file upload restrictions and file extension filters\n10)PHP type juggling with loose comparisons\n11)PostgreSQL Extension and User Defined Functions\n12)Bypassing REGEX restrictions\n13)Magic hashes\n14)Bypassing character restrictions\n15)UDF reverse shells\n16)PostgreSQL large objects\n17)DOM-based cross site scripting (black box)\n18)Server side template injection\n19)Weak random token generation\n20)XML external entity injection\n21)RCE via database functions\n22)OS command injection via WebSockets (black box)',
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
