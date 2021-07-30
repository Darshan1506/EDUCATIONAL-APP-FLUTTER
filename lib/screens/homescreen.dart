import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_udemyapk/screens/homescreen/featured.dart';
import 'package:flutter_udemyapk/screens/homescreen/mycourses.dart';
import 'package:flutter_udemyapk/screens/homescreen/search.dart';
import 'package:flutter_udemyapk/screens/homescreen/wishlist.dart';
import 'package:flutter_udemyapk/screens/homescreen/account.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}
class _HomescreenState extends State<Homescreen> {
  PageController pageController = new PageController();
  int currentIndex = 0;
  void onTap(int page){
    setState(() {
      currentIndex = page;
    });
    pageController.jumpToPage(page);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index){
          setState(() {
            currentIndex = index;
          });
        },
        controller: pageController ,
        children: [
          Featured(), Search(),Mycourses(),Wishlist(),Account()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        backgroundColor: Colors.grey.shade900,
        selectedIconTheme: IconThemeData(
          color: Colors.redAccent
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.white
        ),
        unselectedItemColor: Colors.white,
        iconSize: 26,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        currentIndex: currentIndex,

        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Labs')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_video),
              title: Text('Courses')
          ),
          BottomNavigationBarItem(
              icon: Icon(EvaIcons.people),
              title: Text('Community')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text('Account')
          ),
        ],
      ),
    );
  }
}
