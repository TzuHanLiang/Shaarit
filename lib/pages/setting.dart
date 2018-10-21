import 'package:flutter/material.dart';
import '../widgets/ui_elements/gradient_appbar.dart';
import '../widgets/ui_elements/register_title_font.dart';
import '../widgets/ui_elements/register_subtitle_font.dart';
import '../widgets/ui_elements/primary_btn_red.dart';
import '../widgets/setting/setting2.dart';

class Settings extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          GradientAppBar('Settings'),
          Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * .89,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0.0,
                  left: 10.0,
                  child: BackButton(
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  top: 32.0,
                  left: 32.0,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x80000000),
                          offset: Offset(0.0, 6.0),
                          blurRadius: 20.0,
                        ),
                      ],
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                    ),
                    constraints:
                        BoxConstraints(minHeight: 320.0, maxWidth: 310.0),
                  ),
                ),
                Positioned(
                  top: 363.0,
                  right: 20.0,
                  child: IconButton(
                    onPressed: () {}
                        // () => Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => Setting2(),
                        //       ),)
                        ,
                    icon: Icon(
                      Icons.arrow_forward,
                      size: 30.0,
                    ),
                  ),
                ),
                Positioned(
                  top: 363.0,
                  left: 20.0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30.0,
                    ),
                  ),
                ),
                Positioned(
                  top: 48.0,
                  left: 125.0,
                  child: RegisterTitleFont('請問你的名字是？'),
                ),
                Positioned(
                  top: 79.0,
                  left: 125.0,
                  child: RegisterSubtitleFont('推薦 Coupon 時使用'),
                ),
                Positioned(
                  top: 286.0,
                  left: 49.0,
                  child: PrimaryButtonRed(
                      'Next',
                      () =>
                          Navigator.pushReplacementNamed(context, '/settings')),
                ),
                Positioned(
                  top: 376.0,
                  left: 170.0,
                  child: RichText(
                    text: new TextSpan(children: [
                      new TextSpan(
                          style: const TextStyle(
                              color: const Color(0xffe10813),
                              fontWeight: FontWeight.w400,
                              fontFamily: "DIN-Alternate",
                              fontStyle: FontStyle.normal,
                              fontSize: 17.0),
                          text: "1 "),
                      new TextSpan(
                          style: const TextStyle(
                              color: const Color(0xff9b9b9b),
                              fontWeight: FontWeight.w400,
                              fontFamily: "DIN-Alternate",
                              fontStyle: FontStyle.normal,
                              fontSize: 17.0),
                          text: "- 6")
                    ]),
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
