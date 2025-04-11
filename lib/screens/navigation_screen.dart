import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session_task/screens/cart_screen.dart';
import 'package:session_task/screens/favorites_screen.dart';
import 'package:session_task/screens/home_screen.dart';
import 'package:session_task/screens/profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      floatingActionButton: SafeArea(child: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.qr_code_rounded),
        backgroundColor: Color(0xFFEB5425),
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.profile_circled,
        ],
        // backgroundColor: Colors.black,
        //س: بتعمل ايه بالظبط؟؟   
        notchSmoothness: NotchSmoothness.softEdge,
        activeColor: Color(0xFFEB5425),
        // activeColor: Color(0xffef6969),
        inactiveColor: Colors.black.withOpacity(0.5),
        elevation: 0,
        leftCornerRadius: 10,
        rightCornerRadius: 10,
        iconSize: 25,
        gapLocation:GapLocation.center ,
        activeIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
