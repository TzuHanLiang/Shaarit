import 'package:flutter/material.dart';
import '../widgets/ui_elements/gradient_appbar.dart';

import '../widgets/ui_elements/primary_btn_red.dart';
import '../widgets/ui_elements/register_title_font.dart';

class RegisterPage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterPage1State();
  }
}

class _RegisterPage1State extends State<RegisterPage1> {
  String _phoneNum;
  String _imei;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width,
            ),
          ),
          GradientAppBar('Register'),
          Positioned(
            top: 40.0,
            left: 0.0,
            child: BackButton(
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 56.0,
            left: 130.0,
            child: RegisterTitleFont("請輸入電話號碼"),
          ),
          Positioned(
            top: 120.0,
            left: 32.0,
            child: DropdownButton<String>(
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
          Positioned(
            top: 120.0,
            right: 32.0,
            child: Container(
              constraints: BoxConstraints(maxHeight: 30.0, maxWidth: 212.0),
              child: TextField(
                decoration: InputDecoration(
                    // labelText: 'Phone number',
                    filled: true,
                    fillColor: Colors.white),
                keyboardType: TextInputType.number,
                obscureText: false,
                onChanged: (String value) {},
              ),
            ),
          ),
          Positioned(
              top: 204.0,
              left: 48.0,
              child: PrimaryButtonRed('取得驗證碼',
                  () => Navigator.pushNamed(context, '/confirmation'))),
        ],
      ),
    );
  }
}
