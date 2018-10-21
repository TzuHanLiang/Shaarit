import 'package:flutter/material.dart';

class RegisterSubtitleFont extends StatelessWidget {
  final String _label;
  RegisterSubtitleFont(this._label);
  Widget build(BuildContext context) {
    return Text(
      _label,
      style: const TextStyle(
          color: const Color(0xff9b9b9b),
          fontWeight: FontWeight.w400,
          fontFamily: "PingFangTC",
          fontStyle: FontStyle.normal,
          fontSize: 14.0),
    );
  }
}
