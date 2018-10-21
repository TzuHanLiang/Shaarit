import 'package:flutter/material.dart';

class RegisterTitleFont extends StatelessWidget {
  final String _label;
  RegisterTitleFont(this._label);

  Widget build(BuildContext context) {
    return new Text(
      _label,
      style: const TextStyle(
          color: const Color(0xff000000),
          fontWeight: FontWeight.w500,
          fontFamily: "PingFangTC",
          fontStyle: FontStyle.normal,
          fontSize: 18.0),
    );
  }
}
