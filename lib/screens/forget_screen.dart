import 'package:flutter/material.dart';
import 'package:session_task/components/custom_text_form.dart';
import 'package:session_task/components/navigation.dart';
import 'package:session_task/screens/otp_screen.dart';
import 'package:session_task/screens/verfiy_number_screen.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forget Password',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: 20),
            Text(
              'please enter your email addresse, you will receive a link to create or set a new password via email',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child:
                  MyButton(txt: 'send code', fun: ()=>navigatePush(context, OtpScreen()))
                      // MyButton('send code', navigatePush(context, OtpScreen())),
                ),
                Text(
                  'OR',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                TextButton(
                  onPressed: () {},
                  child: TextButton(onPressed: ()=>navigatePush(context,VerfiyNnumberScreen()), child: Text('Verify Using Number'))
                  // TextButton(child: 'Verify Using Number'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class MyButton extends StatelessWidget {
//   final String txt;
//   final Function fun;
//   const MyButton({
//     required this.txt,
//     required this.fun,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ButtonStyle(
//         foregroundColor: WidgetStatePropertyAll(Colors.white),
//         backgroundColor: WidgetStatePropertyAll(
//           Color(0xFFEB5425),
//         ),
//       ),
//       onPressed: () {
//         fun();
//         // navigatePush(context, OtpScreen());
//         // Navigator.push(
//         //   context,
//         //   MaterialPageRoute(builder: (context) => OtpScreen()),
//         // );
//       },
//       child: Text(txt, style: TextStyle(fontSize: 20)),
//     );
//   }
// }
