import 'package:flutter/material.dart';
import '../widgets/ui_elements/gradient_appbar.dart';
import '../widgets/ui_elements/verification_code.dart';
import '../widgets/ui_elements/register_title_font.dart';
import '../widgets/ui_elements/register_subtitle_font.dart';
import '../widgets/ui_elements/primary_btn_red.dart';
import '../widgets/ui_elements/primary_btn_white.dart';

class ConfirmationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ConfirmationPageState();
  }
}

class _ConfirmationPageState extends State<ConfirmationPage> {
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
                  top: 56.0,
                  right: 135.0,
                  child: RegisterTitleFont('請輸入驗證碼'),
                ),
                Positioned(
                  top: 89.0,
                  left: 144.0,
                  child: RegisterSubtitleFont("已發送至 $_num.."),
                ),
                Positioned(
                  top: 129.0,
                  right: 32.0,
                  child: VerificationCode(),
                ),
                Positioned(
                  top: 129.0,
                  right: 88.0,
                  child: VerificationCode(),
                ),
                Positioned(
                  top: 129.0,
                  right: 144.0,
                  child: VerificationCode(),
                ),
                Positioned(
                  top: 129.0,
                  right: 200.0,
                  child: VerificationCode(),
                ),
                Positioned(
                  top: 129.0,
                  right: 254.0,
                  child: VerificationCode(),
                ),
                Positioned(
                  top: 129.0,
                  right: 310.0,
                  child: VerificationCode(),
                ),
                Positioned(
                  top: 241.0,
                  left: 46.0,
                  child: PrimaryButtonRed(
                      'Next',
                      () =>
                          Navigator.pushReplacementNamed(context, '/settings')),
                ),
                Positioned(
                  top: 301.0,
                  left: 46.0,
                  child: PrimaryButtonWhite(
                    '沒收到？重新發送(??)',
                    () => Navigator.pushReplacementNamed(context, '/register'),
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
