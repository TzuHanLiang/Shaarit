import 'package:flutter/material.dart';

class PrimaryButtonRed extends StatelessWidget {
  final String _label;
  final Function _onPressed;
  PrimaryButtonRed(this._label, this._onPressed);

  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints(minWidth: 280.0, minHeight: 44.0),
      fillColor: Color.fromRGBO(255, 8, 19, 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
      child: Text(
        _label,
        style: const TextStyle(
            color: const Color(0xffffffff),
            fontWeight: FontWeight.w500,
            fontFamily: "PingFangTC",
            fontStyle: FontStyle.normal,
            fontSize: 15.0),
      ),
      onPressed: _onPressed,
    );
  }
}
