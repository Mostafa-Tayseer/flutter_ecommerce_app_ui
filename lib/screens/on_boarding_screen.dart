import 'package:flutter/material.dart';
import 'package:session_task/components/board_item.dart';
import 'package:session_task/components/navigation.dart';
import 'package:session_task/screens/regist_screen.dart';
import 'package:session_task/scrolling/scrolling_options.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  String buttonText = 'Skip';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ScrollingOptions(
      child: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              currentIndex = index;
              if (currentIndex == 2) {
                buttonText = 'Finish';
                setState(() {});
              }
            },
            controller: pageController, // Ensure PageView is controlled
            children: [
              BoardItem(image: 'assets/images/splash1.png'),
              BoardItem(image: 'assets/images/splash2.png'),
              BoardItem(image: 'assets/images/splash3.png'),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  onTap: () {
                    navigatePushReplacement(context, RegistScreen());
                    // Navigator.of(context).pushReplacement(
                    //   MaterialPageRoute(builder: (context) => RegistScren()),

                    // );
                  },
                ),
                // SmoothPageIndicator(controller: pageController, count: 3),
                currentIndex == 2
                    ? SizedBox()
                    : GestureDetector(
                        child: Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        onTap: () {
                          pageController.nextPage(
                            duration: Duration(seconds: 2),
                            curve: Curves.bounceOut,
                          );
                        },
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
