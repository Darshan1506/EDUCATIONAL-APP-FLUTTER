import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_udemyapk/screens/homescreen/mycourses.dart';
import 'package:flutter_udemyapk/setup/welcome.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_udemyapk/screens/homescreen.dart';

class Wireless extends StatefulWidget {
  @override
  _WirelessState createState() => _WirelessState();
}

class _WirelessState extends State<Wireless> {
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
          IconButton(
            icon: Icon(EvaIcons.shoppingCartOutline),
            onPressed: () {},
          )
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
                'Wireless Attacks (WiFu) introduces students to the skills needed to audit and secure wireless devices.In WiFu, students will learn to identify vulnerabilities in 802.11 networks and execute organized attacks. Each student will set up a home lab to practice the techniques learned in this online, self-paced course.Successful completion of the course and exam confers the Leedma Certified Wireless Professional (LCWP) certification.',
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
                  'Who is this course for',
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
                  '1.Security Professionals & Enthusiasts\n2. Network Administrators',
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
                  'All students must have a solid understanding of TCP/IP, as well as familiarity with Linux. A modern laptop or desktop that can boot and run BackTrack and specific hardware is required to complete course exercises. You can use Kali Linux to take the course.Below is the recommended compatible hardware for your home labs.',
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
                  '1. IEEE 802.11\n 2. Wireless Networks\n3.Packets and Network Interaction\n4. Linux Wireless Stack and Drivers\n5. Aircrack-ng Essentials\n6.Cracking WEP with Connected Clients\n7. Cracking WEP via a Client\n 8. Cracking Clientless WEP Networks\n 9.Bypassing WEP Shared Key Authentication\n 10. Cracking WPA/WPA2 PSK with Aircrack-ng\n11.Cracking WPA with JTR and Aircrack-ng\n12.Cracking WPA with coWPAtty\n13. Cracking WPA with Pyrit\n14. Additional Aircrack-ng Tools\n 15. Wireless Reconnaissance\n 16.Rogue Access Point',
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
                  'Recommended Wireless Network Routers',
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
                  'D-Link DIR-601\nNetgear WNR1000v2',
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
                  'Recommended Wireless Cards',
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
                  'Netgear WN111v2 USB\nALFA Networks AWUS036H USB 500mW\nFor wireless card compatibility, please refer to the Aircrack-ng wiki',
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
                  'WHAT COMPETENCIES WILL YOU GAIN?',
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
                  '1.Greater insight into wireless security and expanded awareness of the need for real-world security solutions\n2.Implementing attacks against WEP and WPA encrypted network\n3. Executing advanced attacks such as PRGA key extraction and one-way packet injection\n4.Using alternate WEP and WPA cracking techniques\n5.Using various wireless reconnaissance tools\n6.Understanding of how to implement different rogue access point attacks\n7.Familiarity with the BackTrack wireless tools',
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
