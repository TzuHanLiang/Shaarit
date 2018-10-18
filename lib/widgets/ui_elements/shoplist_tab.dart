import 'package:flutter/material.dart';

class ShopListTab extends StatelessWidget {
  
  final String _label;
  ShopListTab(this._label,);

  Widget build(BuildContext context) {
    return  Container(
        width: 60.0,
        height: 35.0,
        decoration: new BoxDecoration(
          border: new Border.all(color: Color(0xff9b9b9b)),
          borderRadius: new BorderRadius.circular(18.5),
        ),
        child: new Center(
          child: Text(
            _label,
            style: const TextStyle(
                color: const Color(0xff9b9b9b),
                fontWeight: FontWeight.w400,
                fontFamily: "PingFangTC",
                fontStyle: FontStyle.normal,
                fontSize: 14.0),
          ),
        ),
     
    );
  }
}
