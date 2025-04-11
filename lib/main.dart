import 'package:flutter/material.dart';
import 'package:session_task/screens/cart_screen.dart';
import 'package:session_task/screens/login_screen.dart';
import 'package:session_task/screens/navigation_screen.dart';
import 'package:session_task/screens/otp_screen.dart';
import 'package:session_task/screens/splash_screen.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: CartScreen(),
      // home: NavigationScreen(),
    );
  }
}
