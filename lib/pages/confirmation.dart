import 'package:flutter/material.dart';
import '../widgets/ui_elements/gradient_appbar.dart';

class Confirmation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ConfirmationState();
  }
}

class _ConfirmationState extends State<Confirmation> {
  String _num;
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
                  bottom: 550.0,
                  left: 144.0,
                  child: Text('請輸入驗證碼'),
                ),
                Positioned(
                  bottom: 530.0,
                  left: 144.0,
                  child: Text('已發送至$_num'),
                ),
               Positioned(
                  top: 120.0,
                  right: 32.0,
                  child: Container(
                    constraints:
                        BoxConstraints(maxHeight: 72.0, maxWidth: 40.0, minHeight: 72.0),
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
                ),Positioned(
                  top: 120.0,
                  right: 88.0,
                  child: Container(
                    constraints:
                        BoxConstraints(maxHeight: 72.0, maxWidth: 40.0, minHeight: 72.0),
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
                ),Positioned(
                  top: 120.0,
                  right: 144.0,
                  child: Container(
                    constraints:
                        BoxConstraints(maxHeight: 72.0, maxWidth: 40.0, minHeight: 72.0),
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
                ),Positioned(
                  top: 120.0,
                  right: 200.0,
                  child: Container(
                    constraints:
                        BoxConstraints(maxHeight: 72.0, maxWidth: 40.0, minHeight: 72.0),
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
                ),Positioned(
                  top: 120.0,
                  right: 254.0,
                  child: Container(
                    constraints:
                        BoxConstraints(maxHeight: 72.0, maxWidth: 40.0, minHeight: 72.0),
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
                ),Positioned(
                  top: 120.0,
                  right: 310.0,
                  child: Container(
                    constraints:
                        BoxConstraints(maxHeight: 72.0, maxWidth: 40.0, minHeight: 72.0),
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
                      'Next',
                      style: const TextStyle(
                          color: const Color.fromRGBO(255, 255, 255, 1.0),
                          fontWeight: FontWeight.w500,
                          fontFamily: "PingFangTC",
                          fontStyle: FontStyle.normal,
                          fontSize: 15.0),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                  ),
                ),
                 Positioned(
                  bottom: 320.0,
                  left: 46.0,
                  child: RawMaterialButton(
                    constraints:
                        BoxConstraints(minWidth: 280.0, minHeight: 44.0),
                    fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    child: Text(
                      '沒收到？重新發送(??)',
                      style: const TextStyle(
                          color: const Color.fromRGBO(155, 155, 155, 1.0),
                          fontWeight: FontWeight.w500,
                          fontFamily: "PingFangTC",
                          fontStyle: FontStyle.normal,
                          fontSize: 15.0),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/register');
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
