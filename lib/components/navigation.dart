import 'package:flutter/material.dart';

// 1. Navigator.push
void navigatePush(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

// 2. Navigator.pop
void navigatePop(BuildContext context) {
  Navigator.pop(context);
}

// 3. Navigator.pushReplacement
void navigatePushReplacement(BuildContext context, Widget screen) {
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => screen),
  );
}

// 4. Navigator.pushAndRemoveUntil
void navigatePushAndRemoveUntil(BuildContext context, Widget screen) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => screen),
    (route) => false, // Removes all the previous routes
  );
}

// 5. Navigator.popUntil
void navigatePopUntil(BuildContext context) {
  Navigator.popUntil(
      context,
      ModalRoute.withName(
          '/home')); // Replace '/home' with your desired route name
}

// 6. Navigator.maybePop
void navigateMaybePop(BuildContext context) {
  Navigator.maybePop(context);
}
