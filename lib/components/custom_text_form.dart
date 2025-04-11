import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

void navigateTo(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

class MyButton extends StatelessWidget {
  final String txt;
  final Function fun;
  const MyButton({
    required this.txt,
    required this.fun,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.white),
        backgroundColor: WidgetStatePropertyAll(
          Color(0xFFEB5425),
        ),
      ),
      onPressed: () {
        fun();
        // navigatePush(context, OtpScreen());
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => OtpScreen()),
        // );
      },
      child: Text(txt, style: TextStyle(fontSize: 20)),
    );
  }
}
