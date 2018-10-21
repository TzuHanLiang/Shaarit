import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:scoped_model/scoped_model.dart';

import './pages/auth.dart';
import './pages/login_or_register.dart';
import './pages/register.dart';
import './pages/confirmation.dart';
import './pages/home.dart';
import './pages/shop_list_tabview.dart';
// import './pages/shop_list_button_nav.dart';
import './pages/shop_detail.dart';
import './pages/coupon_detail.dart';

import './pages/setting.dart';

import './scoped-models/my_models.dart';

main() {
  // debugPaintSizeEnabled=true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return ScopedModel<MyModels>(
      model: MyModels(),
      child: MaterialApp(
        theme: new ThemeData(
          
        //  canvasColor: Colors.transparent,
        // brightness: Brightness.light,
        //  primaryColor: Color.fromRGBO(255, 8, 19, 1.0), //Changing this will change the color of the TabBar
        // accentColor: Colors.cyan[600],
      ),
        routes: {
          '/': (BuildContext context) => LoginOrRegisterPage(),
          '/register': (BuildContext context) => RegisterPage1(),
          '/confirmation': (BuildContext context) => ConfirmationPage(),
          '/settings':(BuildContext context) => Settings(),
          
          '/home': (BuildContext context) => MyHomePage(),
        },
        onGenerateRoute: (RouteSettings settings) {
          final List<String> pathElements = settings.name.split('/');
          if (pathElements[0] != '') {
            return null;
          }
          if (pathElements[1] == 'shop') {
            final int index = int.parse(pathElements[2]);
            return MaterialPageRoute<bool>(
                builder: (BuildContext context) => ShopPage(index));
          } else if (pathElements[1] == 'coupon') {
            final int index = int.parse(pathElements[2]);
            return MaterialPageRoute<bool>(
                builder: (BuildContext context) => CouponPage());
          }
          return null;
        },
        onUnknownRoute: (RouteSettings settings) {
          return MaterialPageRoute(
              builder: (BuildContext context) => ShopListPage());
        },
      ),
    );
  }
}
