import 'package:flutter/material.dart';

class VerificationCode extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 40.0,
        minHeight: 72.0,
      ),
      child: TextField(
        style: const TextStyle(
            color: const Color(0xff000000),
            fontWeight: FontWeight.w500,
            fontFamily: "DIN",
            fontStyle: FontStyle.normal,
            fontSize: 40.0),
        decoration: InputDecoration(filled: true, fillColor: Colors.white),
        keyboardType: TextInputType.number,
        obscureText: false,
        onChanged: (String value) {},
      ),
    );
  }
}
