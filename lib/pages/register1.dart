import 'package:flutter/material.dart';
import '../widgets/ui_elements/gradient_appbar.dart';

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
      body: Column(
        children: <Widget>[
          // BackButton(color: Colors.white),
          
          GradientAppBar('Register'),
          Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * .77,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0.0,
                  left: 20.0,
                  child: BackButton(color: Colors.black,),
                ),
                Positioned(
                  bottom: 550.0,
                  left: 144.0,
                  child: Text('請輸入電話號碼'),
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
                    constraints:
                        BoxConstraints(maxHeight: 30.0, maxWidth: 212.0),
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
                  bottom: 380.0,
                  left: 46.0,
                  child: RawMaterialButton(
                    constraints:
                        BoxConstraints(minWidth: 280.0, minHeight: 44.0),
                    fillColor: Color.fromRGBO(255, 8, 19, 1.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    child: Text(
                      '取得驗證碼',
                      style: const TextStyle(
                          color: const Color.fromRGBO(255, 255, 255, 1.0),
                          fontWeight: FontWeight.w500,
                          fontFamily: "PingFangTC",
                          fontStyle: FontStyle.normal,
                          fontSize: 15.0),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/confirmation');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
