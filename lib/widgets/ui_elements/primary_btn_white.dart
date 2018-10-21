import 'package:flutter/material.dart';

class PrimaryButtonWhite extends StatelessWidget {
  final String _label;
  final Function _onPressed;
  PrimaryButtonWhite(this._label, this._onPressed);

  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints(minWidth: 280.0, minHeight: 44.0),
      fillColor: Color.fromRGBO(255, 255, 255, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
      child: Text(
        _label,
        style: const TextStyle(
            color: const Color(0xff000000),
            fontWeight: FontWeight.w500,
            fontFamily: "PingFangTC",
            fontStyle: FontStyle.normal,
            fontSize: 15.0),
      ),
      onPressed: _onPressed,
    );
  }
}
