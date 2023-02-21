import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_auth/Screens/Bottom_Navigation/Component/courses.dart';
import 'package:flutter_auth/Screens/Bottom_Navigation/Component/home.dart';
import 'package:flutter_auth/constants.dart';
import 'Component/explore_news.dart';
import 'Component/profile.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  //List of Screen
  List screen = [
    Home(),
    const ExploreNews(),
    const Courses(),
    const Profile(),
  ];

  int currentIndex = 0;
  void onTapNav(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          color: kPrimaryColor,
          buttonBackgroundColor: kPrimaryColor,
          backgroundColor: kPrimaryColorShade200,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          items:  const [
            Icon(Icons.home, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.library_books, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ], // Icons
          onTap: (index) {
            setState(() {
              currentIndex = index;
              screen[currentIndex];
            });
          },
          letIndexChange: (index) => true,
        ),

    );
  }
}