import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:session_task/components/navigation.dart';
import 'package:session_task/screens/login_screen.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Enter OTP',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(height: 20),
          OtpTextField(
            cursorColor: Color(0xFFEB5425),
            numberOfFields: 5,
            borderWidth: 3.0,
            // fieldHeight: 50.0,
            // fieldWidth: 50.0,
            fillColor: Color(0xFFEB5425),
            enabledBorderColor: Color(0xFFEB5425),
            focusedBorderColor: Color(0xFFEB5425),
            // borderColor: Color(0xFFEB5425)
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              if (RegExp(r'^[0-9]+$').hasMatch(code)) {
              } else {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Invalid Input"),
                      content: Text("Please enter numbers only"),
                    );
                  },
                );
              }
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              if (RegExp(r'^[0-9]+$').hasMatch(verificationCode)) {
                // navigatePushReplacement(context, LoginScreen());
                navigatePush(context, LoginScreen());
                // showDialog(
                //     context: context,
                //     builder: (context) {
                //       return AlertDialog(
                //         title: Text("Verification Code"),
                //         content: Text('Code entered is $verificationCode'),
                //       );
                //     });
              } else {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Invalid Input"),
                        content: Text("Please enter only numbers"),
                      );
                    });
              }
            }, // end onSubmit
            keyboardType: TextInputType.number,
          ),
          // OtpTextField(
          //   numberOfFields: 5,
          //   borderColor: Color(0xFFEB5425),
          //   //set to true to show as box or false to show as dash
          //   showFieldAsBox: true,
          //   //runs when a code is typed in
          //   onCodeChanged: (String code) {
          //     //handle validation or checks here
          //   },
          //   //runs when every textfield is filled
          //   onSubmit: (String verificationCode) {
          //     showDialog(
          //       context: context,
          //       builder: (context) {
          //         return AlertDialog(
          //           title: Text("Verification Code"),
          //           content: Text('Code entered is $verificationCode'),
          //         );
          //       },
          //     );
          //   }, // end onSubmit
          // ),
        ],
      ),
    );
  }
}
