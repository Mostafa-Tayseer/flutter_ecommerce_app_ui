import 'package:flutter/material.dart';
import 'package:session_task/components/custom_text_form.dart';
import 'package:session_task/components/navigation.dart';
import 'package:session_task/screens/forget_screen.dart';
import 'package:session_task/screens/navigation_screen.dart';
import 'package:session_task/screens/regist_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 200),
            Image(image: AssetImage('assets/images/freed.png')),
            SizedBox(height: 30),
            CustomTextForm(label: 'Email'),
            SizedBox(height: 20),
            CustomTextForm(label: 'password'),
            // SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                child: Text('forget password'),
                onPressed: () {
                  navigatePush(context, ForgetScreen());
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ForgetScreen()),
                  // );
                },
              ),
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: MyButton(txt: "Login", fun: ()=>{navigatePushAndRemoveUntil(context, NavigationScreen())})
              // ElevatedButton(
              //   style: ButtonStyle(
              //     foregroundColor: WidgetStatePropertyAll(Colors.white),
              //     backgroundColor: WidgetStatePropertyAll(Color(0xFFEB5425)),
              //   ),
              //   onPressed: () {},
              //   child: Text('Login'),
              // ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('don\'t have an account '),
                TextButton(
                  onPressed: () {
                    navigatePush(context,RegistScreen());
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => RegistScren()),
                    // );
                  },
                  child: Text("sign up"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class CustomTextForm extends StatelessWidget {
//   const CustomTextForm({super.key, required this.label});
//   final String label;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       decoration: InputDecoration(
//         labelText: label,
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//       ),
//     );
//   }
// }
