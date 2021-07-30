import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_udemyapk/screens/homescreen.dart';
import 'package:page_transition/page_transition.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
                        child: Homescreen(),
                        type: PageTransitionType.rightToLeftWithFade));
              },
            ),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
    children: [
    Container(
    child: Padding(
    padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
    child: Text(
    'The leedma security is the pinnacle of the most desired information security training program.we offer many courses with their respective verified certificates.Courses like\n 1)Ethical Hacking\n2) Advanced Web attacks & exploitation\n3) Advance windows exploitation\n4) Wireless attacks\n 5) Forensics investigator\n6) Reverse Engineering etc are availablewe provide the students with high tech media-rich experience and our highly skilled professionals who ll guide you through.Develop a thorough understanding of the core concepts. Terminologies, tactics used in the cyberworld.As this area of digital forensics grow in scope and size due to the prevalence and proliferation of mobile devices andas the use of these devices grows, more evidence and information important to investigations will beLearn tools, technologies and software’s needed to become top cybersecurity professionals.At leedma we challenge students to TRY HARDER!! This means developing a growth mindset, engaging critical thinking skills,and overcoming unforeseen obstacles.Completing one of our courses and passing the certification exam places you among an elite group of security professionals.Companies have noticed this and Leedma certified professionals are in increasing demand.',
    textAlign: TextAlign.center,
    style: TextStyle(
    color: Colors.yellow[300],
    fontSize: 14,
    letterSpacing: 1.5,
    fontFamily: 'yusei',
    ),
    ),
    )),
    ],
    ),
      )
    );
  }
}
